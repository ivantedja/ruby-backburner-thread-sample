This is just a PoC to show code that's not thread safe

Backburner configuration is taken directly from https://github.com/nesquena/backburner without much changes

# Notes

When testing socket connection in `random_job.rb`, make sure your port is open (this example uses port `3306`)

# How to test

To insert job into queue:
```
$ ruby main.rb
```

To execute the job:
```
$ ruby worker.rb
```

**DO NOT** forget, if you have any changes in `random_job.rb` then you need to restart your `worker.rb`