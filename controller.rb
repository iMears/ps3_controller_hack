require 'artoo'

connection :joystick, :adaptor => :joystick
device :controller, :driver => :ps3 , :connection => :joystick, :interval => 0.1

work do
  on controller, :joystick => proc { |*value|
    if value[1][:s] == 0 && value[1][:y] < -30000
      puts "left stick forward"
    elsif value[1][:s] == 0 && value[1][:y] > 30000
      puts "left stick backward"
    end

    if value[1][:s] == 1 && value[1][:y] < -30000
      puts "right stick forward"
    elsif value[1][:s] == 1 && value[1][:y] > 30000
      puts "right stick backward"
    end

    # puts "joystick #{value[1][:s]} x:#{value[1][:x]} y:#{value[1][:y]}"
  }
  on controller, :button => proc { |*value|
      puts "button #{value[1]}"
  }
  on controller, :button_circle => proc { |*value|
    puts "Circle button"
  }
  on controller, :button_triangle => proc { |*value|
    puts "Triangle button"
  }
  on controller, :button_x => proc { |*value|
    puts "X button"
  }
  on controller, :button_square => proc { |*value|
    puts "Square button"
  }
  on controller, :button_l1 => proc { |*value|
    puts "L1 button"
  }
  on controller, :button_l2 => proc { |*value|
    puts "L2 button"
  }
  on controller, :button_r1 => proc { |*value|
    puts "R1 button"
  }
  on controller, :button_r2 => proc { |*value|
    puts "R2 button"
  }
  on controller, :button_start => proc { |*value|
    puts "Start button"
  }
  on controller, :button_select => proc { |*value|
    puts "Select button"
  }
  on controller, :button_dpad_up => proc { |*value|
    puts "Dpad up button"
  }
  on controller, :button_dpad_down => proc { |*value|
    puts "Dpad down button"
  }
  on controller, :button_dpad_right => proc { |*value|
    puts "Dpad right button"
  }
  on controller, :button_dpad_left => proc { |*value|
    puts "dpad left button"
  }
end