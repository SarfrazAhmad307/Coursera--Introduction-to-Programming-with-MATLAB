% Practice While loops
% Code to call your function
k = next_prime(2)

% Function
function k = next_prime(n)
i = n+1;
while i>n
    if isprime(i)
        k = i;
        break;
    end
    i = i+1;
end
end