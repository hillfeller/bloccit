class Api::V1::CommentsController < Api::V1::BaseController

  before_filter :authenticate_user, except: [:index, :show]
  before_filter :authorize_user, except: [:index, :show]

# #23
  def index
    comments = Comment.all
    render json: comments.to_json, status: 200
  end

# #24
  def show
    comment = Comment.find(params[:id])
    render json: comment.to_json, status: 200
  end
end
