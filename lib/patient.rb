class Patient
  attr_reader :name, :appointment, :doctor
  @@all_pat = [ ]

  def initialize(name)
    @name = name
    @appointment = appointment
    @doctor = doctor
    @@all << self
  end

  def new_apppointment(doctor, date)
    Appointment.new(doctor, date, self)
  end

  def self.all
    @@all_pat
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    Appointment.all.map { |appointment| appointment.doctor}
  end
end
