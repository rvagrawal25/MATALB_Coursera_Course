function output = echo_gen(input,Fs,delay,amp)
dt = 1/Fs;
start_index = round(delay/dt)+1;
for ii = 1:length(input)
    y_echo(start_index+ii-1) = amp.*input(ii);
end
if length(y_echo)>length(input)
    y = [input;zeros(length(y_echo)-length(input),1)];
else
    y = input;
end
output = y + y_echo';
for jj = 1:length(output)
    if abs(output(jj))>1
        if abs(min(output)) <= abs(max(output))
            output = output./abs(max(output));
        elseif abs(min(output)) > abs(max(output))
            output = output./abs(min(output));
        end
    end
end