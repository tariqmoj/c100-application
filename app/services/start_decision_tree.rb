class StartDecisionTree < BaseDecisionTree
  def destination
    return next_step if next_step

    case step_name.to_sym
      # TODO: Put decision logic here
    else
      raise "Invalid step '#{step_params}'"
    end
  end

  private

end
