class AddColumnToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :is_professor, :boolean, :null => false, :default => false
    Person.all.each do |person|
      Course.all.each do |course|
        if course.teacher == person
          person.update_attributes!(:is_professor => true)
        end
      end
    end
  end
end
