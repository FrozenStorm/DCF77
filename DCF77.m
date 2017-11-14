close all
clear all
%% Bereiche
fa = 100;
ta = 1000/fa;

one_min = 170/ta; % ms / sampletime = samples
one_max = 230/ta;
zero_min = 80/ta;
zero_max = 130/ta;
nothing_max = 40/ta;

pause_short_min = (1000/ta-one_max);
pause_short_max = (1000/ta-zero_min);

pause_long_min = (2000/ta-one_max);
pause_long_max = (2000/ta-zero_min);

zero_time_sync = floor((pause_long_min+pause_short_max)/2);

%% Signal erzeugen
dcf_77 = [1,-1,1,0,2,0,1,0,2,0]
x = 0;
data_soll = 0;
for i = 1:length(dcf_77)
    if(dcf_77(i)==1) x = [x,ones(1,zero_max)];data_soll = [data_soll,0]; end
    if(dcf_77(i)==2) x = [x,ones(1,one_min)]; data_soll = [data_soll,1]; end
    if(dcf_77(i)==0) x = [x,zeros(1,pause_short_max)]; end
    if(dcf_77(i)==-1) x = [x,zeros(1,pause_long_min)]; end
end

figure
subplot(2,1,1)
plot(x)
xlabel('Zeit')
ylabel('Pegel')
axis([-1,length(x),0,1.1])
legend('DCF-77-Signal');

%% Kontinuierlicher Mittelwert bilden
mittelwert = [0,0];
count_zero_time = [0,0];
max_holder = [0,0];
sync = [0,0];
data = 0;;
for i = 2:length(x)
    %Übernehmen alter Werte
    sync(i) = sync(i-1);
    max_holder(i) = max_holder(i-1);
    mittelwert(i) = mittelwert(i-1);
    count_zero_time(i) = count_zero_time(i-1);
    
    % Mittelwert berechnen
    if(x(i)==1 && mittelwert(i)<one_max) mittelwert(i)=mittelwert(i)+1; end
    if(x(i)==0 && mittelwert(i)>0) mittelwert(i)=mittelwert(i)-1; end
    
    if(mittelwert(i)<=nothing_max)
        count_zero_time(i) = count_zero_time(i)+1;
        
        if((max_holder(i)>=one_min) && (max_holder(i)<=one_max))  end
        
        % Daten übernehmen
        if((max_holder(i)>=one_min) && (max_holder(i)<=one_max)) data = [data,1]; end
        if((max_holder(i)>=zero_min) && (max_holder(i)<=zero_max)) data = [data,0]; end
  
        max_holder(i) = 0;
        sync(i) = 0;
    else
        if(mittelwert(i)>max_holder(i))max_holder(i) = mittelwert(i); end
    end
    if(mittelwert(i)>=zero_min)
        if(count_zero_time(i)>=zero_time_sync) sync(i) = 1; end
        count_zero_time(i) = 0;
    end
end

%% Ausgabe
disp(data_soll(2:end));
disp(data(2:end));

subplot(2,1,2)
plot(mittelwert,'kx--')
hold all
stem(sync,'b')
plot(max_holder,'g')
plot(count_zero_time/10,'c--')

z = ones(1,length(x));
plot(z*one_max,'r')
plot(z*one_min,'r')
plot(z*zero_max,'k')
plot(z*zero_min,'k')

axis([-1,length(x),0,one_max+2])
xlabel('Zeit')
ylabel('Zählerwerte')
legend('mean','sync','max-holder','zero-time / 10','Wertebereich 1','','Wertebereich 0','');