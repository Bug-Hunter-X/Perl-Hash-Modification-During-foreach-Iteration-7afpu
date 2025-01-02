my %hash = (
  'a' => 1,
  'b' => 2,
  'c' => 3
);

foreach my $key (keys %hash) {
  print "Key: $key, Value: $hash{$key}\n";
}

#This code will correctly print out the key-value pairs of the hash.
#However, if you add a new key-value pair to the hash inside the loop,
#you may get unexpected results.

foreach my $key (keys %hash) {
  $hash{'d'} = 4; # Adding a new key-value pair
  print "Key: $key, Value: $hash{$key}\n";
}
