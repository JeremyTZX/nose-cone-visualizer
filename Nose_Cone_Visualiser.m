clc; clear; close all;

% User inputs--------------------------------------------------------------
d=input("Enter the base diameter of the nose cone (in): ");   % [in] base diameter of nose cone
disp("Nose cone slenderness ranges from 1-20 (1 is the least slender, 20 is extremely slender)")
s=input("Enter the slenderness ratio of the nose cone (1-20): ");    % [N/A] slenderness of the nose cone
    % data validation for slenderness ratio
s_datype_val=isa(s,"double");     
src=[1:20];
while s ~= any(src) && s_datype_val~=true;
    disp("invalid input")
    nct_choice=input("Enter a ratio between 1-20: ");
    s_datype_val=isa(s,"double");
end
    %----------------------------------------------------------------------
disp("Choose a  nose cone shape: ")
disp("  1. Conical")
disp("  2. Parabolic")
disp("  3. Ogive")
nct_choice=input("Select the nose cone shape by entering the number preceeding it (1, 2 or 3): ");   % nose cone shape
    % data validation for nose cone type
nct_datype_val=isa(nct_choice,"double");     
while nct_choice ~= 1 && nct_choice ~= 2 && nct_choice ~=3 && nct_datype_val~=true;
    disp("invalid input")
    nct_choice=input("Enter 1, 2, or 3: ");
    nct_datype_val=isa(nct_choice,"double");
end
    %----------------------------------------------------------------------

% Calculate nose cone height in inches ------------------------------------
h=s*d/2;                   % [in] height of nose cone in inches

% Convert height & diameter of nose cone to meters ------------------------
h = h * 0.0254;         % [m] height of nose cone
d = d * 0.0254;         % [m] diameter of nose cone

% Setup 3D grid -----------------------------------------------------------
% resolution of nose cone
xy_pt= 150;        % number of points around the base of the nose cone (on x,y place)
z_pt= 150;         % number of points along the z-axis

% create vectors for base (x,y plane) and height (z-axis)
theta=linspace(0,2*pi,xy_pt);       % assigns a point to each angle based on xy_pt
z=linspace(0,h,z_pt);               % assigns a point to each height based on z_pt

% create meshgrid
[Z TH]=meshgrid(z,theta);   % generates a 2D grid to plot on

% Compute radius profile of nose cone -------------------------------------
% compute the change in radius as height changes for each nose cone shape
R=d/2;      % [m] R - base radius of nose cone
switch nct_choice
    case 1  % Conical
        rProf = R * (1 - Z/h);  % radius profile for linear decrease in radius
    case 2  % Parabolic
        rProf = R * (1 - (Z/h).^2);  % radius profile for parabolic decrease in radius
    case 3  % Ogive
        rProf = R * sqrt(1-(Z/h).^2);  % radius profile for an ogive profile
end

% Convert polar coordinates to Cartesian coordinates for plotting ---------
X = rProf .* cos(TH);       
Y = rProf .* sin(TH);

% Plot surface ------------------------------------------------------------
figure;
surf(X,Y,Z)
axis equal
axis vis3d
rotate3d on
xlabel('x [m]')
ylabel('y [m]')
zlabel('z / height [m]')


    
