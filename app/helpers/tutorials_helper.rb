module TutorialsHelper
  def category_options
    @categories.collect do |c|
      [ c.name, c.id ]
    end
  end
end
