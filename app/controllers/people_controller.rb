class PeopleController < ApplicationController


  def index
    @person = Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(people_params)
    if @person.save
      redircect_to people_path(@person)
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(people_params)
      redirect_to people_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path(@person)
  end

  private
    def people_params
      params.require(:person).permit(:name, :age, :gender, :alive)
    end
end
