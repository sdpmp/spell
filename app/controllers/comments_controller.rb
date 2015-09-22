class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)


puts "---------------------------- I'm here -----------------------"


puts @article.comments.inspect


@c = Comment.find(69)
@article.comments.destroy(@c)

#puts @comment.inspect
#@x = @comment.article
#puts @x.inspect
#@a = @comment.create_article(title: "my test", text: "brrrrr")
#puts @a.inspect
#@comment.article = @article
#puts @comment.inspect
puts "---------------------------- I'm here -----------------------"

    redirect_to article_path(@article)
  end


  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
