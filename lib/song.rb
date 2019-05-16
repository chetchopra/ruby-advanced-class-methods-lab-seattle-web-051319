class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = Song.new
    @@all << song
    return song
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    return song
  end
  
  def self.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    return song
  end
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
    return FALSE
  end
  
  def self.find_or_create_by_name(name)
    if !find_by_name(name)
      create_by_name(name)
      return nil
    else 
      return find_by_name(name)
    end
  end
  

end
