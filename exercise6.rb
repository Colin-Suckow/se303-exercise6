# Ideally I would remove this function, but I don't know if I'm allowed to break the API, so here it stays
def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  Button.new(label_text, Position.new(x, y), ElementColor.new(foreground_color, is_dark_mode)).draw
end

class Position
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

class ElementColor
  attr_reader :foreground_color, :is_dark_mode

  def initialize(foreground_color, is_dark_mode)
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end
  
  def foreground
    if @is_dark_mode
      @foreground_color - 10
    else
      @foreground_color + 10
    end
  end

  def text
    if @is_dark_mode
      '#111111'
    else
      '#E0E0E0'
    end
  end

end

class Button
  attr_reader :label, :position, :color

  def initialize(label, position, color)
    @label = label
    @position = position
    @color = color
  end

  def draw
    paint(@label, @position.x, @position.y, @color.foreground, @color.text)
  end

end
