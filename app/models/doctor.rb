class Doctor < Person
  # attr_accessible :title, :body
  has_many :appointments
  has_many :patients, through: :appointments 
end
