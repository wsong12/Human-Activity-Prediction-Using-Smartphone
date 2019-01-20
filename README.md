# Human-Activity-Prediction-Using-Smartphone

I. Introduction

For my project, I choose the dataset of Smartphone-Based Recognition of Human Activities and Postural Transitions Dataset. The goal of this project is to predict a person’s human activities (eg. Walking, Walking_upstairs) through the dataset accelerometer and gyroscope 3-axial raw signals with 12 different types of activity status. To achieve this goal, I focus on four parts of the analysis 1) A general review of training dataset and test dataset 2) A Principle Component Analysis to the dataset 3) Two different classification methods to predict the labels 4) A summary for this report

II. General review of the dataset

The dataset used in my project is from accelerometer and gyroscope 3-axial raw signals. The training set has 7767 records and 561 features with 12 labels. The test dataset has 3162 recodes and 561 features also with 12 labels. All of the values are between -1 and 1

III. Principle Component Analysis

Due to the large number of features, I tried to implement the Principle Component Analysis for the original dataset. Using the pca( ) function in Matlab, I can get a reconstructed training dataset, with a 7767*561 Matrix. Then I applied the same component model to the test data, and the reconstructed test dataset is also a 7767*561 matrix.

IV. Classification Methods

In this report, I use two classification methods to predict the labels. And for each classification, I use original dataset and reconstructed dataset separately and compare the accuracies between them. And I also adjust parameters for each of the classification and see the changes of accuracies.

A.Bayes Classification

Bayes classifier is a probabilistic classifier based on applying Bayes’ theorem with strong independence assumption between the features. In our dataset, I applied Bayes classification for original dataset and constructed dataset. I built Bayes classification by scratch in Matlab.

B.SVM

Support vector machines are supervised learning models that analyze data used for classification. I use SVM for original data and dimension-reduced dataset and analyze the accuracies using two different hyper-parameter values.


In conclusion, the performance of SVM is better than Bayes Classifier. I get the highest accuracy in this project is 95.19% using SVM (Original dataset, C=1.0, Kernel=linear)
