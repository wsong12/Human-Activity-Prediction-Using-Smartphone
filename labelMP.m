function label=labelMP(Xrow,meanMatrix,stdMatrix,lambdaMatrix,priorVector)
Ptotal=1;
PVector=[];



for i=1:12
    for j=[1:3 23:40]  % cauculate the probibility of feature for Gaussian distribution
        
        
        
        P=exp(1)^(-(meanMatrix(i,j)-Xrow(j))^2/(2*stdMatrix(i,j)^2))/((2*pi*stdMatrix(i,j)^2)^0.5);
        Ptotal=Ptotal*P;
    end
    for n=4:22   % cauculate the probibility of feature for exponential distribution
       
        
        lambda=lambdaMatrix(i,n);
        P=min(1,lambda*exp(-Xrow(n)*lambda));
     
        Ptotal=Ptotal*P;
        
    end
    %for k=13:15
        %lambda=lambdaMatrix(i,k);
        %P=min(1,lambda*exp(-(2-Xrow(k))*lambda));
     
        %Ptotal=Ptotal*P;
    %end
        
    Ptotal=Ptotal*priorVector(i);
    PVector=[PVector,Ptotal];
    Ptotal=1;
    
    
end

a=max(PVector);
label=find(PVector==a);





