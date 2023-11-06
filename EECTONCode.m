clc;
clear all;
close all;
count = 0;
// for function F = A*B B = [0,1,1;1,0,1]
A = ones(2,3) f=@(x)x
X=1:10
for i = 1:length(B)-1 for j = 1:length(B) b1(i,j) = B(i,j)*A(i,j)
if b1(i,j) == 0
count = count+1;
end
end
end
// total entities transfer from A total = numel(A)-count
for x = 1:length(X)
// Probability distribution table 1
pab1=[f (x)1/2− f (x);1/2− f (x)f (x)]
A10 = sum(pab1(1,:))
A11 = sum(pab1(2,:))
P1A =A10+A11;//totalprobabilityof A B10 = sum(pab1(:,1))
10
 B11 = sum(pab1(:,2))
P1B =B10 +B11//totalprobabilityof B
//Entropyof H(X)
H1A(x,:)= A10 ∗log2(A10)+1−(A11)∗log2(1−(A11)) H1B(x,:)=B10 ∗log2(B10)+1−(B11)∗log2(1−(B11))
//Probabilitydistributiontable2 pab2=[f (x)1/2;1/2−2∗ f (x)f (x)] A20 = sum(pab2(1,:))
A21 = sum(pab2(2,:))
P2A =A20+A21;//totalprobabilityofX B20 = sum(pab2(:,1))
B21 = sum(pab2(:,2))
P2B =B20 +B21//totalprobabilityof Y
//Entropyof H(X)
H2A(x,:)=(A20 ∗log2(A20)+1−(A21)∗log2(1−(A21))) H2B(x,:)=(B20 ∗log2(B20)+1−(B21)∗log2(1−(B21)))
//probabilitydistributiontable3 pab3=0.5∗pab1+((0.5)∗pab2) A30 = sum(pab3(1,:))
A31 = sum(pab3(2,:))
P3A =A30+A31;//totalprobabilityofX B30 = sum(pab3(:,1))
B31 = sum(pab3(:,2))
P3B =B30+B31//totalprobability
//Entropyof H(X)
H3A(x,:)=(A30 ∗log2(A30)+1−(A31)∗log2(1−(A31))) H 3B (x , :) = a b s (−B 30 ∗ l o g (B 30 ) − (B 31 ) ∗ l o g (B 31 ))
//Entropyof H(A/B =1) H322(x,:)=pab3(2,2)
HAB(x,:) = (H322(x,:))./(B31) //HAB3=(HAB).∗log(HAB) //HAB2(x,:)=(Pa1b1)∗log(Pa1b1) end
′ plot(X,total ∗H1A, −
′′′′′′′′
o , MarkerIndices ,1:20:length(H1A), LineWidth ,1, MarkerSize ,5, Marker ′′′
EdgeColor , b ) holdon plot(X,H2A, −
′
11

 ′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(H2A), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b ) ′
plot(X,HAB, − ′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(HAB), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b )
holdon
′′
xlabel( numberof iteration )
′′
ylabel( entropy ) ′′
title( communicationcostof Af or f unctionA∗B ) ′′′′′′
legend( H(Pab(1)) , H(Pab(2)) , H(Pab(3)) )
//f or f unctionF = A+B B1 = [0,1,1;1,0,1] A1=ones(2,3)
f =@(x)x count1=0
fori =1:length(B1)−1 forj =1:length(B1)
B 1(i , j ) = A1(i , j )
i f B 1(i , j ) == A1(i , j ) count1=count1+1; end
end
end
//totalentitiestransf er f romA total1=numel(A)−count1
f orx =1:length(X)
//Probabilitydistributiontable1 pab1=[f (x)1/2− f (x);1/2− f (x)f (x)] A10 = sum(pab1(1,:))
A11 = sum(pab1(2,:))
P1A =A10+A11;//totalprobabilityof A B10 = sum(pab1(:,1))
B11 = sum(pab1(:,2))
P1B =B10 +B11//totalprobabilityof B
//Entropyof H(X)
H1A(x,:)= A10 ∗log(A10)+1−(A11)∗log(1−(A11)) H1B(x,:)=B10 ∗log(B10)+1−(B11)∗log(1−(B11))
//Probabilitydistributiontable2 pab2=[f (x)1/2;1/2−2∗ f (x)f (x)] A20 = sum(pab2(1,:))
12

 A21 = sum(pab2(2,:))
