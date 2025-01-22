# frozen_string_literal: true

require './person'

class Manager < Person
  def initialize
    super
    @department = 'HR'
    @office_name = 'Josh Software'
  end

  def display_details
    "Manager Details-\n#{super}\nDepartment: #{@department}\nOffice: #{@office_name}"
  end
end
