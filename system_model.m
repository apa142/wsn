%% Aditya Pathak, adityapathak1515@gmail.com
%function sensor_network = system_model(x)  %uncomment to create a function 
%Simple Example of generating the nodes in MATLAB.
%Here is example to create node manually in MATLAB.
clc;
clear all;
close all;
BeconX=400;
BeconY=400; 
%axis on; 
%gcf;
hold on;
hbecon=plot(BeconX,BeconY,'s'); 
set(hbecon,'color','red','LineWidth',19);
%Basic part of code is to randomly place the sensor nodes in the given
%space then connecting each two nodes if the distance between them less than or equal to the communication radius.
% clear;
noOfNodes = 100;
%rand('state', 6);
figure(1);
clf;
hold on;
L = 400;
R = 50; % maximum range in meters;
netXloc = rand(1,noOfNodes)*L;
netYloc = rand(1,noOfNodes)*L;
for i = 1:noOfNodes
    plot(netXloc(i), netYloc(i), '.');
    text(netXloc(i), netYloc(i), num2str(i));
        for j = 1:noOfNodes
        distance = sqrt((netXloc(i) - netXloc(j))^2 + (netYloc(i) - netYloc(j))^2);
        if distance <= R
            matrix(i, j) = 1;  % there is a link;
            line([netXloc(i) netXloc(j)], [netYloc(i) netYloc(j)], 'LineStyle', '-');
            nbr(i,j) = 1; %neighbour link;
           % disp(nbr(i,j));
        else
            matrix(i, j) = inf;
        end
        end
end