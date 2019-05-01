require 'backburner'
require './configuration'
require './random_job'

Backburner::Workers::ThreadsOnFork.threads_number = 3
Backburner.work
