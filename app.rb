require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    status 200
    name = params[:name]
    name.reverse!
  end

  get "/square/:number" do
    status 200
     @number = params[:number]
     (@number.to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    status 200
    @number = params[:number].to_i
    ans = ''
    @phrase = params[:phrase]
    @number.times do
       ans += @phrase
    end
    ans
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    status 200
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2= params[:number2]
    ans = ''
  if @operation == "add"
    ans = (@number1.to_i + @number2.to_i).to_s
  elsif @operation == "multiply"
    ans = (@number1.to_i * @number2.to_i).to_s
  elsif @operation == "divide"
    ans = (@number1.to_i / @number2.to_i).to_s
  elsif @operation == "subtract"
    ans = (@number1.to_i - @number2.to_i).to_s
  end
  #   (@number1.to_i @operation @number2.to_i)
  end
end
