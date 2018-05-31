class Backer
  
  attr_accessor :name, :title, :backed_projects
  
  def initialize(name)
    @name = name
    @title = title
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
  
end