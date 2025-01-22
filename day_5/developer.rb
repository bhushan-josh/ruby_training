# frozen_string_literal: true

require './person'

class Developer < Person
  def initialize
    super
    @role = 'Developer'
    @office_name = 'Josh Software'
  end

  def display_details
    "Developer Details-\n#{super}\nRole: #{@role}\nOffice: #{@office_name}"
  end
end
