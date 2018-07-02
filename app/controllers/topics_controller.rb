class TopicsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @topic = @blog.topics.create(topic_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @topic = @blog.topics.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end

  private

  def topic_params
      params.require(:topic).permit(:name)
    end
end
