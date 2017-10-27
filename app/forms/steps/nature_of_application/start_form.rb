module Steps::NatureOfApplication
  class StartForm < BaseForm
    def persist!
      raise 'No C100Application given' unless c100_application
      true
    end
  end
end
