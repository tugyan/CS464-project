sparse_mat = eachMovieReader();
numNonActive=size(sparse_mat,1)-20000;
[activeMat,otherMat]=splitUsers(sparse_mat,20000,numNonActive);
[pred,meanPred] = predictPreferencePD( activeMat(1,:), otherMat(100:1000, :),10,1);