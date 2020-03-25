function Update() 
	NetIn = SKIN:GetMeasure('NetOut');
	num = NetIn:GetValue()
	unit=0
	if(num>=1000)
	then
		num=num/1000
		if(num<10)
		then
			num=num-num%0.1
		else
			num=num-num%1
		end
		unit=unit+1
	end
	if(num>=1000)
	then
		num=num/1000
		if(num<10)
		then
			num=num-num%0.1
		else
			num=num-num%1
		end
		unit=unit+1
	end
	if(num>=1000)
	then
		num=num/1000
		if(num<10)
		then
			num=num-num%0.1
		else
			num=num-num%1
		end
		unit=unit+1
	end
	result=tostring(num)
	if(unit==0)
	then
		result = result..'B'
	end
	if(unit==1)
	then
		result = result..'KB'
	end
	if(unit==2)
	then
		result = result..'MB'
	end
	if(unit==3)
	then
		result = result..'GB'
	end
	print(result)
	return result
end