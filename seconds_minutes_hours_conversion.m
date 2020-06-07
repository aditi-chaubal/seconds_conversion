clear
clc
time_mins = 0;
time_hours = 0;
time_days = 0;
prompt = 'What is your time in seconds?';
user_secs = input(prompt);
time_mins = fix(user_secs/60);
time_secs = rem(user_secs,60);
if time_mins > 59 
    time_hours = fix(user_secs/3600);
    remainder_secs = user_secs - time_hours * 3600;
    time_mins = fix(remainder_secs/60);
    if time_hours > 23
       time_days = fix(user_secs/86400);
       step_3 = user_secs - time_days * 86400;
       time_hours = fix(step_3/3600);
       step_5 = step_3 - time_hours * 3600;
       time_mins = fix(step_5/60);
    end
end
fprintf('%d days, %d hours, %d minutes, %d seconds',time_days, time_hours, time_mins, time_secs) 