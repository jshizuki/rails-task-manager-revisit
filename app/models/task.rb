class Task < ApplicationRecord
  # For single-db purpose
  self.table_name = 'tmanager_tasks'
end
