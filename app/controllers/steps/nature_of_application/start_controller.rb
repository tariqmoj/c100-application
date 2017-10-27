module Steps::NatureOfApplication
  class StartController < Steps::NatureOfApplicationStepController
    def edit
      @form_object = StartForm.new(
        c100_application: current_c100_application,
      )
    end

    def update
      update_and_advance(StartForm)
    end
  end
end
