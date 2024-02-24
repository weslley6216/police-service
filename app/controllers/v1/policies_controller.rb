class V1::PoliciesController < ApplicationController
  def index
    render json: Policy.all, each_serializer: PolicySerializer, status: :ok
  end

  def show
    render json: Policy.find_by!(number: params[:number]),
           serializer: PolicySerializer, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { message: 'Police not found' }, status: :not_found
  end
end
