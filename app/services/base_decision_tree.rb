class BaseDecisionTree
  class InvalidStep < RuntimeError; end

  include ApplicationHelper

  attr_reader :c100_application, :step_params, :as, :next_step

  def initialize(c100_application:, step_params: {}, as: nil, next_step: nil)
    @c100_application = c100_application
    @step_params = step_params
    @as = as
    @next_step = next_step
  end

  private

  def step_name
    (as || step_params.keys.first).to_sym
  end

  def root_path
    { controller: '/entrypoint', action: :v1 }
  end

  # TODO: Uncomment when needed. We don't have yet any `show` steps.
  # def show(step_controller)
  #   {controller: step_controller, action: :show}
  # end

  def edit(step_controller)
    {controller: step_controller, action: :edit, id: nil}
  end
end
