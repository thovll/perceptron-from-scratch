%%
%Trouver les poids a l'aide de la fonction de retro propagation des erreurs
%et de la methode du gradient

dataTrain = load('./DataSimulation/DataTrain_2Classes_Perceptron.mat'); 
x_partiel = dataTrain.data;
x = ones(3,1000);
x(2:3, :) = x_partiel;
c = dataTrain.c; 
N = length(c);
rho = 10e-1; %pas
w0_0 = 3; %initialisation
w1_0 = 2;
w2_0 = 3;
w = [w0_0; w1_0; w2_0];
nbit = 300;
f = [0.5]; %valeur initiale de la fonction de cout

for k = 2:nbit
    
    %Calcul gradient
    z = x'*w(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF = (1/N) *  ((y - c') .* (y - y.*y))' *x' ;
    
    w(:,k) = w(:,k-1) - rho * gradF';
    
    %Calcul de la fonction de cout
    z = x'*w(:,k);
    y = 1 ./ (1+exp(-z));
    f(k) = 1/(2*N) * sum((y - c').*(y - c'));
       
    %pas variable
    if f(k) <= f(k-1) 
        rho = 2*rho;
    else
        rho = rho/2;
        f(k) = f(k-1);
        w(:,k) = w(:,k-1);
    end
 
end


%affichage
subplot(4,1,1), plot(w(1,:)), title('w0');
subplot(4,1,2), plot(w(2,:)), title('w1');
subplot(4,1,3), plot(w(3,:)), title('w2');
subplot(4,1,4), plot(f(:)), title('f');

%%
%Test

dataTest = load('./DataSimulation/DataTest_2Classes_Perceptron.mat');

cTest = dataTest.cTest;
xTest_partiel = dataTest.dataTest;

xTest = ones(3,1000);
xTest(2:3,1:1000) = xTest_partiel;

NTest = length(xTest);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTest(:,i)'*w(:,end);
    yTest(1,i) = 1/(1+exp(-STest)); %calcul des valeurs de sortie du perceptron
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end

it = 0;
for k = 1:1000
    if yTest(1,k) == cTest(k)
        it = it+1 ;
    end
end

fprintf('\nprécision : %d %\n',(it/NTest)*100);

%%
%affichage

%calcul des valeurs du perceptron pour les valeurs x et y du plan.
x1 = -12:0.01:12;
x2 = -12:0.01:12;

for ind1 = 1:length(x1)
    for ind2 = 1:length(x2)
        z1 = w(1,end) + x1(ind1)*w(2,end) + x2(ind2)*w(3,end);
        val_percepton(ind1,ind2) = 1/(1+exp(-z1));
    end
end

hold on;

axis([-12 12 -12 12]);

imagesc(x1, x2, val_percepton); 

plot(xTest(3,1:500), xTest(2,1:500), 'x', 'Color', 'w');
plot(xTest(3,501:1000), xTest(2,501:1000), 'x', 'Color', 'r');

hold off;
