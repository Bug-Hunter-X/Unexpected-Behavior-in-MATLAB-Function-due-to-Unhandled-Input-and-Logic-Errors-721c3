function result = myFunctionImproved(input)
  % Improved input validation:
  if ~isnumeric(input) || input < 0
    error('Input must be a non-negative number.');
  end

  % Add more robust handling to prevent unexpected behavior
  try
    result = input * 2; 
  catch err
    % Handle potential errors during the calculation
    warning('An error occurred during calculation: %s', err.message);
    result = NaN; % or another appropriate value
  end
end

%Example of calling the improved function
input = -5;
result = myFunctionImproved(input); %Throws an error
input = 5; 
result = myFunctionImproved(input); % Returns 10