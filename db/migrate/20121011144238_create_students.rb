require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table


    # validates_format_of :email, :with => /\A(^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

   




    create_table :students do |t|
      t.string :first_name, :last_name, :gender, :email, :phone
      t.date :birthday
      t.datetime :created_at, :updated_at
    end

  end
end





























