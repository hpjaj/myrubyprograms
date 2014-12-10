%w(autorun pride).each do |m|
  require 'minitest/%s' % m
end

describe 'sorting' do
  before() do
    @desired_result = ["Jump", "Sunday", "Magazine"]
    @a = ["Magazine", "Sunday", "Jump"]
  end
  it 'must sort by length' do
    @a.sort.must_equal @desired_result, 'sort by itself doesn\'t do it'
  end
  it 'must raise' do
    -> {@a.sort { |s| s }}.must_raise ArgumentError # => 
  end
  it 'must sort by length' do
    # a.sort { |s| s } # => 
  end
  it 'must sort by length' do
    @a.sort { |l, r| l <=> r }.must_equal @desired_result, 'sort {|l, r| l <=> } doesn\'t sort by length'
  end
  it 'must sort by length' do
    @a.sort_by { |s| s }.must_equal @desired_result, "sort_by { |s| s } doesn't sort by length" # => ["Jump", "Magazine", "Sunday"]
  end
  it 'must sort by length' do
    @a.sort_by { |s| s.length }.must_equal @desired_result, "sort_by { |s| s.length} doesn't sort by length" # => ["Jump", "Sunday", "Magazine"]
  end
end

