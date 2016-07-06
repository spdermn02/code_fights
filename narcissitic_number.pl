=pod

A narcissistic number is a number that is equal to the sum of its digits each raised to the power equal to the total number of digits. For example, 153 is a narcissistic number, since 13 + 53 + 33 = 153.

Given the numbers start and finish, return all narcissistic numbers in range [start, finish] (inclusive).

Example

For start = 100 and finish = 200, the output should be
NarcissisticNumber(start, finish) = [153].

153 is the only number in range [100, 200] which is narcissistic.

Input/Output

[time limit] 4000ms (perl)
[input] integer start

Constraints:
1 ≤ start ≤ finish.

[input] integer finish

Constraints:
start ≤ finish ≤ 104.

[output] array.integer

A sorted array of narcissistic numbers between start and finish (inclusive).

=cut

sub NarcissisticNumber {
    @o=();
    for ( $_[0] .. $_[1] ) {
        $y=0;
        $y += $_**@x for (@x = split('',$_));
        push @o, int($_) if( $y == $_ );
    }
    \@o;
}
