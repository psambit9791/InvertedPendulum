data_inputs=xlsread('PrimeDataTriSample.xlsx'); % Import file

tr_set1=data_inputs(1:end,2);
tr_set2=data_inputs(1:end,3);
ip1 = tr_set1';
ip2 = tr_set2';
tr_set = [ip1; ip2]; %training set prepared

tg_set=data_inputs(1:end,5);
tg_set=tg_set'; %target set prepared

net = feedforwardnet(50,'trainlm');
net.trainParam.epochs = 100000;
net = train(net,tr_set,tg_set);
view(net);
out = sim(net,tr_set);
gensim(net,0.001);