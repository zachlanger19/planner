class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @assignments = Assignment.all
    @month = 0
    respond_with(@assignments, @month)
  end

  def january
    @assignments = Assignment.all
    @month = 1 - Date.today.month
    render action: :index
  end

  def february
    @assignments = Assignment.all
    @month = 2 - Date.today.month
    render action: :index
  end

  def march
    @assignments = Assignment.all
    @month = 3 - Date.today.month
    render action: :index
  end

  def april
    @assignments = Assignment.all
    @month = 4 - Date.today.month
    render action: :index
  end

  def may
    @assignments = Assignment.all
    @month = 5 - Date.today.month
    render action: :index
  end

  def june
    @assignments = Assignment.all
    @month = 6 - Date.today.month
    render action: :index
  end

  def july
    @assignments = Assignment.all
    @month = 7 - Date.today.month
    render action: :index
  end

  def august
    @assignments = Assignment.all
    @month = 8 - Date.today.month
    render action: :index
  end

  def september
    @assignments = Assignment.all
    @month = 9 - Date.today.month
    render action: :index
  end

  def october
    @assignments = Assignment.all
    @month = 10 - Date.today.month
    render action: :index
  end

  def november
    @assignments = Assignment.all
    @month = 11 - Date.today.month
    render action: :index
  end

  def december
    @assignments = Assignment.all
    @month = 12 - Date.today.month
    render action: :index
  end

  def show
    respond_with(@assignment)
  end

  def new
    @assignment = Assignment.new
    respond_with(@assignment)
  end

  def edit
  end

  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.save
    respond_with(@assignment)
  end

  def update
    @assignment.update(assignment_params)
    respond_with(@assignment)
  end

  def destroy
    @assignment.destroy
    respond_with(@assignment)
  end

  private
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def assignment_params
      params.require(:assignment).permit(:title, :details, :user_id, :due_date)
    end
end
