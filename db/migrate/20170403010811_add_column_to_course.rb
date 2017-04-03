class AddColumnToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :quota, :integer, :null => false, :default => 20
    Course.all.each do |course|
      course.update_attributes!(:quota => 20)
    end
  end
end
