class User < ActiveRecord::Base
  include Gravtastic
  gravtastic
  
  attr_accessor :password
  validates_confirmation_of :password
  before_save :encrypt_password

  has_many :tutorials
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, uniqueness: true
  validates :password, uniqueness: true

  has_many :relationships, foreign_key: :follower_id, dependent: :destroy
  has_many :followeds, through: :relationships
  has_many :reverse_relationships, foreign_key: :followed_id, class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

end
