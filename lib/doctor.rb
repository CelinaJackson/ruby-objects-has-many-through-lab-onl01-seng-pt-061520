class Doctor
  attr_accessor
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end
end
