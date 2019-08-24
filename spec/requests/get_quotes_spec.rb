require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before { get 'v1/animals'}

  it 'returns all animals' do
    if authorize_token
      expect(JSON.parse(response.body).size).to eq(20)
    end
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  def authorize_token
    if request.headers["HTTP_AUTHORIZATION"] && Token.find_by_token_hash(request.headers["HTTP_AUTHORIZATION"])
      true
    else
      false
    end
  end
end
