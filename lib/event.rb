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


  	def end_date
	    return @start_date + duration*60
  	end

  	def is_past?
	    return @start_date < Time.now
  	end

	def is_future?
	    !self.is_past?
	end

	def is_soon?
	    return @start_date < Time.now + 60*30
	end

	def to_s
	    puts ">Titre : #{@title}"
	    puts ">Date de début : #{@start_date}"
	    puts ">Durée : #{@duration} minutes"
	    print ">Invités :"
	    puts @attendes.join(', ')
	end

	def age_analysis
	    age_array = []
	    average = 0

	    @attendees.each do |attendees|
	      age_array << attendees.age
	      average = average + attendee.age
	end

    average = average / attendees.length

    puts "Voici les âges des participants : "
    puts age_array.join(", ")
    puts "La moyenne d'âge est de : #{average} ans"
  end
end

# Héritage
class WorkEvent < Event
  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end

binding.pry