% -------- Voltage sweep data --------
VDD = [1.08  1.20  1.32];        % Supply voltage (V)

Fout_GHz = [ ...
    14.62, ...   % Frequency at 1.08 V (GHz)
    15.86, ...   % Frequency at 1.20 V (GHz)
    16.95  ...   % Frequency at 1.32 V (GHz)
];

% -------- Plot --------
figure;
plot(VDD, Fout_GHz, '-o', 'LineWidth', 1.8, 'MarkerSize', 7);
grid on;

xlabel('Supply Voltage V_{DD} (V)');
ylabel('Output Frequency (GHz)');
title('PLL Output Frequency vs Supply Voltage');

% Improve readability
xlim([1.05 1.35]);

% -------- Linear fit --------
p = polyfit(VDD, Fout_GHz, 1);
VDD_fit = linspace(min(VDD), max(VDD), 100);
F_fit = polyval(p, VDD_fit);


