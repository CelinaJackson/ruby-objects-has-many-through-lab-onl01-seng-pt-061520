class Patient
  attr_accessor :name
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
    Appointments.all.select {|appointment| appointment.patient == self}
