=pod

Your task is to implement a function that generates automobile codes by their label, year, model and number. The code should have format <l><y><m><num>, where:

<l> is a label;
<y> consists of last to digits of year, or equals 0year, if year has only one digit;
<m> is a number that can be determined from model, a character in range 'A' - 'L';
<num> is a number formatted so that the length of the code is 9 digits, i.e. it should either be truncated to its last digits, or be preceded by '0's.
Example

For label = "B", year = 2015, model = 3 and number = 678,
the output should be
GenerateCode(label, year, model, number) = "B15C00678".

In this example, number should be preceded by '0's.

For label = "XYZ", year = 2017, model = 9 and number = 10000,
the output should be
GenerateCode(label, year, model, number) = "XYZ17I000".

Here number is too long, so only its last 3 digits are taken.

For label = "ABCD", year = 1, model = 10 and number = 8799,
the output should be
GenerateCode(label, year, model, number) = "ABCD01J99".

In this example year is written as 01 because it consists of a single digit, and number is truncated to last two digits.

Input/Output

[time limit] 4000ms (perl)
[input] string label

A string of uppercase English letters.

Constraints:
1 ≤ label.length ≤ 5.

[input] integer year

Constraints:
1 ≤ year < 104.

[input] integer model

Constraints:
1 ≤ model ≤ 12.

[input] integer number

Constraints:
1 ≤ number ≤ 104.

[output] string

A string of length 9, automobile code.

=cut

sub GenerateCode {
    $z = 9 - length($x = $_[0].sprintf("%02d",$_[1] % 100).('A'..'L')[$_[2]-1]);
    $x .= sprintf("%0*d",$z,substr $_[3], -$z);   
}
