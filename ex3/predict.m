function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.

% 为X添加bias unit
X = [ones(size(X,1), 1), X];
% 计算第一层, size(temp0)为[5000*25]
temp = sigmoid(X * Theta1');
% 添加bias unit, size(temp0)为[5000*26]
temp = [ones(size(temp,1),1), temp];
% 计算第二层即输出层, size(opLayer)为[5000*10]
opLayer = sigmoid(temp * Theta2');
% 取opLayer每行max value及其index
[mp, p] = max(opLayer, [], 2);

% =========================================================================


end
