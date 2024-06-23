class WeightRecordsController < ApplicationController

def index
    @weight_records = WeightRecord.all
end

def new 
  @weight_record = WeightRecord.new
end

def create
  @weight_record = WeightRecord.new(weight_record_params)
  if @weight_record.save
    redirect_to weight_records_path, notice: 'Weight record was successfully created.'
  else
    render :new
  end
end

def edit
  @weight_record = WeightRecord.find(params[:id])
  end

  def update 
    @weight_record = WeightRecord.find(params[:id])
    if @weight_record.update(weight_record_params)
      redirect_to weight_records_path, notice: 'Weight record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy 
    @weight_record = WeightRecord.find(params[:id])
    @weight_record.destroy
    redirect_to weight_records_path, notice: 'Weight record was successfully destroyed.'
  end

  private

  def weight_record_params
    params.require(:weight_record).permit(:weight, :height, :recorded_at)
  end
end

