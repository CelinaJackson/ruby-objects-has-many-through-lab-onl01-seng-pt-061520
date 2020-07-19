class Doctor
  attr_reader :name, :appointment, :patient
  @@all = [ ]

  def initialize(name)
    @name = name
    @patient = patient 
    @appointment = appointment
    @@all << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

end
