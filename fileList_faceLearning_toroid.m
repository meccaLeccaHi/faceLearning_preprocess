function h = fileList_faceLearning_toroid(varargin)
%
% headers = filelistfaceLearning
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
% Example of usage:
% h = filelistfaceLearning;
% chan = 65;
% makeBinFile(rawdatapath,h{index},chan);
%
% last modified 12-08-15
% apj

if ~isempty(varargin)
    option = lower(char(varargin{1}));
    %%% verbose
    if ~isempty(strfind(option,'v'));
        verbose = 1;
    else
        verbose = 0;
    end
    %%% stimscreen only
    if ~isempty(strfind(option,'s'));
        ssOnly = 1;
    else
        ssOnly = 0;
    end
    %%% faceLearning only
    if ~isempty(strfind(option,'f'));
        rdOnly = 1;
    else
        rdOnly = 0;
    end
    %%% only the first file of each day
    if ~isempty(strfind(option,'d'));
        onePerDay = 1;
    else
        onePerDay = 0;
    end
    %%% return same channels across all days
    if ~isempty(strfind(option,'l'));
        long = 1;
    else
        long = 0;
    end
    
else
    verbose = 0;
    ssOnly = 0;
    rdOnly = 0;
    onePerDay = 0;
    long = 0;
end
if (rdOnly==1)&&(ssOnly==1)
    error('Invalid option: both S and R not allowed.')
end

n=0;

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130521';
h{n}.src.tank = 'toroid20130521';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 67 68 69 70 71 73 76 77 78 79  ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 121 122 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130522';
h{n}.src.tank = 'toroid20130522';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 67 68 69 70 71 76 77 78  ...
%              93 94 97 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 121 122 124 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130523';
h{n}.src.tank = 'toroid20130523';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 67 68 69 70 71 72 73 76 77 78 79 ...
%              93 94 97 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 123 124 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130524';
h{n}.src.tank = 'toroid20130524';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 72 76 77 78 79 ...
%              93 94 97 ...
%              105 109 110 111 112 ...
%              113 114 116 117 118 119 122 123 124 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130525';
h{n}.src.tank = 'toroid20130525';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 72 73 76 77 78 79 ...
%              93 94 97 ...
%              105 109 110 111 ...
%              113 116 117 118 119 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130526';
h{n}.src.tank = 'toroid20130526';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 72 76 77 78 79 ...
%              93 94 97 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130527';
h{n}.src.tank = 'toroid20130527';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 72 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130528';
h{n}.src.tank = 'toroid20130528';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130529';
h{n}.src.tank = 'toroid20130529';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130530';
h{n}.src.tank = 'toroid20130530';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 97 ...
%              105 109 110 111 ...
%              113 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130531';
h{n}.src.tank = 'toroid20130531';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              81 93 94 97 ...
%              105 109 110 111 ...
%              113 115 116 117 118 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130601';
h{n}.src.tank = 'toroid20130601';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 75 76 77 78 79 ...
%              81 93 94 97 ...
%              105 109 111 ...
%              113 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130602';
h{n}.src.tank = 'toroid20130602';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              81 93 94 ...
%              105 109 111 ...
%              113 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130603';
h{n}.src.tank = 'toroid20130603';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 123 124 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130604';
h{n}.src.tank = 'toroid20130604';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 76 77 78 79 ...
%              81 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 123 124 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130605';
h{n}.src.tank = 'toroid20130605';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 112 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130606';
h{n}.src.tank = 'toroid20130606';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 112 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130607';
h{n}.src.tank = 'toroid20130607';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130608';
h{n}.src.tank = 'toroid20130608';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              81 94 ...
%              105 109 110 111 ...
%              113 114 115 116 117 118 119 120 121 123 126 128];

