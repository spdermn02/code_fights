sub NarcissisticNumber {
	($s, $f) = @_;
    
    @o = ();
    for ($i = $s; $i <= $f; $i++ ) {
        @ps = split('',$i);
        $s = 0;
        foreach $p ( @ps ) {
            $s += $p**@ps;
        }
        ($s == $i) ? push @o, int($i) : next;
    }
    \@o;
}
