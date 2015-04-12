RSpec.describe FalseClass do
  let(:subject) { false }

  it_behaves_like 'false yielder'
end
