require 'sqlite3'
require_relative 'doctor'
DB = SQLite3::Database.new("02_sql_crud_doctors.db")
DB.results_as_hash = true

#CRUD

# Create
doctor = Doctor.new(first_name: 'Carlos',
                    last_name: 'Mendes',
                    specialty: 'Benfica Fan') # create new doctor object / calls initialize
doctor.save # save it to the DB

# Read
# get doctor with id 1
doctor = Doctor.find(1)

# get ALL the doctors
doctors = Doctor.all

# Update
doctor = Doctor.find(1) # get the doctor
doctor.first_name = 'Zacarias' # set his first name
doctor.save # save it to the DB

# Delete
doctor = Doctor.find(11) # get the doctor
doctor.destroy # delete it from the DB



