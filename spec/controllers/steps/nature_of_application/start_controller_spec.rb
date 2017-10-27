require 'rails_helper'

RSpec.describe Steps::NatureOfApplication::StartController, type: :controller do
  it_behaves_like 'an intermediate step controller', Steps::NatureOfApplication::StartForm, NatureOfApplicationDecisionTree
end
