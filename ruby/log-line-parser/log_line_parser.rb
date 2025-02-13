class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    my_array = @line.split(':')
    my_array[1].strip
  end

  def log_level
    my_array = @line.split(':')
    my_array[0].gsub('[', ' ').gsub(']', ' ').strip.downcase
  end

  def reformat
    # my_array = @line.split(":")
    # log = my_array[0].gsub("[", "(").gsub("]", ")").downcase
    # msg = my_array[1].strip
    # return (msg +" "+ log)
    "#{message} (#{log_level})"
  end
end
