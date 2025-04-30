function result = varmeovn_ny(a, b)
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
            if a_val >= -28 && a_val < -26
                result(i, j) = b(i, j) * 1.55;
            elseif a_val >= -26 && a_val < -24
                result(i, j) = b(i, j) * 1.5;
            elseif a_val >= -24 && a_val < -22
                result(i, j) = b(i, j) * 1.47;
            elseif a_val >= -22 && a_val < -20
                result(i, j) = b(i, j) * 1.43;
            elseif a_val >= -20 && a_val < -18
                result(i, j) = b(i, j) * 1.4;    
            elseif a_val >= -18 && a_val < -16
                result(i, j) = b(i, j) * 1.38;
            elseif a_val >= -16 && a_val < -14
                result(i, j) = b(i, j) * 1.35;
            elseif a_val >= -14 && a_val < -12
                result(i, j) = b(i, j) * 1.3;
            elseif a_val >= -12 && a_val < -10
                result(i, j) = b(i, j) * 1.28;
            elseif a_val >= 10 && a_val < -8
                result(i, j) = b(i, j) * 1.25;
            elseif a_val >= -8 && a_val < -6
                result(i, j) = b(i, j) * 1.23;
            elseif a_val >= -6 && a_val < -4
                result(i, j) = b(i, j) * 1.2;
            elseif a_val >= -4 && a_val < -2
                result(i, j) = b(i, j) * 1.18;
            elseif a_val >= -2 && a_val < 0
                result(i, j) = b(i, j) * 1.15;
            elseif a_val >= 0 && a_val < 2
                result(i, j) = b(i, j) * 1.1;
            elseif a_val >= 2 && a_val < 4
                result(i, j) = b(i, j) * 1.08;
            elseif a_val >= 4 && a_val < 6
                result(i, j) = b(i, j) * 1.05;
            elseif a_val >= 6 && a_val < 8
                result(i, j) = b(i, j) * 1;
            elseif a_val >= 8 && a_val < 10
                result(i, j) = b(i, j) * 1;
            % elseif a_val >= 10 && a_val < 12
            %     result(i, j) = b * 0.625;
            % elseif a_val >= 11 && a_val < 14
            %     result(i, j) = b * 0.65;
            % elseif a_val >= 12 && a_val < 16
            %     result(i, j) = b * 0.675;
            % elseif a_val >= 13 && a_val < 20
            %     result(i, j) = b * 0.7;
            % elseif a_val >= 14 && a_val < 22
            %     result(i, j) = b * 0.725;
            % elseif a_val >= 15 && a_val < 24
            %     result(i, j) = b * 0.750;
            % elseif a_val >= 16 && a_val < 17
            %     result(i, j) = b * 0.775;
            % elseif a_val >= 17 && a_val < 18
            %     result(i, j) = b * 0.8;
            % elseif a_val >= 18 && a_val < 19
            %     result(i, j) = b * 0.825;
            % elseif a_val >= 19 && a_val <= 20
            %     result(i, j) = b * 0.85;
            end
            % Hvis a er utenfor [-5, 20], beholdes b (allerede satt)
        end
    end
end