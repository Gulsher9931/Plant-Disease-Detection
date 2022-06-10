
clc 
clear all

srcFiles = dir('C:\Users\user\Desktop\Final Year Project\Dataset\Croped_Dataset\Unhealthy_Images\*.jpg');  % the folder in which ur images exists
Features = cell(length(srcFiles),1) ;
Valid_points = cell(length(srcFiles),1) ;
Scale_Avg = cell(length(srcFiles),1);
Orientation_Avg = cell(length(srcFiles),1);
Metric_Avg = cell(length(srcFiles),1);

for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\user\Desktop\Final Year Project\Dataset\Croped_Dataset\Unhealthy_Images\',srcFiles(i).name);
    L1 = rgb2gray(imread(filename));
    I1 = imresize(L1,[1024,1024]); %Image Size
    points1 = detectSURFFeatures(I1);
    [features1, valid_points1] = extractFeatures(I1, points1);
    Features{i} = features1 ;
    Valid_points{i} = valid_points1 ;
    Scale_Avg{i} = mean(Valid_points{i,1}.Scale);
    Orientation_Avg{i} = mean(Valid_points{i,1}.Orientation);
    Metric_Avg{i} = mean(Valid_points{i,1}.Metric);
    %figure; imshow(I1);hold on;
    %plot(valid_points1{i}.selectStrongest(10),'showOrientation',true);
end