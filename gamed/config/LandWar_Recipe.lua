----description:This script file is to supply ui help.
----author: wangdongliang


RecipeInfo = {}

RecipeInfo['高级领土'] = { 
  id = 1,
  name = "高级领土",  
  subinfo = {
               {id = 1 ,subname="小有清虚洞天", Recipe = {11,12,13,14,15,16,17,18,31,51,52,53,54}}, 
               {id = 2 ,subname="大有空明洞天", Recipe = {11,12,13,14,15,16,17,18,31,51,52,53,54}}, 
               {id = 3 ,subname="三玄极真洞天", Recipe = {11,12,13,14,15,16,17,18,31,51,52,53,54}}, 
			 }
}

RecipeInfo['中级领土'] = { 
  id = 2,
  name = "中级领土", 
  subinfo = {
    		     {id = 4 ,subname="宝仙九室天", Recipe = {31,51,52,53,54} },
    		     {id = 5 ,subname="大酉华妙天", Recipe = {31,51,52,53,54} },
    		     {id = 6 ,subname="洞阳隐观天", Recipe = {31,51,52,53,54} },
    		     {id = 7 ,subname="白马玄光天", Recipe = {31,51,52,53,54} },
    		     {id = 8 ,subname="金庭崇妙天", Recipe = {31,51,52,53,54} },
    		     {id = 9 ,subname="左神幽虚天", Recipe = {31,51,52,53,54} },
    		     {id = 10 ,subname="太玄法乐天", Recipe = {31,51,52,53,54} },
    		     {id = 11 ,subname="朱明曜真天", Recipe = {31,51,52,53,54} },
    		     {id = 12 ,subname="青田大鹤天", Recipe = {31,51,52,53,54} },
			}
}

RecipeInfo['低级领土'] = { 
  id = 3,
  name = "低级领土", 
  subinfo = {
    		     {id = 13 ,subname="郁木林", Recipe = {51,52,53,54}},
    		     {id = 14 ,subname="大若岩", Recipe = {51,52,53,54}},
    		     {id = 15 ,subname="灵墟", Recipe = {51,52,53,54}},
    		     {id = 16 ,subname="沃洲", Recipe = {51,52,53,54}},
    		     {id = 17 ,subname="博浪沙", Recipe = {51,52,53,54}},
    		     {id = 18 ,subname="元辰山", Recipe = {51,52,53,54}},
    		     {id = 19 ,subname="蓝水溪", Recipe = {51,52,53,54}},
    		     {id = 20 ,subname="洞灵源", Recipe = {51,52,53,54}},
    		     {id = 21 ,subname="绵竹谷", Recipe = {51,52,53,54}},
    		     {id = 22 ,subname="清远宫", Recipe = {51,52,53,54}},
    		     {id = 23 ,subname="云起岩", Recipe = {51,52,53,54}},
    		     {id = 24 ,subname="隐沙洲", Recipe = {51,52,53,54}},
			}
}

function RecipeInfo:GetSelf()
	return self;
end 