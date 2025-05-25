%create array with 1000 numbers
%Use tic/toc to measure time for: 
%Linear search
%Binary search(after sorting)
%Compare results.

array=1:1000;
target = 998;
tic;

for i=1:length(array)
    if target == array(i)
   found = true;
   index= i;
   break;
    else
       found = false;
    end
end
if found == true
    disp(index);
end
elapsedTime=toc;
fprintf('ElapsedTime Linear : %f second',elapsedTime);


start = 1;
ends = length(array);
tic
while start <= ends
    mid = floor((start + ends) / 2);
    
    if array(mid) == target
        disp(['Element found at index ', num2str(mid)]);
        break;
    elseif target < array(mid)
        ends = mid - 1;
    else
        start = mid + 1;
    end
end

if start > ends
    disp('The element not found');
end
elapsedTime=toc;
fprintf('ElapsedTime Binary : %f second',elapsedTime);

