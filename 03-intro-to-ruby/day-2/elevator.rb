class Elevator
  def initialize
    # lobby
    @floor = 1
  end

  def up
    musak
    
    if @floor < 10
      @floor += 1
      greet
    end
  end

  def down
    musak

    if @floor > 1
      @floor -= 1
      greet
    end
  end

  def greet
    puts "Welcome to floor: #{@floor}"
  end

  def musak
    puts "Boring music"
  end
end