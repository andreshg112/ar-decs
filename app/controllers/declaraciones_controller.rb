class DeclaracionesController < ApplicationController

  def index
		@declaraciones = Declaracion.all.as_json({include: :gasolinas})
		respond_to do |format|
			format.json { render json: @declaraciones }
			format.xml { render xml: @declaraciones }
		end
	end

	def show
		@declaracion = Declaracion.find(params[:id]).as_json({include: :gasolinas})
		respond_to do |format|
			format.json { render json: @declaracion }
			format.xml { render xml: @declaracion }
		end
	end

	def create
		@declaracion = Declaracion.create(declaracion_params)
		respond_to do |format|
			if @declaracion.save
				format.json { render json: {:declaracion => @declaracion}, status: :created }
				format.xml { render xml: {:declaracion => @declaracion}, status: :created }
			else
				format.json { render json: @declaracion.errors, status: :unprocessable_entity }
				format.xml { render xml: @declaracion.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		@declaracion = Declaracion.find(params[:id])
		respond_to do |format|
			if @declaracion.update(declaracion_params)
				format.json { render json: {:actualizado => @declaracion}, status: :ok }
				format.xml { render xml: {:actualizado => @declaracion}, status: :ok }
			else
				format.json { render json: @declaracion.errors, status: :unprocessable_entity }
				format.xml { render xml: @declaracion.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@declaracion = Declaracion.find(params[:id])
		respond_to do |format|
			if @declaracion.destroy
				format.json { render json: {:eliminado => @declaracion}, status: :ok }
				format.xml { render xml: {:eliminado => @declaracion}, status: :ok }
			else
				format.json { render json: @declaracion.errors, status: :unprocessable_entity }
				format.xml { render xml: @declaracion.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def declaracion_params
		params.require(:declaracion).permit!
	end
end
