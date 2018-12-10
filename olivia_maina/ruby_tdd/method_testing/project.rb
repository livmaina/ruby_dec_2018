class Project
    attr_accessor :name, :description, :owner, :tasks
    def initialize (name, description, owner, tasks)
        @name = name
        @description = description
        @owner = owner
        @tasks = tasks
    end
    def elevator_pitch
        "#{@name}, #{@description}"
    end
    def tasks 
        @tasks
    end

    def add_tasks task_here
        @tasks.push(task_here)
    end
end

