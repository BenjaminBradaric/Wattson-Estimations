function consumption_vector = create_consumption_vector()
    % Antatt forbruk per måned (kWh)
    monthly_consumption = containers.Map({'jan', 'feb', 'mar', 'apr', 'mai', 'juni', 'juli', 'aug', 'sep', 'okt', 'nov', 'des'}, ...
                                         [3.5, 3.0, 2.5, 2.0, 1.5, 1.5, 2.0, 2.5, 1.5, 2.0, 3.0, 3.5]);

    % Antall dager i hver måned
    days_in_month = containers.Map({'jan', 'feb', 'mar', 'apr', 'mai', 'juni', 'juli', 'aug', 'sep', 'okt', 'nov', 'des'}, ...
                                   [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);

    % Opprett vektor
    consumption_vector = [];

    months = {'jan', 'feb', 'mar', 'apr', 'mai', 'juni', 'juli', 'aug', 'sep', 'okt', 'nov', 'des'};
    for i = 1:length(months)
        month = months{i};
        consumption = monthly_consumption(month);
        days = days_in_month(month);
        consumption_vector = [consumption_vector, repmat(consumption, 1, days)];
    end
end