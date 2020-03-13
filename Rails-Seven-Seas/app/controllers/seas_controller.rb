class SeasController < ApplicationController

    def index
        @seas = Sea.all
    end

    def show 
        @sea = Sea.find(params[:id])
    end

    def new 
        
    end

    def create 
        @sea = Sea.create(name: params["name"], temperature: params["temperature"], bio: params["bio"], image_url: params["image_url"], mood: params["mood"], favorite_color: params["favorite_color"], scariest_creature: params["scariest_creature"], has_mermaids: params["has_mermaids"])
        redirect_to sea_path(@sea)
    end

    def edit 
        @sea = Sea.find(params[:id])
    end

    def update 
        @sea = Sea.find(params[:id])
        @sea.update(name: params[:sea][:name], temperature: params[:sea][:temperature], bio: params[:sea][:bio], image_url: params[:sea][:image_url], mood: params[:sea][:mood], favorite_color: params[:sea][:favorite_color], scariest_creature: params[:sea][:scariest_creature], has_mermaids: params[:sea][:has_mermaids])
        redirect_to sea_path(@sea)
    end

    def destroy
        @sea = Sea.find(params[:id])
        @sea.destroy
        redirect_to seas_path
    end
end
