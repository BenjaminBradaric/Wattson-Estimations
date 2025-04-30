function resultMatrix = lavprismatrise(A, B, startCol, endCol)
    % Ensure the interval is valid for both matrices
    [rowsA, colsA] = size(A);
    [rowsB, colsB] = size(B);
    
    % Check if startCol and endCol are scalar values
    if ~isscalar(startCol) || ~isscalar(endCol)
        error('startCol and endCol must be scalar values.');
    end
    
    % Validate the interval
    if startCol < 1 || endCol > colsA || startCol > endCol
        error('Invalid column interval for matrix A.');
    end
    if startCol < 1 || endCol > colsB || startCol > endCol
        error('Invalid column interval for matrix B.');
    end
    if rowsA ~= rowsB
        error('Matrices A and B must have the same number of rows.');
    end
    
    % Initialize the result matrix with the original matrix A
    resultMatrix = A;
    
    % Loop through each row
    for row = 1:rowsA
        % Extract the interval from matrix A
        intervalA = A(row, startCol:endCol);
        
        % Find the minimum value and its index within the interval
        [minVal, minIdx] = min(intervalA);
        
        % Check if the minimum value is at least 2 less than all other values
        otherValues = intervalA;
        otherValues(minIdx) = []; % Remove the minimum value for comparison
        isSignificantlySmaller = all(minVal <= (otherValues - 0.3));
        
        % Only proceed if the condition is met
        if isSignificantlySmaller
            % Calculate the sum of the corresponding interval in matrix B
            sumB = sum(B(row, startCol:endCol));
            
            % Cap sumB at 20 if it exceeds 20 (optional, fjern kommentar hvis nødvendig)
             if sumB > 10
                 sumB = 1.5;
             end
            
            % Multiply the minimum value by the sumB
            resultVal = minVal * sumB;
            
            % Place the result in the same position in the result matrix
            resultMatrix(row, startCol:endCol) = 0; % Set all values in the interval to 0
            resultMatrix(row, startCol + minIdx - 1) = resultVal; % Set the result value
        end
    end
end