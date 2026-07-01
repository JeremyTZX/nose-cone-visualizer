clc; clear; close all;
% Nose Cone Visualizer
% Author: Jeremy Tan Zi Xiang
% Created: 3 Dec 2025

% --------------------------------------------User inputs-------------------------------------------------
%---------------------------------------------------------------------------------------------------------

raw_data=readtable("nosecone_inputs_batch.xlsx",'Range','A:D');
isdata= ~isnan(raw_data.D_base);
data=raw_data(isdata,:);
disp(data)

d = data.D_base;   % [m] base diameter of nose cone
s = data.r_S;    % [N/A] slenderness of the nose cone 
ncs_choice= data.nc_shape;   % [N/A] nose cone shape 

%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------


% Calculate nose cone height ----------------------------------------------
h=s.*d./2;                   % [m] height of nose cone in meters

% Setup 3D grid -----------------------------------------------------------
% resolution of nose cone
xy_pt= 150;        % number of points around the base of the nose cone (on x,y place)
z_pt= 150;         % number of points along the z-axis

% create vectors for base (x,y plane) and height (z-axis)
theta=linspace(0,2*pi,xy_pt);       % assigns a point to each angle based on xy_pt

% Compute radius profile of nose cone -------------------------------------
% compute the change in radius as height changes for each nose cone shape
R=d./2;      % [m] R - base radius of nose cone

rProfle=zeros(length(data.D_base));
for i = 1:length(data.D_base)

    z=linspace(0,h(i),z_pt);    % assigns a point to each height based on z_pt

    [Z TH]=meshgrid(z,theta);   % generates a 2D grid to plot on

    switch ncs_choice(i)
        case 1  % Conical
            % Changed rProf(i) to rProf, and h to h(i)
            rProf = R(i) * (1 - Z./h(i));  
            
        case 2  % Parabolic
            rProf = R(i) * (1 - (Z./h(i)).^2);  
            
        case 3  % Ogive
            rProf = R(i) * sqrt(1 - (Z./h(i)).^2);  
    end
% Convert polar coordinates to Cartesian coordinates for plotting ---------
    X = rProf .* cos(TH);       
    Y = rProf .* sin(TH);

% Plot surface ------------------------------------------------------------
    figure(i);
    surf(X,Y,Z)
    axis equal
    axis vis3d
    rotate3d on
    xlabel('x [m]')
    ylabel('y [m]')
    zlabel('z / height [m]')
end
