# frozen_string_literal: true

require 'yaml'

begin
  COUNTRIES = YAML.load_file('data.yml')
rescue Psych::SyntaxError => e
  puts "YAML syntax error: #{e.message}"
rescue Errno::ENOENT
  puts 'File not found: data.yml'
end

# Module containing methods to check eligibility
module Eligibility
  def loan_eligibility(country_name)
    country_gdp = COUNTRIES[country_name]['gdp']
    country_status = COUNTRIES[country_name]['development_status']

    return false unless country_gdp > 1_000_000 || country_status == 'developed'

    true
  end

  def un_seat_eligibility(country_name)
    country_army_strength = COUNTRIES[country_name]['army_strength']

    return false unless country_army_strength > 100_000

    true
  end

  def war_outcome(country_name1, country_name2)
    country1_army_strength = COUNTRIES[country_name1]['army_strength']
    country2_army_strength = COUNTRIES[country_name2]['army_strength']

    if country1_army_strength > country2_army_strength
      country_name1
    elsif country1_army_strength < country2_army_strength
      country_name2
    else
      'tie'
    end
  end
end

# Class takes user input and calls required methods to check eligibility
class CountryAnalysis
  include Eligibility

  def start
    puts '-------------------------------------------------------------------------'
    puts 'What you want to check :  '
    puts '-------------------------------------------------------------------------'
    puts "1 : To Check the Loan eligibility \n2 : To Check the UN Seat\n3 : To Check war outcome"
    puts '-------------------------------------------------------------------------'
    input = gets.chomp.to_i
    puts '-------------------------------------------------------------------------'
    options_selection input
  end

  def options_selection(input)
    case input
    when 1 then check_loan_eligibility
    when 2 then check_un_seat_eligibility
    when 3 then check_war_outcome
    else
      puts 'Please enter valid input (Range 1-3)'
      puts '-------------------------------------------------------------------------'
    end
  end

  def country_input
    print 'Enter the name of the country: '
    gets.chomp.downcase
  end

  def check_loan_eligibility
    country_name = country_input
    if loan_eligibility(country_name)
      puts "#{country_name.capitalize} is eligible for an IMF loan."
    else
      puts "#{country_name.capitalize} is not eligible for an IMF loan."
    end
    puts '-------------------------------------------------------------------------'
  end

  def check_un_seat_eligibility
    country_name = country_input
    if un_seat_eligibility(country_name)
      puts "#{country_name.capitalize} is eligible for a seat in the UN Security Council."
    else
      puts "#{country_name.capitalize} is not eligible for a seat in the UN Security Council."
    end
    puts '-------------------------------------------------------------------------'
  end

  def check_war_outcome
    country_name1 = country_input
    country_name2 = country_input
    winner = war_outcome(country_name1, country_name2)

    if winner == 'tie'
      puts 'The war will tie.'
    else
      puts "#{winner.capitalize} will win the war."
    end
    puts '-------------------------------------------------------------------------'
  end
end

system('clear')
app = CountryAnalysis.new
app.start
