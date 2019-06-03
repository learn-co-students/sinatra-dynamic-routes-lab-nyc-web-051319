require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name]
    @username.reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @string = ""
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do
      @string << @phrase
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when 'add'
      @result = @num1 + @num2
    when 'subtract'
      @result = @num1 - @num2
    when 'divide'
      @result = @num1 / @num2
    else 'multiply'
      @result = @num1 * @num2
    end
    "#{@result}"
  end


end
