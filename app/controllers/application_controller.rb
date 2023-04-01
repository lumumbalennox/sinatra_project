class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    # get all the students from the db
    students = Student.all
    students.to_json
  end

  # Deleting a student
  delete './students/:id' do
    student=Student.find(params[:id])
    student.destroy
    student.to_json
  end


  get "/parents" do
    # get all the parentsts from the db
    parents = Parent.all
    parents.to_json
  end

  # Deleting a parent
  delete './parents/:id' do
    parent=Parent.find(params[:id])
    parent.destroy
    parent.to_json
  end

  get "/schools" do
    # get all the parentsts from the db
    schools = School.all
    schools.to_json
  end

  # Deleting a school
  delete './schools/:id' do
    school=School.find(params[:id])
    school.destroy
    school.to_json
  end


  get "/siblings" do
    # get all the parentsts from the db
    siblings = Sibling.all
    siblings.to_json
  end

  # Deleting sibling
  delete './siblings/:id' do
    sibling=Sibling.find(params[:id])
    sibling.destroy
    sibling.to_json
  end

  get "/constraints" do
    # get all the constraints from the db
    constraints = Constraint.all
    constraints.to_json
  end

  # Deleting a constarint
  delete './constraints/:id' do
    constraint=Constraint.find(params[:id])
    constraint.destroy
    constraint.to_json
  end

end