%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % face learning phase

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130610';
h{n}.src.tank = 'toroid20130610';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 121 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130610';
h{n}.src.tank = 'toroid20130610';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 121 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130611';
h{n}.src.tank = 'toroid20130611';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130611';
h{n}.src.tank = 'toroid20130611';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130612';
h{n}.src.tank = 'toroid20130612';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130612';
h{n}.src.tank = 'toroid20130612';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130613';
h{n}.src.tank = 'toroid20130613';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130613';
h{n}.src.tank = 'toroid20130613';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130614';
h{n}.src.tank = 'toroid20130614';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130614';
h{n}.src.tank = 'toroid20130614';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130615';
h{n}.src.tank = 'toroid20130615';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130615';
h{n}.src.tank = 'toroid20130615';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130616';
h{n}.src.tank = 'toroid20130616';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130616';
h{n}.src.tank = 'toroid20130616';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130617';
h{n}.src.tank = 'toroid20130617';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130617';
h{n}.src.tank = 'toroid20130617';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130618';
h{n}.src.tank = 'toroid20130618';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130618';
h{n}.src.tank = 'toroid20130618';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130619';
h{n}.src.tank = 'toroid20130619';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              97 105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130619';
h{n}.src.tank = 'toroid20130619';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              97 105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130620';
h{n}.src.tank = 'toroid20130620';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130620';
h{n}.src.tank = 'toroid20130620';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130622';
h{n}.src.tank = 'toroid20130622';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130622';
h{n}.src.tank = 'toroid20130622';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 121 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130623';
h{n}.src.tank = 'toroid20130623';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130623';
h{n}.src.tank = 'toroid20130623';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130624';
h{n}.src.tank = 'toroid20130624';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130624';
h{n}.src.tank = 'toroid20130624';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130625';
h{n}.src.tank = 'toroid20130625';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130625';
h{n}.src.tank = 'toroid20130625';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 112 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130626';
h{n}.src.tank = 'toroid20130626';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130626';
h{n}.src.tank = 'toroid20130626';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130627';
h{n}.src.tank = 'toroid20130627';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130627';
h{n}.src.tank = 'toroid20130627';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130628';
h{n}.src.tank = 'toroid20130628';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130628';
h{n}.src.tank = 'toroid20130628';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130629';
h{n}.src.tank = 'toroid20130629';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130629';
h{n}.src.tank = 'toroid20130629';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130630';
h{n}.src.tank = 'toroid20130630';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130630';
h{n}.src.tank = 'toroid20130630';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130701';
h{n}.src.tank = 'toroid20130701';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130701';
h{n}.src.tank = 'toroid20130701';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

% %missing dgz file
n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130702';
h{n}.src.tank = 'toroid20130702';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123];
%

% n = n+1;
% h{n} = initFaceLearningHeader('faceTraining');
% h{n}.filename = 'toroid20130702';
% h{n}.src.tank = 'toroid20130702';
% h{n}.src.block = 'b';
% h{n}.src.spike = 'ab';
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130704';
h{n}.src.tank = 'toroid20130704';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130704';
h{n}.src.tank = 'toroid20130704';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130705';
h{n}.src.tank = 'toroid20130705';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130705';
h{n}.src.tank = 'toroid20130705';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130708';
h{n}.src.tank = 'toroid20130708';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130708';
h{n}.src.tank = 'toroid20130708';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130709';
h{n}.src.tank = 'toroid20130709';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 116 117 118 119 122 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130709';
h{n}.src.tank = 'toroid20130709';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 116 117 118 119 122 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130711';
h{n}.src.tank = 'toroid20130711';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130711';
h{n}.src.tank = 'toroid20130711';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130712';
h{n}.src.tank = 'toroid20130712';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130712';
h{n}.src.tank = 'toroid20130712';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130714';
h{n}.src.tank = 'toroid20130714';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130714';
h{n}.src.tank = 'toroid20130714';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 128];

