class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)

    resp.write "y'all first number: #{num_1}\n"
    resp.write "y'all second number: #{num_2}\n"
    resp.write "y'all third number: #{num_3}\n"
    resp.write "\n"

    if num_1==num_2 && num_2==num_3
      resp.write "\n      You WIN\n\n"
    else
      resp.write "\n      You Lose\n\n"
    end

    resp.finish
  end

end
