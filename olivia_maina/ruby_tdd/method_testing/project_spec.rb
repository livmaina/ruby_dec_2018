# require_relative 'project' # include our Project class in our spec file
# RSpec.describe Project do  
#     before(:each) do 
#         @project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
#     end
#     it 'has a getter and setter for name attribute' do
#         @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
#         expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
#     end 
# end

require_relative 'project'
RSpec.describe Project do
    before(:each) do
    # updated this block to create two projects
        @project1 = Project.new('Project 1', 'description 1', 'John Doe', [1,2,3])
        # @project2 = Project.new('Project 2', 'description 2')
    end
    # Code from the previous tab removed for brevity. Leave it in.

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        # expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end

    it 'has a getter and setter for owner attribute' do 
        @project1.owner = 'John Doe'
        expect(@project1.owner). to eq ("John Doe")
    end

    it 'has an attribute that puts the tasks' do 
        expect(@project1.tasks). to eq([1,2,3])
    end

    it 'has a method add_tasks to push a single task in tasks attribute' do
        expect(@project1.add_tasks(4)). to eq ([1,2,3,4])
    end
end