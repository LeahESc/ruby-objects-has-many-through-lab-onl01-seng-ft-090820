class Appointment 
  
  @@all = [] 
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  
  def self.all
    @@all
  end 
  
  
end 