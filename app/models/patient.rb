class Patient < Person
  # attr_accessible :title, :body
  has_many :appointments
end
