require 'rails_helper'

RSpec.describe Topic, type: :model do
  context 'validation test' do
    it 'ensures presence of topic' do
      topic = Topic.new(title: "some topic", blog_id: 1).save
      expect(topic).to eq(false)
    end
  end
end
