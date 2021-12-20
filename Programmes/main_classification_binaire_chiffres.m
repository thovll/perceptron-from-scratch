%%
%load et mise en forme de data_train

data0 = load('./Data/DigitTrain_0.mat');
imgs0 = data0.imgs;
labels0 = data0.labels;

data1 = load('./Data/DigitTrain_1.mat');
imgs1 = data1.imgs;
labels1 = data1.labels;

labels0(:,:) = 0; 
labels1(:,:) = 1;

I = 20*20;

x0 = zeros(I,length(labels0));
for i = 1:length(labels0)
    x0(:,i) = reshape(imgs0(:,:,i), I, 1);
end

x1 = zeros(I,length(labels1));
for j = 1:length(labels1)
    x1(:,j) = reshape(imgs1(:,:,j), I, 1);
end

labels = [labels0; labels1]';
x = ones(401, length(x0(1,:)) + length(x1(1,:)));
x(2:401,:) = [x0 x1];

disp('Load dataTrain OK');

%%
%trouver les poids a l'aide de la fonction de retro propagation des erreurs
%et de la methode du gradient

N = length(labels0) + length(labels1);
rho = 10e-1;
nbit = 500;
f =[0.5];
w = zeros(I+1,1); %valeurs initiales egales a zeros

for k = 2:nbit
    
    %Calcul gradient
    z = x'*w(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF = (1/N) *  ((y - labels') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w(:,k) = w(:,k-1) - rho * gradF';
    
    %Calcul de la fonction de cout
    z = x'*w(:,k);
    y = 1 ./ (1+exp(-z));
    f(k) = 1/(2*N) * sum((y - labels').*(y - labels')); 
    
    if f(k) <= f(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f(k) = f(k-1);
        w(:,k) = w(:,k-1);
    end
 
end

disp('Calcul des poids OK')

%%
%load et mise en forme de data_test
dataTest0 = load('./Data/DigitTest_0.mat');
imgsTest0 = dataTest0.imgs;
labelsTest0 = dataTest0.labels;

dataTest1 = load('./Data/DigitTest_1.mat');
imgsTest1 = dataTest1.imgs;
labelsTest1 = dataTest1.labels;

labelsTest0(:,:) = 0; 
labelsTest1(:,:) = 1;


xTest0 = zeros(I,length(labelsTest0));
for i = 1:length(labelsTest0)
    xTest0(:,i) = reshape(imgsTest0(:,:,i), I, 1);
end

xTest1 = zeros(I,length(labelsTest1));
for j = 1:length(labelsTest1)
    xTest1(:,j) = reshape(imgsTest1(:,:,j), I, 1);
end

labelsTest = [labelsTest0; labelsTest1]';

xTest = ones(401, length(xTest0(1,:)) + length(xTest1(1,:)));
xTest(2:401,:) = [xTest0 xTest1];

disp('Load dataTEst OK');

%%
%Test

NTest = length(labelsTest);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTest(:,i)'*w(:,end);
    yTest(1,i) = 1/(1+exp(-STest));
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end

it = 0;
for k = 1:NTest
    if yTest(1,k) == labelsTest(k)
        it = it+1 ;
    end
end

subplot(2,1,1), plot(labelsTest), title('résultat attendus');  
subplot(2,1,2), plot(yTest, 'x'), title('résultat obtenus');  

disp(it/NTest);

%%
%matrice de confusion

NTest = length(labelsTest);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTest(:,i)'*w(:,end);
    yTest(1,i) = 1/(1+exp(-STest));
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end


mat_confusion = zeros(2,2);

for k = 1:length(labelsTest0(:,1))
    if yTest(1,k) == labelsTest(k)
        mat_confusion(1,1) = mat_confusion(1,1) + 1;
    else
        mat_confusion(2,1) = mat_confusion(2,1) + 1;
    end
end

for k = length(labelsTest0(:,1))+1 : length(labelsTest1(:,1)) + length(labelsTest0(:,1))
    if yTest(1,k) == labelsTest(k)
        mat_confusion(2,2) = mat_confusion(2,2) + 1;
    else
        mat_confusion(1,2) = mat_confusion(1,2) + 1;
    end
end

disp(mat_confusion);


