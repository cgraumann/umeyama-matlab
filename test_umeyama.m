%TEST_UMEYAMA Simple script to test the umeyama implementation
%
% This script creates a homogenous point cloud and transforms it randomly.
% The umeyama function is used to find a back transformation.
% The script can be used to test the performance of the method.
%
% Author: Christoph Graumann, 2015
%   Chair for Computer Aided Medical Procedures and Augmented Reality
%   Technische Universitaet Muenchen (Munich, Germany) and 
%   Johns Hopkins University (Baltimore, MD, USA)

%% Clear
close all;
clear;
clc;

%% Definitions
gridSize = 1 + 2*randi([10 100]); % random odd number

%% Generate surface
range = -gridSize:2:gridSize;
[X,Y] = meshgrid(range,range);
Z =  -(0.003.*X.^2 + 0.003.*Y.^2)+gridSize/2;
points = [X(:),Y(:),Z(:)]';

%% Transform surface
R = rotz(randi(360))*roty(randi(360))*rotx(randi(360));
t = [randi(1000); randi(1000); randi(1000)];
points_trans = R*points + repmat(t,1,size(points,2));

%% Test Umeyama
[R_res, t_res] = umeyama(points_trans,points,true);