package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class GMKickoutUser extends Protocol
{
	public int	gmroleid;
	public int	localsid;
	public int	kickuserid;
	public int	forbid_time;
	public Octets	reason;

	public GMKickoutUser()
	{
		reason = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(gmroleid);
		os.marshal(localsid);
		os.marshal(kickuserid);
		os.marshal(forbid_time);
		os.marshal(reason);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		gmroleid = os.unmarshal_int();
		localsid = os.unmarshal_int();
		kickuserid = os.unmarshal_int();
		forbid_time = os.unmarshal_int();
		os.unmarshal(reason);
		return os;
	}

	public Object clone()
	{
		try
		{
			GMKickoutUser o = (GMKickoutUser)super.clone();
			o.reason = (Octets)reason.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
