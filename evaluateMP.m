function accuracy=evaluateMP(Test_adjusted,Testlabel,priorVector,meanMatrix,stdMatrix,lambdaMatrix)

n=0;
for i=1:length(Test_adjusted)
    labelpredict=labelMP(Test_adjusted(i,:),meanMatrix,stdMatrix,lambdaMatrix,priorVector);
    if labelpredict==Testlabel(i)
        n=n+1;
    end
end
   

accuracy=n/length(Test_adjusted);





    