class ItemsController < ApplicationController

	def index
		@items = Item.all
		render text: @items.map {|i| "#{i.name}: #{i.price}"}.join("<br/>")
	end

	def create
		p params
		render text:"item created"
	end	

	def show
		p params
		render text:"show"	
	end
end
