function [res]= myNMIACC(assignment,Y)

stream = RandStream.getGlobalStream;
reset(stream);
assignment = assignment(:);
[assignment1] = bestMap(Y,assignment);
res(1) = mean(Y==assignment1);
res(2) = MutualInfo(Y,assignment1);
[res(3),~,res(5)] = Fmeasure(Y',assignment');
res(4) = purFuc(Y,assignment);
