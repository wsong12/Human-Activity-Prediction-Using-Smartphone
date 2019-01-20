function lambdaMatrix=LearnLambda(Training_adjusted,Traininglabel)
%lambda=length(xcol)/sum(xcol);
total=0;
num=0;

lambdaVector=[];
lambdaMatrix=[];
for i=1:561 % Cauculate lambda for gussian distribution

    for n=1:12
        for j=1:length(Training_adjusted)
            if Traininglabel(j)==n
                total=total+Training_adjusted(j,i);
                num=num+1;
                
            end
        end
        mean=total/num;
        %lambdaVector=[lambdaVector,num/total];
        lambdaVector=[lambdaVector,1/mean];
        
        num=0;
        total=0;
        
    end
    lambdaMatrix=horzcat(lambdaMatrix,transpose(lambdaVector));
    
    lambdaVector=[];
    
    

end


