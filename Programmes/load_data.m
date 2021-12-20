for k = 0:9
    suffix=num2str(k);
    varName=sprintf('data%s',suffix);
    k1 = int2str(k);
    assignin('base',varName,load(strcat('./Data/DigitTrain_',k1,'.mat'))); 
end

imgs0 = data0.imgs;
labels0 = data0.labels;
imgs1 = data1.imgs;
labels1 = data1.labels;
imgs2 = data2.imgs;
labels2 = data2.labels;
imgs3 = data3.imgs;
labels3 = data3.labels;
imgs4 = data4.imgs;
labels4 = data4.labels;
imgs5 = data5.imgs;
labels5 = data5.labels;
imgs6 = data6.imgs;
labels6 = data6.labels;
imgs7 = data7.imgs;
labels7 = data7.labels;
imgs8 = data8.imgs;
labels8 = data8.labels;
imgs9 = data9.imgs;
labels9 = data9.labels;

labels0(:,:) = 0;
labels1(:,:) = 0;
labels2(:,:) = 0;
labels3(:,:) = 0;
labels4(:,:) = 0;
labels5(:,:) = 0;
labels6(:,:) = 0;
labels7(:,:) = 0;
labels8(:,:) = 0;
labels9(:,:) = 0;

labels0(:,:) = 1;
labels_0 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels0(:,:) = 0;

labels1(:,:) = 1;
labels_1 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels1(:,:) = 0;

labels2(:,:) = 1;
labels_2 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels2(:,:) = 0;

labels3(:,:) = 1;
labels_3 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels3(:,:) = 0;

labels4(:,:) = 1;
labels_4 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels4(:,:) = 0;

labels5(:,:) = 1;
labels_5 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels5(:,:) = 0;

labels6(:,:) = 1;
labels_6 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels6(:,:) = 0;

labels7(:,:) = 1;
labels_7 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels7(:,:) = 0;

labels8(:,:) = 1;
labels_8 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels8(:,:) = 0;

labels9(:,:) = 1;
labels_9 = [labels0' labels1' labels2' labels3' labels4' labels5' labels6' labels7' labels8' labels9'];
labels9(:,:) = 0;

I = 20*20;

x0 = zeros(I,length(labels0));
for i = 1:length(labels0)
    x0(:,i) = reshape(imgs0(:,:,i), I, 1);
end

x1 = zeros(I,length(labels1));
for j = 1:length(labels1)
    x1(:,j) = reshape(imgs1(:,:,j), I, 1);
end

x2 = zeros(I,length(labels2));
for i = 1:length(labels2)
    x2(:,i) = reshape(imgs2(:,:,i), I, 1);
end

x3 = zeros(I,length(labels3));
for j = 1:length(labels3)
    x3(:,j) = reshape(imgs3(:,:,j), I, 1);
end

x4 = zeros(I,length(labels4));
for i = 1:length(labels4)
    x4(:,i) = reshape(imgs4(:,:,i), I, 1);
end

x5 = zeros(I,length(labels5));
for j = 1:length(labels5)
    x5(:,j) = reshape(imgs5(:,:,j), I, 1);
end

x6 = zeros(I,length(labels6));
for i = 1:length(labels6)
    x6(:,i) = reshape(imgs6(:,:,i), I, 1);
end

x7 = zeros(I,length(labels7));
for j = 1:length(labels7)
    x7(:,j) = reshape(imgs7(:,:,j), I, 1);
end

x8 = zeros(I,length(labels8));
for i = 1:length(labels8)
    x8(:,i) = reshape(imgs8(:,:,i), I, 1);
end

x9 = zeros(I,length(labels9));
for i = 1:length(labels9)
    x9(:,i) = reshape(imgs9(:,:,i), I, 1);
end

x = ones(401, 60000);
x(2:401,:) = [x0 x1 x2 x3 x4 x5 x6 x7 x8 x9];

disp('Load DataTrain OK');



for k = 0:9
    suffix=num2str(k);
    varName=sprintf('dataTEST%s',suffix);
    k1 = int2str(k);
    assignin('base',varName,load(strcat('./Data/DigitTest_',k1,'.mat'))); 
end

