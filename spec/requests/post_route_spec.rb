require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :species => 'test_species', :shelter => 'test_shelter', :name => 'test_name' }, headers: {'HTTP_AUTHORIZATION' => "$2a$12$tER7Li3O4Bpa8anFPWSaneczW.Uv8GYzNRnXtvNlDa4zGGeRBngRW"}
  end

  it 'returns the animals species' do
    if authorize_token
      expect(JSON.parse(response.body)['species']).to eq('test_species')
    end
  end

  it 'returns the animals shelter' do
    if authorize_token
      expect(JSON.parse(response.body)['shelter']).to eq('test_shelter')
    end
  end

  it 'returns the animals name' do
    if authorize_token
      expect(JSON.parse(response.body)['name']).to eq('test_name')
    end
  end

  it 'returns a created status' do
    if authorize_token
    expect(response).to have_http_status(:created)
  end
  end

  def authorize_token
    if request.headers["HTTP_AUTHORIZATION"] && Token.find_by_token_hash(request.headers["HTTP_AUTHORIZATION"])
      true
    else
      false
    end
  end
end
