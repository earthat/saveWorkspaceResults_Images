%% create directory to store the results

d=num2str(clock);
d(isspace(d))=[];
if ~exist('Results','dir')
    mkdir('Results')
end
mkdir(['Results/',d])

%% save workspace results

filename=['results_',d];
save(['Results/',d,'/',filename,'.mat'])

%% save the image
saveimage_publish(['Results/',d,'/','Image name'])
