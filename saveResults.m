%% create directory to store the results

d=num2str(clock);
d(isspace(d))=[];
if ~exist('Results','dir')
    mkdir('Results')
end
mkdir(['Results/',d])

%-------------------------------------------------------------------
%% save workspace results

% use this section at the end of code

filename=['results_',d];
save(['Results/',d,'/',filename,'.mat'])

%-----------------------------------------------------------------------
%% save the image

% use this section under the plot function. 
%plot(x,y)
%title
%xlabel
%ylabel
saveimage_publish(['Results/',d,'/','Image name'])
