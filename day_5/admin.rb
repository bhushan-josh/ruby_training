# frozen_string_literal: true

require './manager'
require './developer'
require './company'

class Admin
  include Company
  extend Company

  def welcome_message
    Admin.new.company_name
    Admin.company_name
    print "\n"
  end

  def employee_details
    manager = Manager.new
    puts manager.display_details

    print "\n"

    developer1 = Developer.new
    developer2 = Developer.new

    puts developer1.display_details
    print "\n"
    puts developer2.display_details
  end
end

admin = Admin.new
admin.welcome_message
admin.employee_details
