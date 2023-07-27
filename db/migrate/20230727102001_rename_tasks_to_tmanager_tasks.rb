class RenameTasksToTmanagerTasks < ActiveRecord::Migration[7.0]
  def change
    rename_table :tasks, :tmanager_tasks
  end
end
