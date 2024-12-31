function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  % More code here that could lead to unexpected behavior 
  result = input * 2; 
end

% Example of how the function might be called and potentially cause an error:
input = -5; 
result = myFunction(input);