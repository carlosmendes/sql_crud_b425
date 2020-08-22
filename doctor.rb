class Doctor
  attr_reader :id #... doctor.id => 2
  attr_writer :first_name #... doctor.first_name = 'Carlos'
  # = attr_accessor :first_name


  def initialize(attributes = {})
    @id = attributes[:id]
    # TODO: store other attributes as instanced variable (exercise)
  end

  # this is a class method it should be called on the Class Doctor
  # Doctor.all -> class method, needs to be called on classes (Doctor)
  def self.all
    # Get all rows from DB
    DB.execute('SELECT * FROM doctors')
    # Change the DB return (rows) from Hash or Array to Doctor object
  end

  def self.find(id)
    # DB.execute(SELECT......)
    # Change the DB return (row) from Hash or Array to Doctor object
  end

  # this can be called on a object/instance of the class Doctor
  # instance class (doctor.save) doctor must be an object/instance of this class (Doctor)
  def save
    # Insert OR Update object values into DB
    # DB.execute("INSERT INTO .....")
    # @id =  DB.last_insert_row_id # get the last id from the DB
    # OR
    # DB.execute("UPDATE .....")
  end

  # this can be called on a object/instance of the class Doctor
  def destroy
    # delete object from the DB
    # DB.execute("DELETE .....")
  end
end
