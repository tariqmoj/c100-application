module C100App
  class HelpWithFeesDecisionTree < BaseDecisionTree
    def destination
      return next_step if next_step

      case step_name
      when :help_paying
        root_path
      else
        raise InvalidStep, "Invalid step '#{as || step_params}'"
      end
    end
  end
end
