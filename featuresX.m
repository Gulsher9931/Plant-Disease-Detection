Correlation = Correlation(I);
sprintf('The Correlation is: %g%',Correlation);


grayImage = imread(I);
figure, imshow(I); title('Gray Image');

I = imadjust(I,stretchlim(I));
figure, imshow(I);title('Contrast Enhanced');

glcms = graycomatrix(I);
offset = [0 1; -1 1;-1 0;-1 -1];
glcm = graycomatrix(I,offset,[2 0]);
stats = graycoprops(glcms,'Contrast Correlation Energy Homogeneity');
Contrast = stats.Contrast;
sprintf('The Contrast is: %g%',Contrast);

Energy = stats.Energy;
Homogeneity = stats.Homogeneity;
sprintf('The Contrast is: %g%',Contrast);
