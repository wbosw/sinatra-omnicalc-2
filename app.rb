require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_number = params.fetch("first_number").to_f
  @second_number = params.fetch("second_number").to_f
  @result = @first_number + @second_number
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @second_num - @first_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_number = params.fetch("first_number").to_f
  @second_number = params.fetch("second_number").to_f
  @result = @second_number * @first_number

  erb(:mult_result)
end

get("/divide") do
 
  erb(:div_form)
end

get("/wizard_divide") do
  @first_number = params.fetch("first_number").to_f
  @second_number = params.fetch("second_number").to_f
  @result = @first_number / @second_number
  erb(:div_result)
end
