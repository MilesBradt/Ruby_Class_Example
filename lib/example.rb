class Example

  @@examples_array = []
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  def check_for_dupe?
    @@examples_array.each do |example|
      if (example.name == self.name) && (example.description == self.description)
        return true
      end
    end
    return false
  end

  def add_info
    if !(check_for_dupe?())
      @@examples_array.push(self)
    end
  end

  def self.get_name_list
    @@examples_array
  end

  def self.sort_alphabetical
    @@examples_array.sort_by!{|example| example.name}
  end

end
