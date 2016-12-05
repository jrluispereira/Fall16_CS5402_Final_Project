function [ notCommon ] = notCommon( word )
%Will determine if a word is part of the most common word list being used
%Top 100 so far
%List is from : http://www.wordfrequency.info/

list = dataset('File','mostCommonWords.txt');
list=dataset2cell(list);

for i =1:size(list,1)
    tmp = list(i);
    if strcmpi(word,tmp)
        notCommon = 0;
        return;
    end        
end
notCommon = 1;
end

