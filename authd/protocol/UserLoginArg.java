package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLoginArg extends Rpc.Data
{
	public int	userid;
	public int	localsid;
	public byte	blkickuser;
	public int	freecreatime;

	public UserLoginArg()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(localsid);
		os.marshal(blkickuser);
		os.marshal(freecreatime);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		localsid = os.unmarshal_int();
		blkickuser = os.unmarshal_byte();
		freecreatime = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			UserLoginArg o = (UserLoginArg)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
