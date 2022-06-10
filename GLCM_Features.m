%%
%% GRAYCOMATRIX FEATURES EXTRACTION
%%

clc
close all
clear all

Features = [0 0 0 0 0]; 
directory = 'C:\Users\user\Desktop\Final Year Project\Dataset\Croped_Dataset\Unhealthy_Images';
files = dir([directory '/*.jpg']);

for i=1:506
    
    I = imread([directory '/' files(i).name]);
    %figure, imshow(I); title('Original Image');

    img = imresize(I,[1024,1024]);
    %figure, imshow(I); title('Resized Image');

    Img = rgb2gray(img);
    %figure, imshow(img); title('Gray Image');

    glcms = graycomatrix(Img);
    stats = graycoprops(glcms,'Contrast Correlation Energy Homogeneity');

    Contrast = stats.Contrast;
    Features(i,1)=Contrast;

    Correlation = stats.Correlation;
    Features(i,2)=Correlation;

    Energy = stats.Energy;
    Features(i,3)=Energy;

    Entropy = entropy(I);
    Features(i,4)=Entropy;

    Homogeneity = stats.Homogeneity;
    Features(i,5)=Homogeneity;
    
end

%% Mean of Features
%%

% mean_of_contrast=mean(Features(:,1));
% mean_of_correlation=mean(Features(:,2));
% mean_of_enery=mean(Features(:,3));
% mean_of_entropy=mean(Features(:,4));
% mean_of_homogenity=mean(Features(:,5));

%h=histogram(mean_of_contrast);
%bar(mean_of_contrast,0.4)
% r=randn(300, 2);
% hist(r);

% b = [ mean_of_contrast_healthy mean_of_contrast_unhealthy;
%     mean_of_correlation_healthy mean_of_correlation_unhealthy;
%     mean_of_enery_healthy mean_of_enery_unhealthy;
%     mean_of_entropy_healthy mean_of_entropy_unhealthy;
%     mean_of_homogenity_healthy mean_of_homogenity_unhealthy];

%% Histogram Plots
%%
% names = {'Contrast'; 'Correlation'; 'Energy'; 'Entropy'; 'Homogeneity';};
% h = bar(b);
% l = cell(1,2);
% l{1}='Healthy'; l{2}='Unhealthy';    
% legend(h,l);
% 
% set(gca,'xtick',1:5,'xticklabel',names)



