=pod

To enhance the power of his new technique, Minion created several shadow clones of himself. He knows that the ith clone has power Ai. Now Minion needs to choose 2 of his clones to perform this technique. The power of the technique will equal the product of powers of the chosen clones.

But Minion is going to fight a very strange enemy named Pain. He will be able to defeat Pain only if the power of his technique is an even number. Now Minion wants to know in how many ways he can chose 2 of his clones so that he is able to defeat Pain.

Given array A, help Minion to calculate the number of ways to chose two clones to defeat Pain. It doesn't matter in which order the clones are chosen.

Example

For A = [1, 2, 3, 4], the output should be
helptoclone(A) = 5.

There're 5 ways to chose clones:

clones with powers 1 and 2;
clones with powers 1 and 4;
clones with powers 2 and 3;
clones with powers 2 and 4;
clones with powers 3 and 4.
Input/Output

[time limit] 4000ms (perl)
[input] array.integer A

Array of clones' powers.

Constraints:
4 ≤ A.length ≤ 8000,
1 ≤ A[i] ≤ 105.

[output] integer

The number of ways to chose clones to defeat Pain.

=cut

AUTOLOAD {
@d = map {$_%2==0?1:0} @{ @_};
$o=$l=$x=0;
$_==0?$o++:$l++ for(@d);
while( @d > 1){
$q = shift @d;
$x = ($q==1 && $l--)?$x+@d:$x+$l; 
}
$x;
}

