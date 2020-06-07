% Text File I/O
% Code to call your function
type('simple.txt');
charnum = char_counter('simple.txt','a')
charnum = char_counter('Frankenstein-by-Shelley.txt',' ')

% Function
function charnum = char_counter(fname,character)
    fid = fopen(fname,'rt');
    if fid<0 || ~ischar(character) || ~ischar(fname) || length(fname) == 0 || length(character) == 0 || isempty(fname) || isempty(character)
        charnum = -1;
        return
    end

    oneline = fgets(fid);
    l = [];
    
    while ischar(oneline)
        l = [l,count(oneline,character)];
        oneline = fgets(fid);
    end
    charnum = sum(l);
end