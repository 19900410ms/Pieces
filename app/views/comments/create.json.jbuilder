json.id               @comment.id
json.text             @comment.text
json.user_nickname    @comment.user.nickname
json.user_id          @comment.user.id
json.contribution_id  @comment.contribution.id
json.created_at       @comment.created_at.strftime('%Y/%m/%d %H:%M')