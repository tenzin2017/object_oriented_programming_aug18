class System

 @@bodies = []

 def bodies
   @@bodies
 end

 def self.add(celestial_body)
  @@bodies << celestial_body
 end

 def self.total_mass
   mass = 0
  @@bodies.each do |body|
    mass += body.mass    
 end
 return mass
 end

end



class Body

  def initialize(name,mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end
end


class Planet < Body
  def initialize(name, mass,day,year)
    super(name,mass)
    @day = day
    @year = year
  end
end

class Star < Body
  def initialize(name,mass,type)
    super(name,mass)
    @type = type
  end
end

class Moon < Body
   def initialize(name,mass,moon,planet)
     super(name,mass)
     @moon = moon
     @planet = planet
   end
end

sun = Body.new("Sun", 1.989 * 10**30)
earth = Body.new("Earth", 5.972*10**24)
moon = Body.new("Moon", 7.35*10**22)

puts System.add(sun)
puts System.add(earth)
puts System.add(moon)

puts System.total_mass
