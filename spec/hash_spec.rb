require 'spec_helper'

describe Hash do
  it {expect(Hash.new).to be_empty}
end