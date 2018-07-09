class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :edit, :update, :destroy]

  # GET /measurements
  # GET /measurements.json
  def index
    @measurements = Measurement.all
  end

  # GET /measurements/1
  # GET /measurements/1.json
  def show
  end

  # GET /measurements/new
  def new
    @measurement = Measurement.new
  end

  # GET /measurements/1/edit
  def edit
  end

  # POST /measurements
  # POST /measurements.json
  def create
    @measurement = Measurement.new(measurement_params)
  
    
    def busto_medida
      busto = ((@measurement.bust - 98) / 4.90).round(2)
    end
 
    def cintura_medida
      ((@measurement.waist - 80.73) /4.04).round(2)
    end

    def cadera_medida
      ((@measurement.hip - 104.99) / 5.25).round(2)
    end
    
    def sum_promedio
       (busto_medida() + cintura_medida() + cadera_medida()) / 3
    end
    
    def retornando_busto
        busto_medida() - sum_promedio()
    end
    
    def retornando_cintura
        cintura_medida() - sum_promedio()
    end
    
    def retornando_cadera
        cadera_medida() - sum_promedio()
    end
    
  
    @measurement.media_body = retornando_busto().round, retornando_cintura().round, retornando_cadera().round
  
  
  
  
  
    respond_to do |format|
      if @measurement.save
        format.html { redirect_to measurements_path, notice: 'Measurement was successfully created.' }
        format.json { render :show, status: :created, location: @measurement }
      else
        format.html { render :new }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurements/1
  # PATCH/PUT /measurements/1.json
  def update
    respond_to do |format|
      
    def busto_medida
      ((@measurement.bust - 98) / 4.90).round(2)
    end
 
    def cintura_medida
      ((@measurement.waist - 80.73) /4.04).round(2)
    end

    def cadera_medida
      ((@measurement.hip - 104.99) / 5.25).round(2)
    end
    
    def sum_promedio
       (busto_medida() + cintura_medida() + cadera_medida()) / 3
    end
    
    def retornando_busto
        busto_medida() - sum_promedio()
    end
    
    def retornando_cintura
        cintura_medida() - sum_promedio()
    end
    
    def retornando_cadera
        cadera_medida() - sum_promedio()
    end
    
  
    @measurement.media_body = retornando_busto().round, retornando_cintura().round, retornando_cadera().round
  
  
      
      if @measurement.update(measurement_params)
        format.html { redirect_to measurements_path, notice: 'Measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement }
      else
        format.html { render :edit }
        format.json { render json: @measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurements/1
  # DELETE /measurements/1.json
  def destroy
    @measurement.destroy
    respond_to do |format|
      format.html { redirect_to measurements_url, notice: 'Measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_params
      params.require(:measurement).permit(:bust, :waist, :hip, :media_body)
    end
end