imgsTEST0 = dataTEST0.imgs;
labelsTEST0 = dataTEST0.labels;
imgsTEST1 = dataTEST1.imgs;
labelsTEST1 = dataTEST1.labels;
imgsTEST2 = dataTEST2.imgs;
labelsTEST2 = dataTEST2.labels;
imgsTEST3 = dataTEST3.imgs;
labelsTEST3 = dataTEST3.labels;
imgsTEST4 = dataTEST4.imgs;
labelsTEST4 = dataTEST4.labels;
imgsTEST5 = dataTEST5.imgs;
labelsTEST5 = dataTEST5.labels;
imgsTEST6 = dataTEST6.imgs;
labelsTEST6 = dataTEST6.labels;
imgsTEST7 = dataTEST7.imgs;
labelsTEST7 = dataTEST7.labels;
imgsTEST8 = dataTEST8.imgs;
labelsTEST8 = dataTEST8.labels;
imgsTEST9 = dataTEST9.imgs;
labelsTEST9 = dataTEST9.labels;

labelsTEST0(:,:) = 0;
labelsTEST1(:,:) = 0;
labelsTEST2(:,:) = 0;
labelsTEST3(:,:) = 0;
labelsTEST4(:,:) = 0;
labelsTEST5(:,:) = 0;
labelsTEST6(:,:) = 0;
labelsTEST7(:,:) = 0;
labelsTEST8(:,:) = 0;
labelsTEST9(:,:) = 0;

labelsTEST0(:,:) = 1;
labelsTEST_0 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST0(:,:) = 0;

labelsTEST1(:,:) = 1;
labelsTEST_1 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST1(:,:) = 0;

labelsTEST2(:,:) = 1;
labelsTEST_2 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST2(:,:) = 0;

labelsTEST3(:,:) = 1;
labelsTEST_3 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST3(:,:) = 0;

labelsTEST4(:,:) = 1;
labelsTEST_4 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST4(:,:) = 0;

labelsTEST5(:,:) = 1;
labelsTEST_5 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST5(:,:) = 0;

labelsTEST6(:,:) = 1;
labelsTEST_6 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST6(:,:) = 0;

labelsTEST7(:,:) = 1;
labelsTEST_7 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST7(:,:) = 0;

labelsTEST8(:,:) = 1;
labelsTEST_8 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST8(:,:) = 0;

labelsTEST9(:,:) = 1;
labelsTEST_9 = [labelsTEST0' labelsTEST1' labelsTEST2' labelsTEST3' labelsTEST4' labelsTEST5' labelsTEST6' labelsTEST7' labelsTEST8' labelsTEST9'];
labelsTEST9(:,:) = 0;

I = 20*20;

xTEST0 = zeros(I,length(labelsTEST0));
for i = 1:length(labelsTEST0)
    xTEST0(:,i) = reshape(imgsTEST0(:,:,i), I, 1);
end

xTEST1 = zeros(I,length(labelsTEST1));
for j = 1:length(labelsTEST1)
    xTEST1(:,j) = reshape(imgsTEST1(:,:,j), I, 1);
end

xTEST2 = zeros(I,length(labelsTEST2));
for i = 1:length(labelsTEST2)
    xTEST2(:,i) = reshape(imgsTEST2(:,:,i), I, 1);
end

xTEST3 = zeros(I,length(labelsTEST3));
for j = 1:length(labelsTEST3)
    xTEST3(:,j) = reshape(imgsTEST3(:,:,j), I, 1);
end


xTEST4 = zeros(I,length(labelsTEST4));
for i = 1:length(labelsTEST4)
    xTEST4(:,i) = reshape(imgsTEST4(:,:,i), I, 1);
end

xTEST5 = zeros(I,length(labelsTEST5));
for j = 1:length(labelsTEST5)
    xTEST5(:,j) = reshape(imgsTEST5(:,:,j), I, 1);
end

xTEST6 = zeros(I,length(labelsTEST6));
for i = 1:length(labelsTEST6)
    xTEST6(:,i) = reshape(imgsTEST6(:,:,i), I, 1);
end

xTEST7 = zeros(I,length(labelsTEST7));
for j = 1:length(labelsTEST7)
    xTEST7(:,j) = reshape(imgsTEST7(:,:,j), I, 1);
end

xTEST8 = zeros(I,length(labelsTEST8));
for i = 1:length(labelsTEST8)
    xTEST8(:,i) = reshape(imgsTEST8(:,:,i), I, 1);
end

xTEST9 = zeros(I,length(labelsTEST9));
for i = 1:length(labelsTEST9)
    xTEST9(:,i) = reshape(imgsTEST9(:,:,i), I, 1);
end

xTEST = ones(401,10000);
xTEST(2:401,:) = [xTEST0 xTEST1 xTEST2 xTEST3 xTEST4 xTEST5 xTEST6 xTEST7 xTEST8 xTEST9];

disp('Load DataTest OK')

clear i j k k1 suffix varName