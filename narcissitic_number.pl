sub NarcissisticNumber {
	($s, $f) = @_;
    @o=();
    for ($s .. $f) {
        $y=0;
        $y += $_**@x for (@x = split('',$_));
        push @o, int($_) if( $y == $_ );
    }
    \@o;
}
