class Planet

  attr_accessor :id, :title, :image, :body, :moons, :missions

  def save
    conn = Planet.open_connection
    if(self.id)
      sql = "UPDATE planets SET title='#{self.title}', image='#{self.image}', body='#{self.body}', moons='#{self.moons}', missions='#{self.missions}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO planets (title, image, body, moons, missions) VALUES ('#{self.title}', '#{self.image}', '#{self.body}', '#{self.moons}', '#{self.missions}')"
    end
    conn.exec(sql)
  end

  def self.open_connection
    conn = PG.connect(dbname: "planets")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,title,image,body,moons,missions FROM planets ORDER BY id"
    results = conn.exec(sql)
    planets = results.map do |planet|
      self.hydrate(planet)
    end
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM planets WHERE id =#{id} LIMIT 1"
    planets = conn.exec(sql)
    planet = self.hydrate(planets[0])
    planet
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM planets WHERE id = #{id}"
    conn.exec(sql)
  end

  def self.hydrate(planet_data)
    planet = Planet.new
    planet.id = planet_data['id']
    planet.title = planet_data['title']
    planet.image = planet_data['image']
    planet.body = planet_data['body']
    planet.moons = planet_data['moons']
    planet.missions = planet_data['missions']
    planet
  end

end
