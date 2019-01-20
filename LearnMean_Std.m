function [meanMatrix,stdMatrix]=LearnMean_Std(Training_adjusted,Traininglabel)
total=0;
num=0;
vector=[];
meanMatrix=[];
meanVector=[];
stdVector=[];
stdMatrix=[];
for i=1:561% Cauculate mean and std for gussian distribution
% 1 4 7 10 13
    for n=1:12
        for j=1:length(Training_adjusted)
            if Traininglabel(j)==n
                total=total+Training_adjusted(j,i);
                num=num+1;
                vector=[vector,Training_adjusted(j,i)];
            end
        end
     
        meanVector=[meanVector,total/num];
        stdVector=[stdVector,std(vector)];
        vector=[];
        num=0;
        total=0;
        
    end
    meanMatrix=horzcat(meanMatrix,transpose(meanVector));
    stdMatrix=horzcat(stdMatrix,transpose(stdVector));
    meanVector=[];
    stdVector=[];
    

end
   




