Given /^a post exists with body "([^\"]*)"$/ do |body|
  @post = Post.create(:title => "Test Post", :body => body)
end

When /^I view that post$/ do
  visit "/posts/#{@post.id}"
end

Then /^I should see the test results$/ do
  page.wait_until(5) do
    begin
      has_css? ".test-results", :text => "OK", :visible => true
    rescue ObsoleteElementError
    end
  end
end
