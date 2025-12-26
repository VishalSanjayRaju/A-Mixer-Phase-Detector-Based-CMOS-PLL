% -------- Load Cadence-exported samples --------
data = readmatrix('time_vs_vOUT.csv');   % <-- your filename

t = data(:,1);   % time (seconds)
v = data(:,2);   % voltage (volts)

% -------- Sanity check --------
fprintf('Number of samples = %d\n', length(v));
fprintf('Time step ~ %.3e s\n', mean(diff(t)));

% -------- Remove DC offset --------
v = v - mean(v);

% -------- Sampling parameters --------
Ts = mean(diff(t));    % sampling interval
Fs = 1/Ts;             % sampling frequency
N  = length(v);

% -------- Windowing (important) --------
w = hann(N);
v_win = v .* w;

% -------- FFT --------
Vf = fft(v_win);
Vf = Vf(1:floor(N/2));     % single-sided spectrum

f = (0:length(Vf)-1) * (Fs/N);

% -------- Normalize magnitude --------
Vmag = abs(Vf);
Vmag = Vmag / max(Vmag);

% -------- Plot --------
figure;
plot(f/1e9, Vmag, 'LineWidth', 1.2);
grid on;
xlabel('Frequency (GHz)');
ylabel('Normalized Magnitude');
title('PLL Output Spectrum (FFT from Cadence Samples)');
xlim([0 25]);   % adjust if needed

% -------- Report peak frequency --------
[~, idx] = max(Vmag);
fprintf('Locked Frequency ≈ %.3f GHz\n', f(idx)/1e9);
