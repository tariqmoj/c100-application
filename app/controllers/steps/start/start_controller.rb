module Steps::Start
  class StartController < Steps::StartStepController
    def show
      @c100_application = current_c100_application
    end
  end
end
