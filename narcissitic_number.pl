sub NarcissisticNumber {
    @o=();
    for ( $_[0] .. $_[1] ) {
        $y=0;
        $y += $_**@x for (@x = split('',$_));
        push @o, int($_) if( $y == $_ );
    }
    \@o;
}
