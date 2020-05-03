clc
clear all
close all

%% Info

% Author: Przemyslaw Kurzak
% Contact: przemyslawkurzak732@gmail.com
% File: Narysuj wykres z pliku txt
% Info: Pamietaj, by plik z matlaba byl w tej samej sciezce co pliki txt!
% Subject: Pomiary biomedyczne i technologiczne         

%% Input Data

data1 = importdata('metanol_08_1.txt');  
data2 = importdata('metanol_08_2.txt');
data3 = importdata('metanol_08_3.txt');

%% Calculations

sizeData = 100;                         
x = (0:1:sizeData-1);                  

y1 = data1(1,:);                          
y2 = data2(1,:);
y3 = data3(1,:);              

%% Plot

figure, hold on
    plot(x,y1,x,y2,x,y3);
    grid on;
    legend({'metanol-08-1','metanol-08-2','metanol-08-3'});
    xlabel('Czas [s]');
    ylabel('Napiêcie detektora [V]');
    