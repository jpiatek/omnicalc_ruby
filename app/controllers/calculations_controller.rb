class CalculationsController < ApplicationController

  def word_count
    @text = params[:user_text].downcase
    @special_word = params[:user_word].downcase

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================


    @character_count_with_spaces = @text.length

    @character_count_without_spaces = @text.gsub(" ", "").length

    @word_count = @text.split.count

    @occurrences = @text.gsub(".","").gsub("?","").gsub(",","").gsub("!","").split.count(@special_word)

  end

  def loan_payment
    @apr = params[:annual_percentage_rate].to_f
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    @monthly_payment = ((@apr/100/12)*(@principal))/(1-(1+@apr/100/12)**-(@years*12))
  end

  def time_between
    @starting = Chronic.parse(params[:starting_time])
    @ending = Chronic.parse(params[:ending_time])

    # ================================================================================
    # Your code goes below.
    # The start time is in the Time @starting.
    # The end time is in the Time @ending.
    # Note: Ruby stores Times in terms of seconds since Jan 1, 1970.
    #   So if you subtract one time from another, you will get an integer
    #   number of seconds as a result.
    # ================================================================================

    @seconds = @ending-@starting
    @minutes = (@ending-@starting)/60
    @hours = (@ending-@starting)/60/60
    @days = (@ending-@starting)/60/60/24
    @weeks = (@ending-@starting)/60/60/24/7
    @years = (@ending-@starting)/60/60/24/365.25
  end

  def descriptive_statistics
    @numbers = params[:list_of_numbers].gsub(',', '').split.map(&:to_f)
    0

    # ================================================================================
    # Your code goes below.
    # The numbers the user input are in the array @numbers.
    # ================================================================================

    @sorted_numbers = @numbers.sort

    @count = @numbers.count

    @minimum = @sorted_numbers[0]

    @maximum = @sorted_numbers.last

    @range = @maximum-@minimum

    @median =
        if #odd#
        @count%2 != 0
        @sorted_numbers[(@count)/2]
        else #even#
        @count%2 ==0
        (@sorted_numbers[(@count/2)-1]+@sorted_numbers[@count/2])/2
        end

    @sum =
        #why doesn't this work???    def sum(list_of_numbers)
        #why doesn't this work???    running_total = 0
        #why doesn't this work???    list_of_numbers.each do |number|
        #why doesn't this work???    running_total = running_total + number
        #why doesn't this work???    end

        #why doesn't this work???    return running_total
        #why doesn't this work???    end

    @numbers.inject(:+)

    @mean = @sum/@count

    @variance =

    if @count==1
    ((@sorted_numbers[0])-@mean)**2+
    0
elsif @count==2
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    0
elsif @count==3
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    0
elsif @count==4
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    0
elsif @count==5
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    0
elsif @count==6
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    0
elsif @count==7
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    0
elsif @count==8
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    0
elsif @count==9
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    0
elsif @count==10
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    0
elsif @count==11
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    0
elsif @count==12
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    ((@sorted_numbers[11])-@mean)**2+
    0
elsif @count==13
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    ((@sorted_numbers[11])-@mean)**2+
    ((@sorted_numbers[12])-@mean)**2+
    0
elsif @count==14
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    ((@sorted_numbers[11])-@mean)**2+
    ((@sorted_numbers[12])-@mean)**2+
    ((@sorted_numbers[13])-@mean)**2+
    0
elsif @count==15
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    ((@sorted_numbers[11])-@mean)**2+
    ((@sorted_numbers[12])-@mean)**2+
    ((@sorted_numbers[13])-@mean)**2+
    ((@sorted_numbers[14])-@mean)**2+
    0
elsif @count==16
    ((@sorted_numbers[0])-@mean)**2+
    ((@sorted_numbers[1])-@mean)**2+
    ((@sorted_numbers[2])-@mean)**2+
    ((@sorted_numbers[3])-@mean)**2+
    ((@sorted_numbers[4])-@mean)**2+
    ((@sorted_numbers[5])-@mean)**2+
    ((@sorted_numbers[6])-@mean)**2+
    ((@sorted_numbers[7])-@mean)**2+
    ((@sorted_numbers[8])-@mean)**2+
    ((@sorted_numbers[9])-@mean)**2+
    ((@sorted_numbers[10])-@mean)**2+
    ((@sorted_numbers[11])-@mean)**2+
    ((@sorted_numbers[12])-@mean)**2+
    ((@sorted_numbers[13])-@mean)**2+
    ((@sorted_numbers[14])-@mean)**2+
    ((@sorted_numbers[15])-@mean)**2+
    0
else
    0
    end


    @standard_deviation = @variance**(0.5)

    x=[0]
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)
    x.push(@numbers.sample)


    @mode = x.sample
#better than nothing..

  end
end
