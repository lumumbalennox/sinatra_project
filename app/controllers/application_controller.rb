class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    # get all the students from the db
    students = Student.all
    students.to_json
  end


  get "/parents" do
    # get all the parentsts from the db
    parents = Parent.all
    parents.to_json
  end

  get "/schools" do
    # get all the parentsts from the db
    schools = School.all
    schools.to_json
  end

  get "/siblings" do
    # get all the parentsts from the db
    siblings = Sibling.all
    siblings.to_json
  end

  get "/constraints" do
    # get all the parentsts from the db
    constraints = Constraint.all
    constraints.to_json
  end

end
