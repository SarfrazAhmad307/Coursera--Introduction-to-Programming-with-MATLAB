coded = caesar('ABCD',3);
function coded = caesar(Char , Shift)
    Double = Char + Shift;
    coded = [];
    for i = 1:length(Double)
        if Double(i) >= 32 && Double(i) <= 126
            coded = [coded,char(Double(i))];
        end
    end
end