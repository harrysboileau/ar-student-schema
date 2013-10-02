require_relative '../../db/config'

class Student < ActiveRecord::Base

  #  attr_reader :first_name, :last_name, :birthday

  # def initialize(params)
  #   @first_name = params[:first_name]
  #   @last_name = params[:last_name]
  #   @birthday = params[:birthday]
  # end

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, uniqueness: true
  validates :age, :numericality => {:greater_than => 5}
  validates :phone, length: {:minimum => 10}
  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    (Time.now.year - Date.parse(birthday.to_s).year)
  end


end
