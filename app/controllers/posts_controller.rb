class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
    end
end

#In this line, our show action is running a database query on the Post model 
#that will return a post with an ID that matches the route parameters. 
#It will store this record in the @post instance variable and make 
#it available to the show.html.erb file. 
#Let's get our spec passing by placing the post's title on the show view template:

# <!-- app/views/posts/show.html.erb -->
# <h1><%= @post.title %></h1>