package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogoutArg extends Rpc.Data
{
	public int	userid;
	public int	localsid;

	public UserLogoutArg()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(localsid);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		localsid = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			UserLogoutArg o = (UserLogoutArg)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
