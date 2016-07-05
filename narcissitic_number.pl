sub NarcissisticNumber {
	my ($start, $finish) = @_;
    
    my @output = ();
    for (my $i = $start; $i <= $finish; $i++ ) {
        if( isNarcisstic($i) ) {
            push @output, $i;
        }
    }
    return \@output;
}

sub isNarcisstic {
    my($num) = @_;
    
    my @parts = split('',$num);
    my $len = @parts;
    my $sum = '';
    foreach my $part ( @parts ) {
        $sum += $part**$len;
    }
    if( $sum == $num ) {
        return 1;
    }
    
    return 0;
}
