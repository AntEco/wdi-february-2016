require "sinatra"
require "booty"

# you need this to send email
require "sendgrid-ruby"

get "/" do
  @h1_text = Booty.call("I am a pirate")
  @something = "now it should say something"
  erb :home
end

get "/famous-pirates" do
  @h1_text = Booty.call("Here are the famous pirates")
  erb :famous_pirates
end

get "/pirate-text" do
  erb :pirate_text
end

post "/translator" do
  if !params[:english_text].nil?
    @pirate_text = Booty.call(params[:english_text])
  end
end

# this creates the contact us page
get "/contact-us" do
  erb :contact_us
end

# this responds to the contact-us form submission
post "/contact-us" do
  # this creates the sendgrid client object
  client = SendGrid::Client.new(api_key: ENV["SENDGRID_APIKEY"])

  # this creates the sendgrid mail object that you will be sending
  mail = SendGrid::Mail.new do |m|
    m.to = "orlando@nycda.com"

    # sets the from address from from submission
    m.from = params[:email]
    m.subject = "Contact Me"

    # for users with html disabled
    m.text = params[:body]

    # for users with html enabled
    m.html = "<p style='color: blue;'>#{params[:body]}</p>"
  end

  # this sends the mail message
  response = client.send(mail)

  # checks to see if the email was sent
  #   200 means it was sent/ not 200 means it was not sent
  if response.code == 200
    "Thank you. Your email has been sent."
  else
    "There has been an error sending your email. Please try again"
  end
end

# you can use 
def some_text_here
  "some text"
end