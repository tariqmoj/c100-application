require 'rails_helper'

RSpec.describe Steps::Applicant::PersonalDetailsController, type: :controller do
  it_behaves_like 'an intermediate CRUD step controller',
                  Steps::Applicant::PersonalDetailsForm,
                  C100App::ApplicantDecisionTree,
                  Applicant
end
