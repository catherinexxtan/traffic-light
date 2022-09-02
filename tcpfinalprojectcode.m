%tan, choi, pham final project code 211206
%% 
clear;
clc;

loopcounter = 0;

% if value > 1 && value <=100

while loopcounter == 0
    %%
    inputloop1=0;
    inputloop2=0;
    trafficvalue1=0;
    trafficvalue2=0;
    while inputloop1==0
        trafficvalue1 = input("Please enter a value 1-300: ");
        if (trafficvalue1 < 0 || trafficvalue1 > 300)
            inputloop1=0;            
            disp("Number is not between 1-300.")
        else
            inputloop1=1;
        end
    end
    while inputloop2==0
        trafficvalue2 = input("Please enter another value 1-300: ");
        if (trafficvalue2<0 || trafficvalue2>300)
            disp("Number is not between 1-300.")
            inputloop2=0;
        else
            inputloop2=1;
        end
    end
    totaltrafficvalue=trafficvalue1+trafficvalue2;
%%
    if (totaltrafficvalue > 0 && totaltrafficvalue <=250)
        %if user's total value is 0-250, the color is red
        Red=1; 
        Yellow=0;
        Green=0;
        lightcolor="red";
    elseif (totaltrafficvalue > 250 && totaltrafficvalue <=450)
        %if user's total value is 251-450, the color is yellow
        Red=0; 
        Yellow=1;
        Green=0;
        lightcolor="yellow";
    elseif (totaltrafficvalue > 450 && totaltrafficvalue <=600 )
        %if user's total value is 451-600, the color is green
        Red=0; 
        Yellow=0;
        Green=1;
        lightcolor="green";
    end
    
    if (totaltrafficvalue>0 && totaltrafficvalue <=600)    
    lights(Red, Yellow, Green); %calls the function file called "lights.m" and creates an image of a traffic light with lit up circles
        disp(newline + "Light color: " + lightcolor + newline); %displays light color based on user input
    else
    end
        loopcounter = input(newline + "Are you still driving?" + newline + "[0] Yes" + newline + "[1] No" +newline); %asks user if they wish to continue

end