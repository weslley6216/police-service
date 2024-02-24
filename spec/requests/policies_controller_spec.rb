require 'rails_helper'

describe '#GET /policies/' do
  context 'when exists more than one policies' do
    let(:policies) do
      create_list(:policy, 2, :with_data)
    end

    it 'list all policies' do
      get '/v1/policies'

      expect(response.body).to eq(
        ActiveModel::Serializer::CollectionSerializer.new(
          Policy.all,
          each_serializer: PolicySerializer
        ).to_json
      )
    end
  end

  context 'when there is not policies' do
    it 'returns an empty array' do
      get '/v1/policies'

      expect(response.body).to eq('[]')
    end
  end
end

describe '#GET /v1/policies/:number' do
  context 'when the policies exists' do
    let(:policy) { create(:policy, :with_data) }

    it 'returns the policy' do
      get "/v1/policies/#{policy.number}"
      json_response = JSON(response.body)

      expect(json_response['number']).to eq(policy.number)
      expect(json_response['issued_date']).to eq(
        policy.issued_date.strftime('%Y-%m-%d')
      )
      expect(json_response['end_coverage_date']).to eq(
        policy.end_coverage_date.strftime('%Y-%m-%d')
      )
    end
  end

  context 'when there is not policy' do
    it 'returns an empty array' do
      get '/v1/policies/999'
      json_response = JSON(response.body)

      expect(json_response).to include({ 'message' => 'Police not found' })
    end
  end
end
