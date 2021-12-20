%%
%Load data

dataTrain = load('./DataSimulation/DataTrain_2Classes_Perceptron_2.mat');
x_partiel = dataTrain.data;
x = ones(3,2000);
x(2:3, :) = x_partiel;
c = dataTrain.c; 

dataTest = load('./DataSimulation/DataTest_2Classes_Perceptron_2.mat');
x_partieltest = dataTest.dataTest;
xTest = ones(3,2000);
xTest(2:3, :) = x_partieltest;
cTest = dataTest.cTest; 

disp('dataTrain et DataTest load');

%%
%Variables

N = 2000;
rho = 10e-1;
nbit = 300;

I1 = 10; %nombre de neurones dans la couche cachee
W1 = zeros(I1, 3, nbit); 
W2 = zeros(1, I1+1, nbit);


%recherche des valeurs de W(1) et W(2)

for k = 2:nbit
    
    %Calcul de la fonction de rétropropagation
    z = x'*
    y = 1 / (1+exp(-z));
    d11, d21 = 2*()
    
    df1 = 
    df2 = 
    
    %màj des paramètres
    W1(:,:,k) = W1(:,:,k-1) - rho * df1;
    W2(:,:,k) = W2(:,:,k-1) - rho * df2;

end





