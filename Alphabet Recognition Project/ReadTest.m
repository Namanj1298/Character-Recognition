
%% For ALL

myFolder = 'C:\Users\hp\Desktop\Machine Learning\Number Recognition Project\Test Set\Final Test Set'
filePattern = fullfile(myFolder, '*.jpg');
jpgFiles = dir(filePattern);

m = length(jpgFiles);
X = zeros(m, 400);


for k = (1):(m)
  baseFileName = jpgFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(fullFileName);
  gray = rgb2gray(imageArray);
  img = imresize(gray, [20 20]);
  
  X(k,:) = img(:)';
  
  imshow(gray);  % Display image.
  drawnow; % Force display to update immediately.
end

clear baseFileName
clear filePattern
clear fullFileName
clear gray
clear imageArray
clear img
clear jpgFiles
clear k
clear m
clear myFolder


save 'testData.mat';
