function [time, th] = partice_angle(p1, p2)
% return the angle (th) from the line between the particle
% centres and the vertical 

if nargin == 0
    p1 = 0;
    p2 = 1; 
end

p1_file = sprintf('mobile_%d', p1);
p2_file = sprintf('mobile_%d', p2);
p1_data = check_read_dat(p1_file);
p2_data = check_read_dat(p2_file);

time = p1_data.time;

dh = sqrt( (p1_data.x - p2_data.x).^2 + (p1_data.z - p2_data.z).^2 );
dy = p1_data.y - p2_data.y;

th = atand(dh ./ dy);

%Dmat = FiniteDiff(time,1,2,true,false);
%sep_vel = Dmat * sep;
