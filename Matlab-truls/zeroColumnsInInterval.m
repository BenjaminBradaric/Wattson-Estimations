function modifiedMatrix = zeroColumnsInInterval(matrix, startCol, endCol)
    % Ensure the interval is valid
    if startCol < 1 || endCol > size(matrix, 2) || startCol > endCol
        error('Invalid column interval. Ensure startCol and endCol are within the matrix dimensions and startCol <= endCol.');
    end
    
    % Create a copy of the input matrix to avoid modifying the original
    modifiedMatrix = matrix;
    
    % Set all values in the specified column interval to 0
    modifiedMatrix(:, startCol:endCol) = 0;
end