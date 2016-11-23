function h= fileList_faceLearning_rhombus(varargin)
%
% headers = filelistfaceLearning(varargin)
%
% Returns a cell array of headers for faceLearning project.
% Optional input arguments may be used in combination:
%
% To print the filelist to screen:
% h = filelistfaceLearning('v');
%
% To return only stimscreen headers:
% h = filelistfaceLearning('s');
%
% To return only learningTask headers:
% h = filelistfaceLearning('f');
%
% To return only one trial per day (the first one collected):
% h = filelistfaceLearning('d');
%
% To return list with the same channels across all days:
% h = filelistfaceLearning('l');
%
% last modified 5-30-16
% apj
   
if ~isempty(varargin)
    option = lower(varargin{1});
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
        long = 0;
    end

else
    verbose         = 0;
    ssOnly          = 0;
    rdOnly          = 0;
    onePerDay       = 0;
    long            = 0;
end

n                   = 0;

% % n = n+1;
% % h{n} = initFaceLearningHeader('stimscreen');
% % h{n}.filename = 'rhombus20140619b'; 
% % h{n}.src.tank = 'rhombus20140619';
% % h{n}.src.block = 'b';
% % h{n}.src.spike = 'b';
% % h{n}.chan = [65:128];
% 
% n = n+1;
% h{n} = initFaceLearningHeader('stimscreen');
% h{n}.filename = 'rhombus20140621a'; 
% h{n}.src.tank = 'rhombus20140621';
% h{n}.src.block = 'a';
% h{n}.src.spike = 'a';
% h{n}.chan = [65:128];
% 
% % n = n+1;
% % h{n} = initFaceLearningHeader('stimscreen');
% % h{n}.filename = 'rhombus20140621b'; 
% % h{n}.src.tank = 'rhombus20140621';
% % h{n}.src.block = 'b';
% % h{n}.src.spike = 'b';
% % h{n}.chan = [65:128];
% 
% n = n+1;
% h{n} = initFaceLearningHeader('stimscreen');
% h{n}.filename = 'rhombus20140622a'; 
% h{n}.src.tank = 'rhombus20140622';
% h{n}.src.block = 'a';
% h{n}.src.spike = 'a';
% h{n}.chan = [65:128];
% 
% n = n+1;
% h{n} = initFaceLearningHeader('stimscreen');
% h{n}.filename = 'rhombus20140729a'; 
% h{n}.src.tank = 'rhombus20140729';
% h{n}.src.block = 'a';
% h{n}.src.spike = 'a';
% h{n}.chan = [65:128];

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150321'; 
h{n}.src.tank       = 'rhombus20150321';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150329'; 
h{n}.src.tank       = 'rhombus20150329';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150331'; 
h{n}.src.tank       = 'rhombus20150331';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150404'; 
h{n}.src.tank       = 'rhombus20150404';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150405'; 
h{n}.src.tank       = 'rhombus20150405';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150412'; 
h{n}.src.tank       = 'rhombus20150412';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150414'; 
h{n}.src.tank       = 'rhombus20150414';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

n                   = n+1;
h{n}                = initFaceLearningHeader('stimscreen');
h{n}.filename       = 'rhombus20150417'; 
h{n}.src.tank       = 'rhombus20150417';
h{n}.src.block      = 'a';
h{n}.src.kenji      = 'PView1';
h{n}.src.spike      = 'a';
h{n}.chan           = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117]; 

lastTank            = 'nothing';
for n=1:length(h)
    h{n}.session    = n;
    expt(n)=isequal(h{n}.expt(1),'s'); % 1 if stimscreen
    newTank(n)      = ~isequal(h{n}.src.tank,lastTank);
    lastTank        = h{n}.src.tank;
end

if long == 1;
    yar             = [];
    for n = 1:length(h)
        yar         = cat(2,yar,h{n}.chan);
    end
    yar             = unique(yar);
    for n = 1:length(h)
        h{n}.chan   = yar;
    end
end
   
ss                  = find(expt==1);
rd                  = find(expt==0);
if (ssOnly)
    h(rd)           = [];
    newTank(rd)     = [];
elseif (rdOnly)
    h(ss)           = [];
    newTank(ss)     = [];
end

if (onePerDay)
    h(newTank==0)   = [];
end

if (verbose)
    for n=1:length(h)
        disp([num2str(h{n}.session) '. ' h{n}.filename ' ' h{n}.expt]);
    end
end

