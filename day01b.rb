# input = DATA.read # testing
input = File.read('./inputs/day01.txt')

elves = input.split(/\n\n/)
             .map { |e| e.split(/\n/).map(&:to_i) }
             .map { |e| e.reduce(&:+) }
             .sort
             .reverse
             .take(3)

puts elves.inject(&:+)

# sample data:
__END__
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
