% Taxi Fare
% Code to call your function
fare = taxi_fare(3.5,2.25)

% Function
function fare = taxi_fare(d_km,t_m)
    d_km = ceil(d_km);
    t_m  = ceil(t_m);
    fare = t_m*0.25 + (d_km-1)*2+5;
end
