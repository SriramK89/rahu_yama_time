require "rahu_yama_time/version"

module RahuYamaTime
  class TimeTableCalculator

    def initialize()
      # Initializing the main data
      @timings = []
      @timings[0]={ rahukalam: {from: "16.30", to: "18.00"}, yamagandam: {from: "12.00", to: "13.30"}, gulikai: {from: "15.00", to: "16.30"} }
      @timings[1]={ rahukalam: {from: "07.30", to: "09.00"}, yamagandam: {from: "10.30", to: "12.00"}, gulikai: {from: "13.30", to: "15.00"} }
      @timings[2]={ rahukalam: {from: "15.00", to: "16.30"}, yamagandam: {from: "09.00", to: "10.30"}, gulikai: {from: "12.00", to: "13.30"} }
      @timings[3]={ rahukalam: {from: "12.00", to: "13.30"}, yamagandam: {from: "07.30", to: "09.00"}, gulikai: {from: "10.30", to: "12.00"} }
      @timings[4]={ rahukalam: {from: "13.30", to: "15.00"}, yamagandam: {from: "06.00", to: "07.30"}, gulikai: {from: "09.00", to: "10.30"} }
      @timings[5]={ rahukalam: {from: "10.30", to: "12.00"}, yamagandam: {from: "15.00", to: "16.30"}, gulikai: {from: "07.30", to: "09.00"} }
      @timings[6]={ rahukalam: {from: "09.00", to: "10.30"}, yamagandam: {from: "13.30", to: "15.00"}, gulikai: {from: "06.00", to: "07.30"} }
    end

    def get_rahukalam_yamagandam_gulikai_timetable(param, options = nil)

      day = nil

      begin
        # Analyzing the input parameter and converting it into day if the request is not for a whole week
        case param.class.to_s
        when DateTime.to_s
          day = param.wday
        when Fixnum.to_s
          if param < 7 && param >= 0
            day = param
          else
            raise "Improper day format in numbers"
          end
        when String.to_s
          if param.downcase != 'week'
            day = DateTime.parse(param).wday
          end
        end

        if [DateTime.to_s, Fixnum.to_s].include?(param.class.to_s)
          if day.nil?
            raise "Improper input parameter"
          end
          # Returning the requested data based on the option
          (options.nil?) ? @timings[day] : @timings[day][options.downcase.to_sym]
        else
          if param.downcase != 'week'
            if day.nil?
              raise "Improper input parameter"
            end
            # Returning the requested data based on the option
            (options.nil?) ? @timings[day] : @timings[day][options.downcase.to_sym]
          else
            # Returning the requested rahukalam/yamagandam/gulikai data alone for whole week based on the option
            if options.nil?
              @timings
            else
              custom_timings = []
              @timings.each do |preferred_time|
                custom_timings << preferred_time[options.downcase.to_sym]
              end
              custom_timings
            end
          end
        end
      rescue => format_exception
        format_exception.message
      end
    end
  end
end
