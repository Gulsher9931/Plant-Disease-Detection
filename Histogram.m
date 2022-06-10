% % Check version
% if verLessThan('matlab','8.4')
%     error(['histogram is available in R2014b or newer. ', ...
%         'For older releases, use hist instead.'])
% end
% % Load nucleotide data
% load nucleotideData ncount
% % Create the histogram using the histogram function
% figure
% h1 = histogram(ncount(:,1));
% hold on
% histogram(ncount(:,2),h1.BinEdges)
% histogram(ncount(:,3),h1.BinEdges)
% histogram(ncount(:,4),h1.BinEdges)
% hold off
% % Add a legend
% legend('A', 'C', 'G', 'T')
% % Add title and axis labels
% title('Histogram of nucleotide type distribution')
% xlabel('Occurrences')
% ylabel('Number of sequence reads')

x = 1:10;
y = rand(1,10);
figure(1)
plot(x,y)
figure(2)
plot(x,y)
view([-90 90])
