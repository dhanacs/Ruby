numbers =
{
  1 => "one",
  2 => "two",
  3 => "three"
}

l = lambda { |key, value| puts value if key >= 2 }
numbers.select(&l)