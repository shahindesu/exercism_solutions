class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    if @line.start_with?("[ERROR]")
      @line = @line.gsub("[ERROR]: ", "")
    elsif @line.start_with?("[WARNING]")
      @line = @line.gsub("[WARNING]: ", "")
    else
      @line = @line.gsub("[INFO]: ", "")
    end
    return @line.strip
  end

  def log_level
    if @line.start_with?("[ERROR]")
      return @line.slice(1, 5).downcase!
    elsif @line.start_with?("[WARNING]")
      return @line.slice(1, 7).downcase!
    else
      return @line.slice(1, 4).downcase!
    end
  end
    
  def reformat
    if @line.start_with?("[ERROR]")
      @line = @line.gsub("[ERROR]: ", "").strip + " (error)"
    elsif @line.start_with?("[WARNING]")
      @line = @line.gsub("[WARNING]: ", "").strip + " (warning)"
    else
      @line = @line.gsub("[INFO]: ", "").strip + " (info)"
    end
    return @line.strip
  end
end
