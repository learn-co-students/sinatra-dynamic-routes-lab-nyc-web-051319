require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase] * params[:number].to_i
    "#{@say}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i

     case params[:operation]
    when "add"
      (@num_1 + @num_2).to_s
    when "subtract"
      (@num_1 - @num_2).to_s
    when "multiply"
      (@num_1 * @num_2).to_s
    when "divide"
      (@num_1 / @num_2).to_s
    else
      "Not a valid operation"
    end
  end

end