%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % Begin expertise phase
%
n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130719';
h{n}.src.tank = 'toroid20130719';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130719';
h{n}.src.tank = 'toroid20130719';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130720';
h{n}.src.tank = 'toroid20130720';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130720';
h{n}.src.tank = 'toroid20130720';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130721';
h{n}.src.tank = 'toroid20130721';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 ...
%              113 114 115 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130721';
h{n}.src.tank = 'toroid20130721';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 110 111 ...
%              113 114 115 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130722';
h{n}.src.tank = 'toroid20130722';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130722';
h{n}.src.tank = 'toroid20130722';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 110 111 ...
%              113 114 116 117 118 119 122 123 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130723';
h{n}.src.tank = 'toroid20130723';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130723';
h{n}.src.tank = 'toroid20130723';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123 125 126 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130724';
h{n}.src.tank = 'toroid20130724';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130724';
h{n}.src.tank = 'toroid20130724';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 115 116 117 118 119 123 125 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130725';
h{n}.src.tank = 'toroid20130725';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 120 123 125 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130725';
h{n}.src.tank = 'toroid20130725';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 120 123 125 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130727';
h{n}.src.tank = 'toroid20130727';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130727';
h{n}.src.tank = 'toroid20130727';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130728';
h{n}.src.tank = 'toroid20130728';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130728';
h{n}.src.tank = 'toroid20130728';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];
n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130729';
h{n}.src.tank = 'toroid20130729';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130729';
h{n}.src.tank = 'toroid20130729';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130731';
h{n}.src.tank = 'toroid20130731';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130731';
h{n}.src.tank = 'toroid20130731';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130802';
h{n}.src.tank = 'toroid20130802';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130802';
h{n}.src.tank = 'toroid20130802';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130803';
h{n}.src.tank = 'toroid20130803';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130803';
h{n}.src.tank = 'toroid20130803';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 123 124 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130806';
h{n}.src.tank = 'toroid20130806';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130806';
h{n}.src.tank = 'toroid20130806';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130807';
h{n}.src.tank = 'toroid20130807';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130807';
h{n}.src.tank = 'toroid20130807';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130809';
h{n}.src.tank = 'toroid20130809';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130809';
h{n}.src.tank = 'toroid20130809';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 123 124];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130810';
h{n}.src.tank = 'toroid20130810';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 124];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130810';
h{n}.src.tank = 'toroid20130810';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 124];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130812';
h{n}.src.tank = 'toroid20130812';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130812';
h{n}.src.tank = 'toroid20130812';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130815';
h{n}.src.tank = 'toroid20130815';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130815';
h{n}.src.tank = 'toroid20130815';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130816';
h{n}.src.tank = 'toroid20130816';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130816';
h{n}.src.tank = 'toroid20130816';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130818';
h{n}.src.tank = 'toroid20130818';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 67 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130818';
h{n}.src.tank = 'toroid20130818';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 67 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20130820';
h{n}.src.tank = 'toroid20130820';
h{n}.src.block = 'a';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

n = n+1;
h{n} = initFaceLearningHeader('faceTraining');
h{n}.filename = 'toroid20130820';
h{n}.src.tank = 'toroid20130820';
h{n}.src.block = 'b';
h{n}.src.spike = 'ab';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 122 123 125];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20131010';
h{n}.src.tank = 'toroid20131010';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              94 ...
%              105 109 111 ...
%              113 114 116 117 118 119 122 123 128];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20131128';
h{n}.src.tank = 'toroid20131128';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 73 76 77 78 79 ...
%              93 94 ...
%              105 109 111 ...
%              113 114 116 117 118 120 122 124 126 127];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20140323';
h{n}.src.tank = 'toroid20140323';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 69 70 71 73 76 77 78 79 ...
%              109 ...
%              113 114 115 116 117 118 120 122 123 126 127];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20140327';
h{n}.src.tank = 'toroid20140327';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 67 68 69 70 73 76 77 79 ...
%              109 ...
%              113 116 118 120 126];

