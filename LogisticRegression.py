#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May 10 17:55:45 2018

@author: swj
"""

import pandas as pd
import scipy.io
from sklearn import linear_model
from sklearn.metrics import accuracy_score
import numpy as np
from sklearn.svm import SVC

def logistic(Trainingdata,Traininglabel,Testdata,Testlabel):
    clf = SVC(C=1,kernel='rbf') #Change the kernel type and C value here
    clf = clf.fit(Trainingdata,Traininglabel)

    Testpredict = clf.predict(Testdata)
    accuracy=accuracy_score(Testlabel,Testpredict)
    return accuracy

Trainingdata = pd.read_csv('X_train.txt',sep=" ",header=None)
Traininglabel = pd.read_csv('Y_train.txt',sep=" ",header=None)
Testdata = pd.read_csv('X_test.txt',sep=" ",header=None)
Testlabel = pd.read_csv('Y_test.txt',sep=" ",header=None)
ProjectedTraining = pd.read_csv('ProjectedTraining.csv',header=None)

ProjectedTest = pd.read_csv('ProjectedTesting.csv',header=None)



#Logistic regression for original dataset
accuracy1=logistic(Trainingdata,Traininglabel,Testdata,Testlabel)
print('Logistic regression for original dataset is', accuracy1)
#Logistic regression for reduced dimension dataset
accuracy2=logistic(ProjectedTraining.iloc[:,1:74],Traininglabel,ProjectedTest.iloc[:,1:74],Testlabel)
print('Logistic regression for reduced-dimension dataset is', accuracy2)
