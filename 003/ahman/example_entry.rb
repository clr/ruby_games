class WideFinder
  LINE_REGEX = /"(GET|POST|PUT|DELETE)\s+([^\s%\?]+)/

  def initialize( findee = nil)
    if findee.is_a?(String)
      parse_lines File.readlines(findee)
    elsif findee.is_a?(Array)
      parse_lines findee
    end
  end

  def results
    @lines
  end


  def parse_line(line)
    if line =~ LINE_REGEX
      $2
    end
  end

  private

    def parse_lines(findee)
      results = {}
      findee.each do |l|
        resource = parse_line(l)
        results[resource] ||= 0
        results[resource] += 1
      end

      values = results.values
      values.sort!.reverse!

      @lines = []
      values[0..3].each do |count|
        @lines << "#{count}: #{results.index(count)}"
      end
    end
end

