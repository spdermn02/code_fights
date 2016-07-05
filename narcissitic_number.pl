sub NarcissisticNumber {
	my ($s, $f) = @_;
    
    @o = ();
    for ($i = $s; $i <= $f; $i++ ) {
        push @o, $i if( iN($i) );
    }
    return \@o;
}

sub iN {
    ($n) = @_;
    
    @ps = split('',$n);
    $l = @ps;
    $s = '';
    foreach $p ( @ps ) {
        $s += $p**$l;
    }
    if( $s == $n ) {
        return 1;
    }
    
    return 0;
}
