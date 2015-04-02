class Api::V1::FashionsController < ApplicationController
  respond_to :json, :xml

  def index
    @fashion = Fashion.all
    
  end

  def show
    @fashion = Fashion.find(params[:id])
    
  end

  def create
    @fashion = Fashion.create(:id =>params[:id],:dress => params[:dress], :skirt => params[:skirt], :blouse => params[:blouse], :shirt => params[:shirt], :shoes => params[:shoes], :hacker => params[:hacker], :say =>  params[:say])
    else
      render json: { errors: @fashion.errors.full_messages }, status: 1337
    # respond_with(@fashion)
  end

end

#@person = Person.create(:prefix => params[:prefix], :first_name => params[:first_name], :middle_name => params[:middle_name], :last_name => params[:last_name], :suffix => params[:suffix], :email => params[:email], :phone => params[:phone])
