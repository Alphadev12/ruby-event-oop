require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(date_string,duration_to_save,title_to_save,attendees_to_save)
		@start_date = Time.parse(date_string)
		@duration = duration_to_save
		@title = title_to_save
		@attendes = attendees_to_save
	end

	def postpone_24h
		@start_date = @start_date + (24 * 3600)
	end

	def get_start_date
		puts @start_date
	end
end

attendees = ["truc@machin.com", "bidule@chose.fr"]
my_event = Event.new("2010-10-31 12:00", 30, "standup quotidien", attendees)

my_event.postpone_24h
my_event.get_start_date