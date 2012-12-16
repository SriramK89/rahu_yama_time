# RahuYamaTime

Get the Raahukaalam, Yamakantam and Gulikai for a given day or date

## Installation

Add this line to your application's Gemfile:

    gem 'rahu_yama_time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rahu_yama_time

## Usage

Pass the date(as `String` or `DateTime` object) or day(as `String` or `FixNum` object) for which you need the *Raahukaalam*, *Yamakantam* and *Gulikai* timings. For the whole timetable, pass the String 'week'.

**For example:**
1. Get the object for the class of function to be called: timetable = RahuYamaTime::TimeTableCalculator.new
2. Call the function 'get_rahukalam_yamagandam_gulikai_timetable' with the following valid parameters to get the timetable.
2.1 timetable.get_rahukalam_yamagandam_gulikai_timetable("12-12-2012") # => A hash for the day '12.12.12' having all rahukalam, yamagandam and gulikai timings.
**Output:** {:rahukalam=>{:from=>"12.00", :to=>"13.30"}, :yamagandam=>{:from=>"07.30", :to=>"09.00"}, :gulikai=>{:from=>"10.30", :to=>"12.00"}}
2.2 timetable.get_rahukalam_yamagandam_gulikai_timetable(DateTime.parse("12-Dec-2012")) # => Same output as 2.1.
**Output:** {:rahukalam=>{:from=>"12.00", :to=>"13.30"}, :yamagandam=>{:from=>"07.30", :to=>"09.00"}, :gulikai=>{:from=>"10.30", :to=>"12.00"}}
2.3 timetable.get_rahukalam_yamagandam_gulikai_timetable("Wednesday") # => Same output as 2.1.
**Output:** {:rahukalam=>{:from=>"12.00", :to=>"13.30"}, :yamagandam=>{:from=>"07.30", :to=>"09.00"}, :gulikai=>{:from=>"10.30", :to=>"12.00"}}
2.4 timetable.get_rahukalam_yamagandam_gulikai_timetable(3) # => Same output as 2.1. 0 indicates Sunday, 1 indicates Monday and so on.
**Output:** {:rahukalam=>{:from=>"12.00", :to=>"13.30"}, :yamagandam=>{:from=>"07.30", :to=>"09.00"}, :gulikai=>{:from=>"10.30", :to=>"12.00"}}
2.5 timetable.get_rahukalam_yamagandam_gulikai_timetable(3, "rahukalam") # => A hash for rahukalam on Wednesday.
**Output:** {:from=>"12.00", :to=>"13.30"}
2.6 timetable.get_rahukalam_yamagandam_gulikai_timetable(3, "yamagandam") # => A hash for yamagandam on Wednesday.
**Output:** {:from=>"07.30", :to=>"09.00"}
2.7 timetable.get_rahukalam_yamagandam_gulikai_timetable(3, "gulikai") # => A hash for gulikai on Wednesday.
**Output:** {:from=>"10.30", :to=>"12.00"}
2.8 timetable.get_rahukalam_yamagandam_gulikai_timetable("week", "rahukalam") # => An array of hashes for the rahukalam of the whole week.
**Output:** [{:from=>"16.30", :to=>"18.00"}, {:from=>"07.30", :to=>"09.00"}, {:from=>"15.00", :to=>"16.30"}, {:from=>"12.00", :to=>"13.30"}, {:from=>"13.30", :to=>"15.00"}, {:from=>"10.30", :to=>"12.00"}, {:from=>"09.00", :to=>"10.30"}]
2.9 timetable.get_rahukalam_yamagandam_gulikai_timetable("week", "yamagandam") # => An array of hashes for the yamagandam of the whole week.
**Output:** [{:from=>"12.00", :to=>"13.30"}, {:from=>"10.30", :to=>"12.00"}, {:from=>"09.00", :to=>"10.30"}, {:from=>"07.30", :to=>"09.00"}, {:from=>"06.00", :to=>"07.30"}, {:from=>"15.00", :to=>"16.30"}, {:from=>"13.30", :to=>"15.00"}]
2.10 timetable.get_rahukalam_yamagandam_gulikai_timetable("week", "gulikai") # => An array of hashes for the gulikai of the whole week.
**Output:** [{:from=>"15.00", :to=>"16.30"}, {:from=>"13.30", :to=>"15.00"}, {:from=>"12.00", :to=>"13.30"}, {:from=>"10.30", :to=>"12.00"}, {:from=>"09.00", :to=>"10.30"}, {:from=>"07.30", :to=>"09.00"}, {:from=>"06.00", :to=>"07.30"}]
2.11 timetable.get_rahukalam_yamagandam_gulikai_timetable("week") # => An array of hashes for the whole week's timetable.
**Output:** [{:rahukalam=>{:from=>"16.30", :to=>"18.00"}, :yamagandam=>{:from=>"12.00", :to=>"13.30"}, :gulikai=>{:from=>"15.00", :to=>"16.30"}}, {:rahukalam=>{:from=>"07.30", :to=>"09.00"}, :yamagandam=>{:from=>"10.30", :to=>"12.00"}, :gulikai=>{:from=>"13.30", :to=>"15.00"}}, {:rahukalam=>{:from=>"15.00", :to=>"16.30"}, :yamagandam=>{:from=>"09.00", :to=>"10.30"}, :gulikai=>{:from=>"12.00", :to=>"13.30"}}, {:rahukalam=>{:from=>"12.00", :to=>"13.30"}, :yamagandam=>{:from=>"07.30", :to=>"09.00"}, :gulikai=>{:from=>"10.30", :to=>"12.00"}}, {:rahukalam=>{:from=>"13.30", :to=>"15.00"}, :yamagandam=>{:from=>"06.00", :to=>"07.30"}, :gulikai=>{:from=>"09.00", :to=>"10.30"}}, {:rahukalam=>{:from=>"10.30", :to=>"12.00"}, :yamagandam=>{:from=>"15.00", :to=>"16.30"}, :gulikai=>{:from=>"07.30", :to=>"09.00"}}, {:rahukalam=>{:from=>"09.00", :to=>"10.30"}, :yamagandam=>{:from=>"13.30", :to=>"15.00"}, :gulikai=>{:from=>"06.00", :to=>"07.30"}}]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
