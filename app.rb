require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    num = @number.to_i
    square = num * num
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    num = @number.to_i
    big_phrase = ""
    num.times do
      big_phrase += "#{@phrase} "
    end
    big_phrase
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    num1 = @number1.to_i
    num2 = @number2.to_i
    if @operation == 'add'
      sum = num1 + num2
      sum.to_s
    elsif @operation == 'subtract'
      diff = num1 - num2
      diff.to_s
    elsif @operation == 'multiply'
      product = num1 * num2
      product.to_s
    elsif @operation == 'divide'
      dividend = num1 / num2
      dividend.to_s
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

end
