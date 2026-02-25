package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class KickoutUser extends Protocol
{
	public int	userid;
	public int	localsid;
	public byte	cause;

	public KickoutUser()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(localsid);
		os.marshal(cause);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		localsid = os.unmarshal_int();
		cause = os.unmarshal_byte();
		return os;
	}

	public Object clone()
	{
		try
		{
			KickoutUser o = (KickoutUser)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
