class Place

  @@places_array = []
  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
  end

  def check_for_dupe?
    @@places_array.each do |place|
      if (place.name == self.name) && (place.location == self.location)
        return true
      end
    end
    return false
  end

  def add_info
    if !(check_for_dupe?())
      @@places_array.push(self)
    end
  end

  def self.get_name_list
    @@places_array
  end

  def self.sort_alphabetical
    @@places_array.sort_by!{|place| place.name}
  end

end
