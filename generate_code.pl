sub GenerateCode {
    $z = 9 - length($x = $_[0].sprintf("%02d",$_[1] % 100).('A'..'L')[$_[2]-1]);
    $x .= sprintf("%0*d",$z,substr $_[3], -$z);   
}
