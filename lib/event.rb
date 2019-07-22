require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(date_string,duration_to_save,title_to_save,attendees_to_save)
		@start_date = Time.parse(date_string)
		@duration = duration_to_save
		@title = title_to_save
		@attendes = attendees_to_save
	end
end

attendees = ["truc@machin.com", "bidule@chose.fr"]
Event.new("2010-10-31 12:00", 30, "standup quotidien", attendees)
