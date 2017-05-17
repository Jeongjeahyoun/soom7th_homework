class HomeController < ApplicationController
  def index
  end
  
  def write
    @one_post = Post.new
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.hit = 0
    @one_post.save
    
    redirect_to "/home/list"
  end
  
  def list
    @all_post = Post.all
  end
  
  def detail
    @one_post = Post.find(params[:id])
    @one_post.hit += 1
    @one_post.save


  end
  
  def delete 
    @one_post = Post.find(params[:id])
    @one_post.destroy
    
    redirect_to '/home/list'
  end
  
  def update
    @one_post = Post.find(params[:id])
  end
  
  def update_ok
    @one_post = Post.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.save
    
    redirect_to '/home/list'
  end
  
  def reply_ok 
    @reply = Comment.new
    @reply.reply = params[:reply]
    @reply.post_id = params[:post_id]
    @reply.save
    
    redirect_to :back
  end
  
end
