require 'spec_helper'

RSpec.describe Steps::NatureOfApplication::StartForm do
  let(:arguments) { {
    c100_application: c100_application,
    start: start
  } }
  let(:c100_application) { instance_double(C100Application, start: nil) }
  let(:start) { nil }

  subject { described_class.new(arguments) }

  pending 'Write specs for StartForm!'

  # TODO: The below can be uncommented and serves as a starting point for
  #   forms operating on a single value object.

  # describe '#save' do
  #   context 'when no c100_application is associated with the form' do
  #     let(:c100_application)  { nil }
  #     let(:start) { 'value' }

  #     it 'raises an error' do
  #       expect { subject.save }.to raise_error(RuntimeError)
  #     end
  #   end

  #   context 'when start is not given' do
  #     it 'returns false' do
  #       expect(subject.save).to be(false)
  #     end

  #     it 'has a validation error on the field' do
  #       expect(subject).to_not be_valid
  #       expect(subject.errors[:start]).to_not be_empty
  #     end
  #   end

  #   context 'when start is not valid' do
  #     let(:start) { 'INVALID VALUE' }

  #     it 'returns false' do
  #       expect(subject.save).to be(false)
  #     end

  #     it 'has a validation error on the field' do
  #       expect(subject).to_not be_valid
  #       expect(subject.errors[:start]).to_not be_empty
  #     end
  #   end

  #   context 'when start is valid' do
  #     let(:start) { 'INSERT VALID VALUE HERE' }

  #     it 'saves the record' do
  #       expect(c100_application).to receive(:update).with(
  #         # TODO: What's in the update?
  #       ).and_return(true)
  #       expect(subject.save).to be(true)
  #     end
  #   end

  #   context 'when start is already the same on the model' do
  #     let(:c100_application) {
  #       instance_double(
  #         C100Application,
  #         start: 'INSERT EXISTING VALUE HERE'
  #       )
  #     }
  #     let(:start) { 'CHANGEME' }

  #     it 'does not save the record but returns true' do
  #       expect(c100_application).to_not receive(:update)
  #       expect(subject.save).to be(true)
  #     end
  #   end
  # end
end

