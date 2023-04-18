class CommentsController < ApplicationController
  before_action :set_project

  def create
    @comment = @project.comments.build(comment_params)
    if @comment.save
      redirect_to project_path(@project), notice: 'Comment was successfully created.'
    else
      render 'projects/show'
    end
  end

  def edit
    @comment = @project.comments.find(params[:id])
  end

  def update
    @comment = @project.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to project_path(@project), notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project), notice: 'Comment was successfully deleted.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end