P2A =A20+A21;//totalprobabilityofX B20 = sum(pab2(:,1))
B21 = sum(pab2(:,2))
P2B =B20 +B21//totalprobabilityof Y
//Entropyof H(X)
H2A(x,:)=(A20 ∗log(A20)+1−(A21)∗log(1−(A21))) H2B(x,:)=(B20 ∗log(B20)+1−(B21)∗log(1−(B21)))
//probabilitydistributiontable3 pab3=0.5∗pab1+((0.5)∗pab2) A30 = sum(pab3(1,:))
A31 = sum(pab3(2,:))
P3A =A30+A31;//totalprobabilityofX B30 = sum(pab3(:,1))
B31 = sum(pab3(:,2))
P3B =B30 +B31//totalprobabilityof Y
//Entropyof H(X)
H3A(x,:)=(A30 ∗log(A30)+1−(A31)∗log(1−(A31))) H3B(x,:)=(B30 ∗log(B30)+1−(B31)∗log(1−(B31))) //Entropyof H(A/B =1)
H3B1(x,:)=pab3(2,2)
HAB(x,:) = (H3B1(x,:))./(B31)
end
f igure(2) plot(X,H1A, −
EdgeColor , b )
holdon
plot(X,H2A, −
′
′′′′′′′′
o , MarkerIndices ,1:20:length(H1A), LineWidth ,1, MarkerSize ,5, Marker ′′′
′
′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(H2A), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b ) ′
plot(X,HAB, − ′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(HAB), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b ) ′′
xlabel( numberof iteration ) ′′
ylabel( entropy ) ′′
title(communicationcostofAforfunctionA=B ) ′′′′′′
legend( H(Pab(1)) , H(Pab(2)) , H(Pab(3)) )
//f or f unctionF = A+B B1 = [0,1,1;1,0,1]
13

 A1=ones(2,3) f =@(x)x
count2=0
//f or f unctionF = A+B fori =1:length(B1)−1 forj =1:length(B1)
b2(i,j)=B1(i,j)+A1(i,j) i f b2(i , j ) == 0 count2=count2+1;
end
end end
//totalentitiestransf er f romA total2=numel(A)−count2
f orx =1:length(X)
//Probabilitydistributiontable1 pab1=[f (x)1/2− f (x);1/2− f (x)f (x)] A10 = sum(pab1(1,:))
A11 = sum(pab1(2,:))
P1A =A10+A11;//totalprobabilityof A B10 = sum(pab1(:,1))
B11 = sum(pab1(:,2))
P1B =B10 +B11//totalprobabilityof B
//Entropyof H(X)
H1A(x,:)= A10 ∗log(A10)+1−(A11)∗log(1−(A11)) H1B(x,:)=B10 ∗log(B10)+1−(B11)∗log(1−(B11))
//Probabilitydistributiontable2 pab2=[f (x)1/2;1/2−2∗ f (x)f (x)] A20 = sum(pab2(1,:))
A21 = sum(pab2(2,:))
P2A =A20+A21;//totalprobabilityofX B20 = sum(pab2(:,1))
B21 = sum(pab2(:,2))
P2B =B20 +B21//totalprobabilityof Y
//Entropyof H(X)
H2A(x,:)=(A20 ∗log(A20)+1−(A21)∗log(1−(A21))) H2B(x,:)=(B20 ∗log(B20)+1−(B21)∗log(1−(B21)))
//probabilitydistributiontable3
14

 pab3=0.5∗pab1+((0.5)∗pab2)
A30 = sum(pab3(1,:))
A31 = sum(pab3(2,:))
P3A =A30+A31;//totalprobabilityofX B30 = sum(pab3(:,1))
B31 = sum(pab3(:,2))
P3B =B30 +B31//totalprobabilityof Y
//Entropyof H(X)
H3A(x,:)=(A30 ∗log(A30)+1−(A31)∗log(1−(A31))) H3B(x,:)=(B30 ∗log(B30)+1−(B31)∗log(1−(B31)))
//Entropyof H(A/B =1) H3B1(x,:)=pab3(1,2) HAB(x,:) = (H322(x,:))./(B31) end
f igure(3) plot(X,H1A, −
EdgeColor , b )
holdon
plot(X,H2A, −
′
′′′′′′′′
o , MarkerIndices ,1:20:length(H1A), LineWidth ,1, MarkerSize ,5, Marker ′′′
′
′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(H2A), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b ) ′
plot(X,total2∗HAB, − ′′′′′′
o , MarkerFaceColor ,[1,1,1], MarkerIndices ,1:20:length(HAB), LineWidth ′′ ′′ ′′′
,1, MarkerSize ,5, MarkerEdgeColor , b ) ′′
xlabel( numberof iteration ) ′′
ylabel( entropy ) ′′
title( communicationcostof Af or f unctionA+B )
′′′′′′
legend( H(Pab(1)) , H(Pab(2)) , H(Pab(3)) )