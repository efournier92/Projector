class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string      :name, null: false
      t.text        :description
      t.date        :due_date
      t.belongs_to  :project, null: false
      t.belongs_to  :user
    end
  end
end
