function lights(Red, Yellow, Green) %Makes this code(file) a function to be called in a different script
%catherine edited 211212

%This code builds a traffic light.

close all;
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;

t=0:0.001:4; %defines y axis range for the rectangles/traffic lights

% Define dark gray colors - color when a light is off.
darkGray = [0.2, 0.2, 0.2];
%%
% Define the green, yellow, and red lamp colors.
% Colors need to be in the range 0-1, so values are divided by 255.
green = [0, 132, 80] / 255; %this needs to be changed to [0,0.52,0.31]
yellow = [239, 183, 0] / 255; %[0.94,0.72,0]
red = [184, 29, 19] / 255; %[0.72,0.11,0.07]

%% %this creates a traffic light in top left subplot
t1=rectangle('Position', [0 0 2 4], 'Curvature', 0.2, 'FaceColor', 'k');
axis equal;
hold on;
subplot(2,2,1); %plot(t,t1)
title('Light 1, topleft');

%red, yellow, green true if statements
if Red == 1
    pos = [0.5 2.75 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', red);
    xlabel('STOP!','FontSize', 18,'FontWeight','bold');

elseif Yellow == 1
    pos = [0.5 1.5 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', yellow);
    xlabel('CAUTION!','FontSize', 18,'FontWeight','bold');

elseif Green == 1
    pos = [0.5 0.25 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', green);
    xlabel('GO!','FontSize', 18,'FontWeight','bold');

end

xlim([-0.5, 2.5]);
ylim([-0.5, 4.5]);
set(gca,'xtick',[]) %Removes the x axis
set(gca,'ytick',[]) %Removes the y axis

title('Traffic Light', 'FontSize', 24); %Adds title to figure

%% %this creates a traffic light in top right subplot
t2=rectangle('Position', [0 0 2 4], 'Curvature', 0.2, 'FaceColor', 'k');
axis equal;
hold on;
pos2 = [0.5 2.75 1 1]; %this is the red light circle
rectangle('Position', pos2, 'Curvature',[1 1], 'FaceColor', darkGray)
pos2 = [0.5 1.5 1 1]; %yellow light circle
rectangle('Position', pos2, 'Curvature',[1 1], 'FaceColor', darkGray)
pos2 = [0.5 0.25 1 1]; %green light circle
rectangle('Position', pos2, 'Curvature',[1 1], 'FaceColor', darkGray)

subplot(2,2,2), plot(t,t2);
title('Light 2, topright');

%red, yellow, green true if statements
if Green == 1
    pos = [0.5 2.75 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', red);
    xlabel('STOP!','FontSize', 18,'FontWeight','bold');

elseif Yellow == 1
    pos = [0.5 1.5 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', yellow);
    xlabel('CAUTION!','FontSize', 18,'FontWeight','bold');

elseif Red == 1
    pos = [0.5 0.25 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', green);
    xlabel('GO!','FontSize', 18,'FontWeight','bold');

end

xlim([-0.5, 2.5]);
ylim([-0.5, 4.5]);
set(gca,'xtick',[]) %Removes the x axis
set(gca,'ytick',[]) %Removes the y axis

title('Traffic Light', 'FontSize', 24); %Adds title to figure


%% %this creates a traffic light in bottom left subplot
t3=rectangle('Position', [0 0 2 4], 'Curvature', 0.2, 'FaceColor', 'k');
axis equal;
hold on;
pos3 = [0.5 2.75 1 1]; %this is the red light circle
rectangle('Position', pos3, 'Curvature',[1 1], 'FaceColor', darkGray)
pos3 = [0.5 1.5 1 1]; %yellow light circle
rectangle('Position', pos3, 'Curvature',[1 1], 'FaceColor', darkGray)
pos3 = [0.5 0.25 1 1]; %green light circle
rectangle('Position', pos3, 'Curvature',[1 1], 'FaceColor', darkGray)

subplot(2,2,3), plot(t,t3);
title('Light 3, bottomleft');
%red, yellow, green true if statements
if Green == 1
    pos = [0.5 2.75 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', red);
    xlabel('STOP!','FontSize', 18,'FontWeight','bold');

elseif Yellow == 1
    pos = [0.5 1.5 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', yellow);
    xlabel('CAUTION!','FontSize', 18,'FontWeight','bold');

elseif Red == 1
    pos = [0.5 0.25 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', green);
    xlabel('GO!','FontSize', 18,'FontWeight','bold');

end

xlim([-0.5, 2.5]);
ylim([-0.5, 4.5]);
set(gca,'xtick',[]) %Removes the x axis
set(gca,'ytick',[]) %Removes the y axis

title('Traffic Light', 'FontSize', 24); %Adds title to figure

%% %this creates a traffic light in bottom right subplot
t4=rectangle('Position', [0 0 2 4], 'Curvature', 0.2, 'FaceColor', 'k');
axis equal;
hold on;
pos4 = [0.5 2.75 1 1]; %this is the red light circle
rectangle('Position', pos4, 'Curvature',[1 1], 'FaceColor', darkGray)
pos4 = [0.5 1.5 1 1]; %yellow light circle
rectangle('Position', pos4, 'Curvature',[1 1], 'FaceColor', darkGray)
pos4 = [0.5 0.25 1 1]; %green light circle
rectangle('Position', pos4, 'Curvature',[1 1], 'FaceColor', darkGray)

subplot(2,2,4), plot(t,t4);
title('Light 4, bottomright');

sgtitle('4 Way Intersection');

% % Make the background as a rounded rectangle with pure black ('k') color.
rectangle(...
    'Position', [0 0 2 4], ...
    'Curvature', 0.2, ...
    'FaceColor', 'k');
axis equal;
hold on;

%% % Put up the three dark gray "off" lights.
%left number is the position of the left of the circles
%middle number is the position of the bottom of the circles
pos = [0.5 2.75 1 1]; %red light circle
rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', darkGray)
pos = [0.5 1.5 1 1]; %yellow light circle
rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', darkGray)
pos = [0.5 0.25 1 1]; %green light circle
rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', darkGray)
%this creates circles for bottom right subplot for some reason

%red, yellow, green true if statements
if Red == 1
    pos = [0.5 2.75 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', red);
    xlabel('STOP!','FontSize', 18,'FontWeight','bold');

elseif Yellow == 1
    pos = [0.5 1.5 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', yellow);
    xlabel('CAUTION!','FontSize', 18,'FontWeight','bold');

elseif Green == 1
    pos = [0.5 0.25 1 1];
    rectangle('Position', pos, 'Curvature',[1 1], 'FaceColor', green);
    xlabel('GO!','FontSize', 18,'FontWeight','bold');

end

xlim([-0.5, 2.5]);
ylim([-0.5, 4.5]);
set(gca,'xtick',[]) %Removes the x axis
set(gca,'ytick',[]) %Removes the y axis

title('Traffic Light', 'FontSize', 24); %Adds title to figure

end