n = n+1;
h{n} = initFaceLearningHeader('stimscreen');
h{n}.filename = 'toroid20140331';
h{n}.src.tank = 'toroid20140331';
h{n}.src.block = 'a';
h{n}.src.spike = 'a';
h{n}.chan = [65:82 93 94 96 99 105 109:128];
% h{n}.chan = [65 66 68 69 70 71 72 73 74 76 77 78 79 ...
%              94 ...
%              109 ...
%              113 115 116 118 120 122 124 128];

% %% new site
% 
% n = n+1;
% h{n} = initFaceLearningHeader('stimscreen');
% h{n}.filename = 'toroid20150622';
% h{n}.src.tank = 'toroid20150622';
% h{n}.src.block = 'b';
% h{n}.src.spike = 'b';
% h{n}.chan = [65:82 93 94 96 97 99 105 109:128];
% 
% n = n+1;
% h{n} = initFaceLearningHeader('stimscreen');
% h{n}.filename = 'toroid20150623';
% h{n}.src.tank = 'toroid20150623';
% h{n}.src.block = 'a';
% h{n}.src.spike = 'a';
% h{n}.chan = [65:82 93 94 96 97 99 105 109:128];
% 
% %% rhombus
% % 
% % % n = n+1;
% % % h{n} = initFaceLearningHeader('stimscreen');
% % % h{n}.filename = 'rhombus20140619';
% % % h{n}.src.tank = 'rhombus20140619';
% % % h{n}.src.block = 'b';
% % % h{n}.src.spike = 'b';
% % % h{n}.chan = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117];
% % 
% % 
% % n = n+1;
% % h{n} = initFaceLearningHeader('stimscreen');
% % h{n}.filename = 'rhombus20140621';
% % h{n}.src.tank = 'rhombus20140621';
% % h{n}.src.block = 'a';
% % h{n}.src.spike = 'a';
% % h{n}.chan = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117];
% % 
% % % n = n+1;
% % % h{n} = initFaceLearningHeader('stimscreen');
% % % h{n}.filename = 'rhombus20140621';
% % % h{n}.src.tank = 'rhombus20140621';
% % % h{n}.src.block = 'b';
% % % h{n}.src.spike = 'b';
% % % h{n}.chan = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117];
% % 
% % n = n+1;
% % h{n} = initFaceLearningHeader('stimscreen');
% % h{n}.filename = 'rhombus20140622';
% % h{n}.src.tank = 'rhombus20140622';
% % h{n}.src.block = 'a';
% % h{n}.src.spike = 'a';
% % h{n}.chan = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117];
% % 
% % n = n+1;
% % h{n} = initFaceLearningHeader('stimscreen');
% % h{n}.filename = 'rhombus20140729';
% % h{n}.src.tank = 'rhombus20140729';
% % h{n}.src.block = 'a';
% % h{n}.src.spike = 'a';
% % h{n}.chan = [65 67:69 73:77 82 83 87 88 90:92 94 95 98 100:102 108 109 112 117];

lastTank = 'nothing';

for n=1:length(h)
    h{n}.session = n;
    expt(n)=isequal(h{n}.expt(1),'s'); % 1 if stimscreen
    newTank(n) = ~isequal(h{n}.src.tank,lastTank);
    lastTank = h{n}.src.tank;
end

if ~isempty(varargin)
    if long == 1;
        yar = [];
        for n=1:length(h)
            yar = cat(2,yar,h{n}.chan);
        end
        yar = unique(yar);
        for n=1:length(h)
            h{n}.chan = yar;
        end
    end
    
    ss = find(expt==1);
    rd = find(expt==0);
    if (ssOnly)
        h(rd) = [];
        newTank(rd) = [];
    elseif (rdOnly)
        h(ss) = [];
        newTank(ss) = [];
    end
    
    dd = find(newTank==0);
    if (onePerDay)
        h(dd) = [];
    end
    
    if (verbose)
        for n=1:length(h)
            disp([num2str(h{n}.session) '. ' h{n}.filename ' ' h{n}.expt]);
        end
    end
    
end

