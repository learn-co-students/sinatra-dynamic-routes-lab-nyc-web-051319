require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @times = params[:number].to_i
    "#{@phrase}" * @times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when 'add'
      @returned = @number1 + @number2
    when 'subtract'
      @returned = @number1 - @number2
    when 'multiply'
      @returned = @number1 * @number2
    when 'divide'
      @returned = @number1 / @number2
    end
    "#{@returned}"
  end
end