require 'rails_helper'

RSpec.describe Blog, type: :model do
  context 'validation test' do
    it 'ensures presence of title' do
      blog = Blog.new(subtitle: 'some subtitle', body: 'some body').save
      expect(blog).to eq(false)
    end

    it 'ensures presence of subtitle' do
      blog = Blog.new(title: 'some title', body: 'some body').save
      expect(blog).to eq(false)
    end

    it 'ensures presence of body' do
      blog = Blog.new(title: 'some title', subtitle: 'some subtitle').save
      expect(blog).to eq(false)
    end

    it 'ensures blog saved successfully' do
      blog = Blog.new(title: 'some title', subtitle: 'some subtitle', body: 'some body').save
      expect(blog).to eq(true)
    end
  end

end
