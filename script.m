inDirName = '../input/train';
outDirName = '../output';

files = dir(inDirName);
numFiles = length(files);

for k = 3:numFiles
    currName = files(k).name;
    currFile = fullfile(files(k).folder, currName);
    im = main(currFile);
    close all
    outFile = fullfile(outDirName, currName);
    imwrite(im, outFile);
end
