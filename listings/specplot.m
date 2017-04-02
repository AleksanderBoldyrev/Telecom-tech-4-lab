function y = specplot(s, Fs)
S = fft(s);                                     % расчет ДПФ
S_amp = abs(S(1:round(length(s)/2)+1));         % амплитудный спектр
f = [0:length(S_amp)-1]*Fs/length(S_amp)/2;     % частоты
w = 2*pi.*f;                                    % преобразуем частоты в рад/c
plot(w, S_amp);                                 % график спектра
title('Cпектр сигнала');                        % заголовок графика
xlabel('\omega (рад/c)');                       % подпись к оси X
ylabel('|S(\omega)|');                          % подпись к оси Y
% SPECPLOT рисует график спектра сигнала.
%
% specplot(s, Fs) рисует график спектра сигнала s, отсчеты которого взяты
% с частотой дискретизации Fs (Гц).
end