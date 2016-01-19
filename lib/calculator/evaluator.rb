module Calculator
  class Evaluator

    def initialize
      @delimiter = " "
      @result = 0
    end

    def evaluate_string(string)
      return 'No String' if string.empty?
      parsed_string = parse_string(string)

      if parsed_string.include?("+") || parsed_string.include?("-")
        add_or_subtract(parsed_string)
      end
      if parsed_string.include?("/") || parsed_string.include?("*")
        multiply_or_divide(parsed_string)
      end

      return @result
    end

    def parse_string(string)
      remove_space(string.split(@delimiter))
    end

    def remove_space(obj)
      obj.delete_if{ |x| x == " " }
    end

    def add_or_subtract(parsed)

      while parsed.include?("+") || parsed.include?("-")
        index = parsed.index("+") ? parsed.index("+") : parsed.index("-")

        if parsed[index] == "+"
          @result = parsed[index - 1].to_f + parsed[index + 1].to_f
        else
          @result = parsed[index - 1].to_f - parsed[index + 1].to_f
        end

        parsed[index], parsed[index - 1] = " ", " "
        parsed[index + 1] = @result
        remove_space(parsed)
      end
    end

    def multiply_or_divide
      while parsed.include?("*") || parsed.include?("/")
        index = parsed.index("*") ? parsed.index("*") : parsed.index("/")

        if parsed[index] == "*"
          @result = parsed[index - 1].to_f * parsed[index + 1].to_f
        else
          @result = parsed[index - 1].to_f / parsed[index + 1].to_f
        end

        parsed[index], parsed[index - 1] = " ", " "
        parsed[index + 1] = @result
        remove_space(parsed)
      end
    end

  end
end
