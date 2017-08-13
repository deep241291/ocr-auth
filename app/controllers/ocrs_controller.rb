class OcrsController < ApplicationController
	def index
		@ocrs = Ocr.all
	end

	def show
		@ocr = Ocr.find_by_id(params[:ocr])
	end

	def create
		ocr = Ocr.create(avatar: params[:file])
		redirect_to root_path
	end

	def destroy
		ocr = Ocr.find(params[:id])
		ocr.destroy
		redirect_to root_path
	end
end