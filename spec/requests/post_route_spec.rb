require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :species => 'test_species', :shelter => 'test_shelter', :name => 'test_name' }
  end

  it 'returns the animals species' do
    expect(JSON.parse(response.body)['species']).to eq('test_species')
  end

  it 'returns the animals shelter' do
    expect(JSON.parse(response.body)['shelter']).to eq('test_shelter')
  end

  it 'returns the animals name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
