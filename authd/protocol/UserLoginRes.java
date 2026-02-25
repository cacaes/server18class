package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLoginRes extends Rpc.Data
{
	public byte	retcode;
	public int	remain_playtime;
	public int	func;
	public int	funcparm;
	public byte	blIsGM;
	public int	free_time_left;
	public int	free_time_end;
	public int	creatime;
	public int	adduppoint;
	public int	soldpoint;

	public UserLoginRes()
	{
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
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_byte();
		remain_playtime = os.unmarshal_int();
		func = os.unmarshal_int();
		funcparm = os.unmarshal_int();
		blIsGM = os.unmarshal_byte();
		free_time_left = os.unmarshal_int();
		free_time_end = os.unmarshal_int();
		creatime = os.unmarshal_int();
		adduppoint = os.unmarshal_int();
		soldpoint = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			UserLoginRes o = (UserLoginRes)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
