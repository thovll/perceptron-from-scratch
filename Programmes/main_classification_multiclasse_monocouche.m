%%
%Apprentissage, calcul des poids
tic
N = length(labels_0);
rho = 1;
nbit = 500;

w0 = zeros(I+1,1); %initialisation
f0 = [0.5]; %valeur initiale de la fonction de cout

for k = 2:nbit
    
    %Calcul gradient
    z0 = x'*w0(:,k-1);
    y0 = 1 ./ (1+exp(-z0));
    gradF0 = (1/N) * ((y0 - labels_0') .* (y0 - y0.*y0))' * x' ;
    
    %màj des paramètres
    w0(:,k) = w0(:,k-1) - rho * gradF0';
    
    %Calcul de la fonction de cout
    z0 = x'*w0(:,k);
    y0 = 1 ./ (1+exp(-z0));
    f0(k) = 1/(2*N) * sum((y0 - labels_0').*(y0 - labels_0')); 
    
    if f0(k) <= f0(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f0(k) = f0(k-1);
        w0(:,k) = w0(:,k-1);
    end
    
end

disp('Calcul Poids pour 0 OK');

rho = 10;

w1 = zeros(I+1,1);
w1(:,:) = 0;
f1 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z1 = x'*w1(:,k-1);
    y1 = 1 ./ (1+exp(-z1));
    gradF1 = (1/N) *  ((y1 - labels_1') .* (y1 - y1.*y1))' * x' ;
    
    %màj des paramètres
    w1(:,k) = w1(:,k-1) - rho * gradF1';
    
    %Calcul de la fonction de cout
    z1 = x'*w1(:,k);
    y1 = 1 ./ (1+exp(-z1));
    f1(k) = 1/(2*N) * sum((y1 - labels_1').*(y1 - labels_1')); 
    
    if f1(k) <= f1(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f1(k) = f1(k-1);
        w1(:,k) = w1(:,k-1);
    end
 
end


disp('Calcul Poids pour 1 OK');

rho = 10;

w2 = zeros(I+1,1);
w2(:,:) = 0;
f2 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z2 = x'*w2(:,k-1);
    y2 = 1 ./ (1+exp(-z2));
    gradF2 = (1/N) *  ((y2 - labels_2') .* (y2 - y2.*y2))' * x' ;
    
    %màj des paramètres
    w2(:,k) = w2(:,k-1) - rho * gradF2';
    
    %Calcul de la fonction de cout
    z2 = x'*w2(:,k);
    y2 = 1 ./ (1+exp(-z2));
    f2(k) = 1/(2*N) * sum((y2 - labels_2').*(y2 - labels_2')); 
    
    if f2(k) <= f2(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f2(k) = f2(k-1);
        w2(:,k) = w2(:,k-1);
    end
 
end


disp('Calcul Poids pour 2 OK');

rho = 10;

w3 = zeros(I+1,1);
w3(:,:) = 0;
f3 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w3(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF3 = (1/N) *  ((y - labels_3') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w3(:,k) = w3(:,k-1) - rho * gradF3';
    
    %Calcul de la fonction de cout
    z = x'*w3(:,k);
    y = 1 ./ (1+exp(-z));
    f3(k) = 1/(2*N) * sum((y - labels_3').*(y - labels_3')); 
    
    if f3(k) <= f3(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f3(k) = f3(k-1);
        w3(:,k) = w3(:,k-1);
    end
 
end


disp('Calcul Poids pour 3 OK');

rho = 10;

w4 = zeros(I+1,1);
w4(:,:) = 0;
f4 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w4(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF4 = (1/N) *  ((y - labels_4') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w4(:,k) = w4(:,k-1) - rho * gradF4';
    
    %Calcul de la fonction de cout
    z = x'*w4(:,k);
    y = 1 ./ (1+exp(-z));
    f4(k) = 1/(2*N) * sum((y - labels_4').*(y - labels_4')); 
    
    if f4(k) <= f4(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f4(k) = f4(k-1);
        w4(:,k) = w4(:,k-1);
    end
 
end

disp('Calcul Poids pour 4 OK');

rho = 10;

w5 = zeros(I+1,1);
w5(:,:) = 0;
f5 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w5(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF5 = (1/N) *  ((y - labels_5') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w5(:,k) = w5(:,k-1) - rho * gradF5';
    
    %Calcul de la fonction de cout
    z = x'*w5(:,k);
    y = 1 ./ (1+exp(-z));
    f5(k) = 1/(2*N) * sum((y - labels_5').*(y - labels_5')); 
    
    if f5(k) <= f5(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f5(k) = f5(k-1);
        w5(:,k) = w5(:,k-1);
    end
 
end

disp('Calcul Poids pour 5 OK');

rho = 10;

w6 = zeros(I+1,1);
w6(:,:) = 0;
f6 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w6(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF6 = (1/N) *  ((y - labels_6') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w6(:,k) = w6(:,k-1) - rho * gradF6';
    
    %Calcul de la fonction de cout
    z = x'*w6(:,k);
    y = 1 ./ (1+exp(-z));
    f6(k) = 1/(2*N) * sum((y - labels_6').*(y - labels_6')); 
    
    if f6(k) <= f6(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f6(k) = f6(k-1);
        w6(:,k) = w6(:,k-1);
    end
 
end

disp('Calcul Poids pour 6 OK');

rho = 10;

w7 = zeros(I+1,1);
w7(:,:) = 0;
f7 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w7(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF7 = (1/N) *  ((y - labels_7') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w7(:,k) = w7(:,k-1) - rho * gradF7';
    
    %Calcul de la fonction de cout
    z = x'*w7(:,k);
    y = 1 ./ (1+exp(-z));
    f7(k) = 1/(2*N) * sum((y - labels_7').*(y - labels_7')); 
    
    if f7(k) <= f7(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f7(k) = f7(k-1);
        w7(:,k) = w7(:,k-1);
    end
 
end

disp('Calcul Poids pour 7 OK');

rho = 10;

w8 = zeros(I+1,1);
w8(:,:) = 0;
f8 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w8(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF8 = (1/N) *  ((y - labels_8') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w8(:,k) = w8(:,k-1) - rho * gradF8';
    
    %Calcul de la fonction de cout
    z = x'*w8(:,k);
    y = 1 ./ (1+exp(-z));
    f8(k) = 1/(2*N) * sum((y - labels_8').*(y - labels_8')); 
    
    if f8(k) <= f8(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f8(k) = f8(k-1);
        w8(:,k) = w8(:,k-1);
    end
 
end

disp('Calcul Poids pour 8 OK');

rho = 10;

w9 = zeros(I+1,1);
w9(:,:) = 0;
f9 = [0.5];

for k = 2:nbit

    %Calcul gradient
    z = x'*w9(:,k-1);
    y = 1 ./ (1+exp(-z));
    gradF9 = (1/N) *  ((y - labels_9') .* (y - y.*y))' * x' ;
    
    %màj des paramètres
    w9(:,k) = w9(:,k-1) - rho * gradF9';
    
    %Calcul de la fonction de cout
    z = x'*w9(:,k);
    y = 1 ./ (1+exp(-z));
    f9(k) = 1/(2*N) * sum((y - labels_9').*(y - labels_9')); 
    
    if f9(k) <= f9(k-1)
        rho = 2*rho;
    else
        rho = rho/2;
        f9(k) = f9(k-1);
        w9(:,k) = w9(:,k-1);
    end
 
end

disp('Calcul Poids pour 9 OK');
toc
%%

w = zeros(1,I+1,10);
w(:,:,1) = w0(:,end);
w(:,:,2) = w1(:,end);
w(:,:,3) = w2(:,end);
w(:,:,4) = w3(:,end);
w(:,:,5) = w4(:,end);
w(:,:,6) = w5(:,end);
w(:,:,7) = w6(:,end);
w(:,:,8) = w7(:,end);
w(:,:,9) = w8(:,end);
w(:,:,10) = w9(:,end);


%%
%Test précision pour 0

NTest = length(labelsTEST_0);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTEST(:,i)'*w0(:,end);
    yTest(1,i) = 1/(1+exp(-STest));
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end

it0 = 0;
for k = 1:NTest
    if yTest(1,k) == labelsTEST_0(k)
        it0 = it0+1;
    end
end

subplot(2,1,1), plot(labelsTEST_0(1:NTest)), title('résultat attendu');
subplot(2,1,2), plot(yTest,'x'), title('résultat obtenus');


precision = it0/NTest;
fprintf("\nprécision : %f\n\n", precision);

clear it0 yTest


%%
%Test précision pour 1

NTest = length(labelsTEST_1);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTEST(:,i)'*w1(:,end);
    yTest(1,i) = 1/(1+exp(-STest));
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end

it1 = 0;
for k = 1:NTest
    if yTest(1,k) == labelsTEST_1(k)
        it1 = it1+1;
    end
end

subplot(2,1,1), plot(labelsTEST_1(1:NTest)), title('résultat attendu');
subplot(2,1,2), plot(yTest,'x'), title('résultat obtenus');


precision = it1/NTest;
fprintf("\nprécision : %f\n\n", precision);

clear it1 yTest

%%
%Test précision pour 2

NTest = length(labelsTEST_2);
yTest = zeros(1,NTest);

for i = 1:NTest
    STest = xTEST(:,i)'*w2(:,end);
    yTest(1,i) = 1/(1+exp(-STest));
    if yTest(1,i) >= 1/2
        yTest(1,i) = 1;
    else
        yTest(1,i) = 0;
    end
end

it2 = 0;
for k = 1:NTest
    if yTest(1,k) == labelsTEST_2(k)
        it2 = it2+1;
    end
end

subplot(2,1,1), plot(labelsTEST_2(1:NTest)), title('résultat attendu');
subplot(2,1,2), plot(yTest,'x'), title('résultat obtenus');

precision = it2/NTest;
fprintf("\nprécision : %f\n\n", precision);

clear it2 yTest

%%
%Calcul des sorties des 10 perceptrons pour une image
clc 
x_im = ones(401,1);
x_im(2:401,:) = x7(:,1001); %choix du chiffre manuscrit à tester

%calcul des valeurs de sorties pour une image
for k = 1:10
    somme = x_im(:,1)'*w(:,:,k)';
    res = 1 / (1+exp(-somme)); 
    fprintf("%d --> %f\n", k-1, res);
end
