RSpec.describe NilClass do
  let(:subject) { nil }

  it_behaves_like 'false yielder'
end
