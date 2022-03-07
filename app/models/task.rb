class Task < ApplicationRecord
  broadcasts_to ->(task) { "tasks" }, inserts_by: :prepend, target: "tasks"
end
