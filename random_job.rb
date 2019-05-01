require 'socket'

class RandomJob
  include Backburner::Queue
  queue "random-job" 

  def self.perform(some_number)
    @number = some_number
    old_number = some_number
    new_number = rand(100)

    # test it several times by comment / uncomment this line below
    socket = TCPSocket.new 'localhost', 3306 # IO trigger context switch

    @number += new_number
    puts "old number: #{old_number}, new number: #{new_number}, @number: #{@number}"
  end
end
