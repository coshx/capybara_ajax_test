Given /^a post exists with body "([^\"]*)"$/ do |body|
  @post = Post.create(:title => "Test Post", :body => body)
end

When /^I view that post$/ do
  visit "/posts/#{@post.id}"
end
