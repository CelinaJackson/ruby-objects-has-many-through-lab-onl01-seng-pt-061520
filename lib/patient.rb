class Patient
  attr_reader :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_apppointment(doctor, date)
    Appointment.new(doctor, date, self)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map { |appointment| appointment.doctor}
  end
end
