function h = fileList_faceLearning_matcha(varargin)
%
% headers = filelist_faceLearning
%
% Returns a cell array of headers for faceLearning project.
% Optional input arguments may be used in combination:
%
% To print the filelist to screen:
% h = filelist_faceLearning('v');
%
% To return only stimscreen headers:
% h = filelist_faceLearning('s');
%
% To return only learningTask headers:
% h = filelist_faceLearning('f');
%
% To return only one trial per day (the first one collected):
% h = filelist_faceLearning('d');
%
% To return list with the same channels across all days:
% h = filelist_faceLearning('l');
%
% last modified 5-13-16
% apj

if ~isempty(varargin)
    option          = lower(cell2mat(varargin));
    %%% verbose
    if ~isempty(strfind(option,'v'));
        verbose     = 1;
    else
        verbose     = 0;
    end
    %%% stimscreen only
    if ~isempty(strfind(option,'s'));
        ssOnly      = 1;
    else
        ssOnly      = 0;
    end
    %%% faceLearning only
    if ~isempty(strfind(option,'f'));
        rdOnly      = 1;
    else
        rdOnly      = 0;
    end
    %%% only the first file of each day
    if ~isempty(strfind(option,'d'));
        onePerDay   = 1;
    else
        onePerDay   = 0;
    end
    %%% return same channels across all days
    if ~isempty(strfind(option,'l'));
        long        = 1;
    else
        long        = 0;
    end
    %%% return list of original (un-concatenated) files
    if ~isempty(strfind(option,'o'));
        orig        = 1;
    else
        orig        = 0;
    end
    
else
    verbose         = 0;
    ssOnly          = 0;
    rdOnly          = 0;
    onePerDay       = 0;
    long            = 0;
    orig            = 0;
end
if (rdOnly==1)&&(ssOnly==1)
    error('Invalid option: both S and R not allowed.')
end

n                   = 0;

if orig
    
    n                   = n+1;
    h{n}                = initFaceLearningHeader('stimscreen');
    h{n}.filename       = 'matcha20151110';
    h{n}.src.tank       = 'matcha20151110';
    h{n}.src.block      = 'c';
    h{n}.src.kenji      = 'PView1';
    h{n}.src.spike      = 'cde';
    h{n}.chan           = 1:64;
    
    n                   = n+1;
    h{n}                = initFaceLearningHeader('stimscreen');
    h{n}.filename       = 'matcha20151110';
    h{n}.src.tank       = 'matcha20151110';
    h{n}.src.block      = 'd';
    h{n}.src.kenji      = 'PView2';
    h{n}.src.spike      = 'cde';
    h{n}.chan           = 1:64;
    
    n                   = n+1;
    h{n}                = initFaceLearningHeader('stimscreen');
    h{n}.filename       = 'matcha20151110';
    h{n}.src.tank       = 'matcha20151110';
    h{n}.src.block      = 'e';
    h{n}.src.kenji      = 'PView3';
    h{n}.src.spike      = 'cde';
    h{n}.chan           = 1:64;
    
else
    
    n                   = n+1;
    h{n}                = initFaceLearningHeader('stimscreen');
    h{n}.filename       = 'matcha20151110';
    h{n}.src.tank       = 'matcha20151110';
    h{n}.src.block      = 'a';
    h{n}.src.spike      = 'a';
    h{n}.chan           = 1:64;
    
end

lastTank            = 'nothing';

for n=1:length(h)
    k               = strfind(h{n}.src.spike, h{n}.src.block);
    h{n}.session    = k;
    expt(n)         = isequal(h{n}.expt(1),'s'); % 1 if stimscreen
    newTank(n)      = ~isequal(h{n}.src.tank,lastTank);
    lastTank        = h{n}.src.tank;
end

if ~isempty(varargin)
    if long == 1;
        yar         = [];
        for n=1:length(h)
            yar     = cat(2,yar,h{n}.chan);
        end
        yar         = unique(yar);
        for n = 1:length(h)
            h{n}.chan = yar;
        end
    end
    
    ss              = find(expt==1);
    rd              = find(expt==0);
    if (ssOnly)
        h(rd)       = [];
        newTank(rd) = [];
    elseif (rdOnly)
        h(ss)       = [];
        newTank(ss) = [];
    end
    
    dd = newTank==0;
    if (onePerDay)
        h(dd)       = [];
    end
    
    if (verbose)
        for n = 1:length(h)
            sprintf([num2str(h{n}.session) '. ' h{n}.filename ' ' h{n}.expt]);
        end
    end
    
end

