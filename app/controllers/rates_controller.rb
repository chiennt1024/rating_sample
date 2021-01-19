class RatesController < ApplicationController
    def create
        byebug
        @post = Post.find(params[:post_id])
        @rate = @post.rates.create(params[:rate].permit(:star))
        redirect_to post_path(@post)    
    end
  
    def destroy
        @post = Post.find(params[:post_id])
        @rate = @post.rates.find(params[:id])
        @rate.destroy
        redirect_to post_path(@post)
    end
end