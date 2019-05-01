require 'backburner'
require './configuration'
require './random_job'

Backburner.enqueue RandomJob, -1
Backburner.enqueue RandomJob, -2
Backburner.enqueue RandomJob, -3
Backburner.enqueue RandomJob, -4
Backburner.enqueue RandomJob, -5
Backburner.enqueue RandomJob, -6