RSpec.describe Object do
  let(:truthy_objects) { [true, Object, 0, 1, "", [1, 2, 3], {}] }

  it 'should call `if_true` block for truthy objects' do
    truthy_objects.each do |truthy_object|
      expect { |block| truthy_object.if_true(&block) }.to yield_with_no_args
    end
  end

  it 'should evaluate only one block for conditional flow' do
    truthy_objects.each do |truthy_object|
      expect do |block|
        truthy_object
          .if_false(&block)
          .if_true(&block)
      end
        .to yield_control.once
    end
  end

  it 'should evaluate solely `if_true` block for truthy objects' do
    truthy_objects.each do |truthy_object|
      value = nil
      subject
        .if_false { value = :false }
        .if_true  { value = :true }
      expect(value).to be :true
    end
  end

  it 'should raise an error when no block `if_true` for truthy object given' do
    expect { subject.if_true }.to raise_error LocalJumpError, 'no block given (yield)'
  end

  it 'should return itself from `if_false` block' do
    expect { subject.if_false }.not_to raise_error
    expect(subject.if_false).to be subject
  end
end
