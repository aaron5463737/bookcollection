# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Harry Potter', price: 12.34, published: "1997-07-30T00:00:00", author: "J.K. ROWLING")
  end


end