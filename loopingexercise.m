%for loop_index = vector
%   code;
%end

for ii = 1:10;
    ii;
end

a = -5:5;
for ii = 1:length(a);
    a(ii)
end


%nested loop to find a prime number

for i=2:100
    for j=2:100
        if(~mod(i,j))
            break; %if factor found, not prime
        end
    end
    if(j > (i/j))
        fprintf('%d is prime\n', i);
    end
end


%define a vector

manraj = [1;2;3];

disp(manraj); 


