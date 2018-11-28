class Place

  @@name_array = []
  @@location_array = []
  @@places_array = []

  def initialize(name, location)
    @name = name
    @location = location
  end

  def add_info
    @@name_array.push(@name)
    @@location_array.push(@location)
    @@places_array.push(@@name_array.zip(@@location_array))
  end

  def get_name_list
    @@places_array
  end

end
