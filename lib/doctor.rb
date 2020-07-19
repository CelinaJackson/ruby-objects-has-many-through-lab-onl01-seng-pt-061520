class Doctor
  attr_accessor :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment 
    Appointment.new(patient, date, self)
      
end
