class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

   def create
    @post = Post.create(content: params[:content]) # ここで@postという変数に代入
    render json:{ post: @post } # 代入した@postをレスポンスとして返す
  end
end
