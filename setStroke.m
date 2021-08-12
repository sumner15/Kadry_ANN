function [hstat,eta] = setStroke(P)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: Ashraf Kadry
% function [bh_noise,wh_noise,wo_noise,hstat,eta] = setStroke(P)
% 
% inputs:
% P - a parameter structure for the model (see MAIN).
% 
% outputs: 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialize
hstat = P.Nstatus; % Original hidden neurons status

% Creating stroke (how many of the focal neurons are knocked out)
nIstroke = ceil(P.stroke*P.nInhibit);
nFstroke = ceil(P.stroke*P.nFocal-nIstroke);
nRstroke = round(P.stroke*P.nRS);

if P.stroke == 0
else
    % Index of neurons affected by stroke
    strokeIndsF1 = P.nFocal-nFstroke+1:P.nFocal;
    strokeIndsF2 = P.N-P.nFocal+1:P.N-P.nFocal+nFstroke;
    strokeIndsI1 = 1:nIstroke;
    strokeIndsI2 = P.N-nIstroke+1:P.N;
    strokeIndsRS = ceil(P.nFocal+(P.nRS-nRstroke)/2):floor(P.nFocal+(P.nRS+nRstroke)/2);
    % Update hidden neurons status, clear to zero
    % Focal removed
    hstat(1,strokeIndsF1) = 0;
    hstat(1,strokeIndsF2) = 0;
    hstat(1,strokeIndsI1) = 0;
    hstat(1,strokeIndsI2) = 0;
    % RS removed
    hstat(1,strokeIndsRS) = 0;
    % new learning ratio affected by stroke
    eta = (1-P.stroke)*P.eta;
end
