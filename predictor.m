function[prediction]=predictor(theta,X)
C=((theta)')*X';
D=C';
prediction=D;
end