% Simple Encryption
% Code to call your function
coded    = caesar('ABCD',  3);
decoded  = caesar(coded,  -3);
wrap     = caesar('1234', 96);
back     = caesar(wrap,  -96);

% Function
function coded = caesar(Char , Shift)
   Shift = mod(Shift,95);
   Double = Char + Shift;
   coded = char(Double-(Double>126).*95+(Double<32).*95);
end    