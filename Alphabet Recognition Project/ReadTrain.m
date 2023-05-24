
myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\All Digits';
filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);
total = length(jpgFiles);

X = ones(total, 400);
y = zeros(total, 1);
index = 0;

%% For Zero

myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\0';

filePattern = fullfile(myFolder, '*.png');
jpgFiles = dir(filePattern);

m = length(jpgFiles);



for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 10;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;

%% For 1


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\1';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 1;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;
%% For 2


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\2';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 2;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end
index = index+m;
%% For 3


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\3';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 3;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end
index = index+m;
%% For 4


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\4';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 4;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end
index = index+m;
%% For 5


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\5';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 5;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end
index = index+m;

%% For 6


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\6';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 6;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;
%% For 7


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\7';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 7;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;
%% For 8


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\8';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 8;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;

%% For 9


myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Raw Data\9';

filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);

for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(index+k,:) = img(:)';
  y(index+k,1) = 9;
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

index = index+m;

clear baseFileName;
clear filePattern;
clear fullFileName;
clear gray;
clear imagearray;
clear img;
clear jpgFiles;
clear k;
clear m;
clear myFolder;
clear n;
clear o;
clear p;
clear q;
clear r;
clear s;
clear t;
clear u;
clear v;
clear imageArray;


save 'trainData.mat'

