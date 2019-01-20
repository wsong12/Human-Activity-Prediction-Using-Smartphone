function fea_num=PCA(Trainingdata,Traininglabel,Testdata,Testlabel,priorVector)

[COEFF,ProjectedTraining]=pca(Trainingdata);
ProjectedTesting=bsxfun(@minus,Testdata,mean(Trainingdata))*COEFF;

[meanMatrix,stdMatrix]=LearnMean_Std(ProjectedTraining,Traininglabel);

for i = 1:561
    feature=i;
    accuracy(1,i)=evaluateMP(ProjectedTesting(:,1:i),Testlabel,priorVector,meanMatrix,stdMatrix,feature)

end

maxacc=max(accuracy);
fea_num=find(accuracy==maxacc); 
