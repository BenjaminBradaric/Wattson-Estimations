function result = varmeovn(a,b, vector_a,vector_b)
    % Initialize the result vector with the same size as the input vector
    result = zeros(size(vector_a));
    
    % Loop through each element in the vector
    for i = 1:length(vector_a)
        if vector_a(i) < a
            result(i) = vector_b(i) * 0.8*b; 
        else
            result(i) = 0;
        end
    end
end