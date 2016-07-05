sub NarcissisticNumber {
	($s, $f) = @_;
    @o=();
    for ($i = $s; $i <= $f; $i++ ) {
        $s=0;
        foreach $p ( @x = split('',$i) ) {
            $s += $p**@x;
        }
        ($s == $i) ? push @o, int($i) : next;
    }
    \@o;
}
