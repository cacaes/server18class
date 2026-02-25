package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogin2Res extends Rpc.Data
{
	public int	retcode;
	public int	remain_playtime;
	public int	func;
	public int	funcparm;
	public byte	blIsGM;
	public int	free_time_left;
	public int	free_time_end;
	public int	creatime;
	public int	adduppoint;
	public int	soldpoint;
	public Rpc.Data.DataVector	auth;
	public byte	gender;
	public int	remain_coupon;
	public int	today_exchange_coupon;
	public int	today_remain_exchange_coupon;
	public Octets	nickname;

	public UserLogin2Res()
	{
		auth = new Rpc.Data.DataVector(new MByte());
		nickname = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(remain_playtime);
		os.marshal(func);
		os.marshal(funcparm);
		os.marshal(blIsGM);
		os.marshal(free_time_left);
		os.marshal(free_time_end);
		os.marshal(creatime);
		os.marshal(adduppoint);
		os.marshal(soldpoint);
		os.marshal(auth);
		os.marshal(gender);
		os.marshal(remain_coupon);
		os.marshal(today_exchange_coupon);
		os.marshal(today_remain_exchange_coupon);
		os.marshal(nickname);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		remain_playtime = os.unmarshal_int();
		func = os.unmarshal_int();
		funcparm = os.unmarshal_int();
		blIsGM = os.unmarshal_byte();
		free_time_left = os.unmarshal_int();
		free_time_end = os.unmarshal_int();
		creatime = os.unmarshal_int();
		adduppoint = os.unmarshal_int();
		soldpoint = os.unmarshal_int();
		os.unmarshal(auth);
		gender = os.unmarshal_byte();
		remain_coupon = os.unmarshal_int();
		today_exchange_coupon = os.unmarshal_int();
		today_remain_exchange_coupon = os.unmarshal_int();
		os.unmarshal(nickname);
		return os;
	}

	public Object clone()
	{
		try
		{
			UserLogin2Res o = (UserLogin2Res)super.clone();
			o.auth = (Rpc.Data.DataVector)auth.clone();
			o.nickname = (Octets)nickname.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
