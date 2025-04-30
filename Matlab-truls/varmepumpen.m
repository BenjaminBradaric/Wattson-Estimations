function result = varmepumpen(a, b)
    % Sjekk at matrisene er like store
    if ~isequal(size(a), size(b))
        error('Matrisene a og b må ha samme dimensjoner');
    end
    
    % Initialiser resultatmatrisen med verdiene fra b (standardtilfelle)
    result = b;
    
    % Gå gjennom alle elementene i a
    for i = 1:size(a, 1)
        for j = 1:size(a, 2)
            a_val = a(i, j);
            
            % Beregn ny verdi basert på intervallene i a
            if a_val >= -5 && a_val < -4
                result(i, j) = b(i, j) * 0.95;
            elseif a_val >= -4 && a_val < -3
                result(i, j) = b(i, j) * 0.925;
            elseif a_val >= -3 && a_val < -2
                result(i, j) = b(i, j) * 0.9;
            elseif a_val >= -2 && a_val < -1
                result(i, j) = b(i, j) * 0.875;
            elseif a_val >= -1 && a_val < 0
                result(i, j) = b(i, j) * 0.85;
            elseif a_val >= 0 && a_val < 1
                result(i, j) = b(i, j) * 0.825;
            elseif a_val >= 1 && a_val < 2
                result(i, j) = b(i, j) * 0.8;
            elseif a_val >= 2 && a_val < 3
                result(i, j) = b(i, j) * 0.775;
            elseif a_val >= 3 && a_val < 4
                result(i, j) = b(i, j) * 0.75;
            elseif a_val >= 4 && a_val < 5
                result(i, j) = b(i, j) * 0.725;
            elseif a_val >= 5 && a_val < 6
                result(i, j) = b(i, j) * 0.7;
            elseif a_val >= 6 && a_val < 7
                result(i, j) = b(i, j) * 0.675;
            elseif a_val >= 7 && a_val < 8
                result(i, j) = b(i, j) * 0.65;
            elseif a_val >= 8 && a_val < 9
                result(i, j) = b(i, j) * 0.625;
            elseif a_val >= 9 && a_val < 10
                result(i, j) = b(i, j) * 0.6;
            elseif a_val >= 10 && a_val < 11
                result(i, j) = b(i, j) * 0.625;
            elseif a_val >= 11 && a_val < 12
                result(i, j) = b(i, j) * 0.65;
            elseif a_val >= 12 && a_val < 13
                result(i, j) = b(i, j) * 0.675;
            elseif a_val >= 13 && a_val < 14
                result(i, j) = b(i, j) * 0.7;
            elseif a_val >= 14 && a_val < 15
                result(i, j) = b(i, j) * 0.725;
            elseif a_val >= 15 && a_val < 16
                result(i, j) = b(i, j) * 0.750;
            elseif a_val >= 16 && a_val < 17
                result(i, j) = b(i, j) * 0.775;
            elseif a_val >= 17 && a_val < 18
                result(i, j) = b(i, j) * 0.8;
            elseif a_val >= 18 && a_val < 19
                result(i, j) = b(i, j) * 0.825;
            elseif a_val >= 19 && a_val <= 20
                result(i, j) = b(i, j) * 0.85;
            end
            % Hvis a er utenfor [-5, 20], beholdes b (allerede satt)
        end
    end
end