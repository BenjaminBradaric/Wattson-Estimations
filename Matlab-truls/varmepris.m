function result = varmepris(a, b, vector_a,vector_b)
    % Initialize the result vector with the same size as the input vector
    result = zeros(size(vector_a));
    
    % Loop through each element in the vector
    for i = 1:length(vector_a)
        if vector_a(i) < 7
            % Multiply by a if the element is below 7
            result(i) = vector_b(i) * a;
        else
            % Multiply by b if the element is 7 or above
            result(i) = vector_b(i) * b;
        end
    end
end