class Steps::StartStepController < StepController
  private

  def decision_tree_class
    StartDecisionTree
  end
end
