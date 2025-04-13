# learning-ruby3.3
learning ruby3.3

# get information about Ruby

```sh
$ ri ~
```

example)

```sh
$ ri strip
```

# gem seaching

```sh
$ gem seach rspec -erd
```

option e means exact only.
option r means remote only.
option d means detail.

# irb

The irb can extend.
if you create new .irbrc file and put logic, you can call that methods by irb.

ex).irbrc
```rb
def time(&block)
  require 'benchmark'
  result = nil
  timing = Benchmark.measure do
    result = block.()
  end
  puts "It took: #{timing}"
  result
end
```

```sh
$ irb
irb(main):001> time { 1_000_000.times { "cat".upcase } }
It took:   0.143709   0.000773   0.144482 (  0.144592)
=> 1000000
```
