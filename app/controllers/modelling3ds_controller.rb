class Modelling3dsController < ApplicationController
    def initialize
      found = true
      count = 1
      while(found)
      if Review.exists?(count)
        # @getid = Review.find(count)
        # @@path = Review.find(count).id.to_s
        found = false
      else
        count = count + 1
      end
    end
    end
   def index
      @weaponModels = Modelling3d.all.where(category: 'character')
      @assesoriesModels = Modelling3d.all.where(category: 'assesories')
   end

   def show
    puts @@path = request.path
    puts @@path[@@path.length - 1]
      @simpleModelling3d = Modelling3d.find(params[:id])
   end

   def new
      @modelling3d = Modelling3d.new
   end

   def create
      @modelling3d = Modelling3d.new(modelling3d_params)

      if @modelling3d.save
         redirect_to modelling3ds_path
      else
         render "new"
      end

   end

   def landpage
      render 'landpage'
   end

   def about
      render 'about'
   end

   def destroy
      @modelling3d = Modelling3d.find(params[:id])
      @modelling3d.destroy
      redirect_to modelling3ds_path
   end

   def contact
    render 'contact'
   end

   def changeCategory
    @currentCategory = change_params
    @modelling3ds = Modelling3d.all.where(category: @currentCategory)
    redirect_to 'modelling3ds#index'
   end

   def getData
   puts "this is it"+@@path

    @JSONDATA = Review.where(modelling3d_id: @@path[@@path.length - 1]).to_json
      send_data @JSONDATA, :type => 'application/json', :disposition => 'inline'
   end

   def getPopular
      @mostPopular = Modelling3d.order(:downloads).last(2).to_json
        send_data @mostPopular, :type => 'application/json', :disposition => 'inline'
   end

    private
      def change_params
        params.permit(:which)
      end

      def modelling3d_params
      params.require(:modelling3d).permit(:name, :attachment, :downloads, :category, :filetype, :image1, :image2, :image3)
   end

   end
