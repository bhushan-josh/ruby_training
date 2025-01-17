countries = [
  { 
    name: "india",
    population: 1400000000,
    gdp: 3000000,
    states: 28,
    army_strength: 1000000,
    development_status: "developing"
  },
  { 
    name: "china",
    population: 1450000000,
    gdp: 3000000,
    states: 22,
    army_strength: 2000000,
    development_status: "developing"
  },
  { 
    name: "japan",
    population: 125000000,
    gdp: 1000000,
    states: 47,
    army_strength: 250000,
    development_status: "developed"
  },
  { 
    name: "pakistan",
    population: 100000000,
    gdp: 300000,
    states: 20,
    army_strength: 5000,
    development_status: "developing"
  },
  { 
    name: "srilanka",
    population: 150000000,
    gdp: 3000000,
    states: 22,
    army_strength: 2000000,
    development_status: "developing"
  },
  { 
    name: "germany",
    population: 25000000,
    gdp: 1000000,
    states: 47,
    army_strength: 250000,
    development_status: "developed"
  }
]

module Eligibility
  def self.loan_eligibility(country)
    if country[:gdp] < 1000000
      return false
    elsif country[:development_status] == 'developing'
      return true
    else
      return false
    end
  end

  def self.un_seat_eligibility(country)
    if country[:army_strength] > 100000  
      return true
    elsif country[:gdp] > 2000000
      return true
    else
      return false
    end
  end

  def self.war_outcome(country1, country2)
    if country1[:army_strength] > country2[:army_strength]
      return country1[:name]
    elsif country1[:army_strength] < country2[:army_strength]
      return country2[:name]
    end
  end
end

class Country_analysis
  def initialize(countries)
    @countries = countries
  end

  def start
    puts "-------------------------------------------------------------------------"
    puts "what you want to check :  "
    puts "-------------------------------------------------------------------------"
    puts "1 : To Check the Loan eligibility \n2 : To Check the UN Seat\n3 : To Check war outcome"
    puts "-------------------------------------------------------------------------"

    input = gets.chomp.to_i
    puts "-------------------------------------------------------------------------"

    case input
    when 1
      print "Enter the name of the country: "
      country_name = gets.chomp.downcase
      country = @countries.find { |c| c[:name].downcase == country_name }

      puts "-------------------------------------------------------------------------"
      if Eligibility.loan_eligibility(country)
        puts "#{country[:name].capitalize} is eligible for an IMF loan."
      else
        puts "#{country[:name].capitalize} is not eligible for an IMF loan."
      end
      puts "-------------------------------------------------------------------------"

    when 2
      print "Enter the name of the country: "
      country_name = gets.chomp.downcase
      country = @countries.find { |c| c[:name].downcase == country_name }

      puts "-------------------------------------------------------------------------"
      if Eligibility.un_seat_eligibility(country)
        puts "#{country[:name].capitalize} is eligible for a seat in the UN Security Council."
      else
        puts "#{country[:name].capitalize} is not eligible for a seat in the UN Security Council."
      end
      puts "-------------------------------------------------------------------------"

    when 3
      print "Enter the first countries: "
      country_name1 = gets.chomp.downcase
      country1 = @countries.find { |c1| c1[:name].downcase == country_name1 }

      print "Enter the second countries: "
      country_name2 = gets.chomp.downcase
      country2 = @countries.find { |c2| c2[:name].downcase == country_name2 }

      puts "-------------------------------------------------------------------------"
      winner = Eligibility.war_outcome(country1, country2)

      if winner == country1[:name]
        puts "#{country1[:name].capitalize} will win the war."
      elsif winner == country2[:name]
        puts "#{country2[:name].capitalize} will win the war."
      end
      puts "-------------------------------------------------------------------------"

    else
      puts "Please enter valid input (Range 1-3)"
    end
  end
end

system("clear")
app = Country_analysis.new(countries)
app.start
