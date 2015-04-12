RSpec.shared_examples 'false yielder' do
  it "should call `if_false` block for #{described_class} object" do
    expect { |block| subject.if_false(&block) }.to yield_with_no_args
  end

  it 'should evaluate only one block for conditional flow' do
    expect do |block|
      subject
        .if_false(&block)
        .if_true(&block)
    end
      .to yield_control.once
  end

  it 'should evaluate solely `if_false` block for #{described_class} object' do
    value = nil
    subject
      .if_false { value = :false }
      .if_true  { value = :true }
    expect(value).to be :false
  end

  it "should raise an error when no block `if_false` for #{described_class} object given" do
    expect { subject.if_false }.to raise_error LocalJumpError, 'no block given (yield)'
  end

  it "should return #{described_class} object from `if_true` block" do
    expect { subject.if_true }.not_to raise_error
    expect(subject.if_true).to be subject
  end
end
