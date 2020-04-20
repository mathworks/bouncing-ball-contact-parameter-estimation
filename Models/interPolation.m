%% Ball trajectory interpolation
% Copyright 2020 The MathWorks, Inc.

%% load data
load('experimentdata.mat')
timeint = 0:0.01:2.46;
exptimea = exptimea(2:end)-exptimea(2);
expx     = expx(2:end);
expy     = expy(2:end);

%% Scale y data
% The data captured from the camera was scaled to realistic data by comparing it with the projectile motion equation.
sFactor = 0.8344;
expy = sFactor*expy;

%% data interpolation
yint = interp1(exptimea,expy,timeint,'makima');
xint = interp1(exptimea,expx,timeint,'makima');

%% plot data
% Reuse figure if it exists, else create new figure
if ~exist('h1_ball_trajectory', 'var') || ...
        ~isgraphics(h1_ball_trajectory, 'figure')
    h1_ball_trajectory = figure('Name', 'ball_trajectory');
end
figure(h1_ball_trajectory)
clf(h1_ball_trajectory)

plot(exptimea,expx,'o',timeint,xint,':.')
xlabel('Time (s)')
ylabel('X Trajectory(m)')
legend({'Extracted From Video','Interpolated'},'Location','Best');
title('Ball Lateral Displacement');
grid on

if ~exist('h2_ball_trajectory', 'var') || ...
        ~isgraphics(h2_ball_trajectory, 'figure')
    h2_ball_trajectory = figure('Name', 'ball_trajectory');
end
figure(h2_ball_trajectory)
clf(h2_ball_trajectory)
plot(exptimea,expy,'o',timeint,yint,':.')
xlabel('Time (s)')
ylabel('Y Trajectory (m)')
title('Ball Height');
legend({'Extracted From Video','Interpolated'},'Location','Best');
grid on