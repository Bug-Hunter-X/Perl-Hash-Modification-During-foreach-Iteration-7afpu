my %hash = (
  'a' => 1,
  'b' => 2,
  'c' => 3
);

# safer way to iterate and modify a hash
my @keys = keys %hash; # copy the keys first
foreach my $key (@keys) {
  print "Key: $key, Value: $hash{$key}\n";
  if ($key eq 'b') {
    $hash{'d'} = 4; # add new key after copying keys
  }
}

foreach my $key (keys %hash) {
  print "Key: $key, Value: $hash{$key}\n";
}
