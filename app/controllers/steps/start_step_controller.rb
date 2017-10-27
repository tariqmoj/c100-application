class Steps::StartStepController < StepController
  include StartingPointStep

  private

  def decision_tree_class
    StartDecisionTree
  end
end
