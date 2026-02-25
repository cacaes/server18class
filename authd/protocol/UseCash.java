package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UseCash extends Protocol
{
	public int	userid;
	public int	zoneid;
	public int	aid;
	public int	point;
	public int	cash;

	public UseCash()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(zoneid);
		os.marshal(aid);
		os.marshal(point);
		os.marshal(cash);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		zoneid = os.unmarshal_int();
		aid = os.unmarshal_int();
		point = os.unmarshal_int();
		cash = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			UseCash o = (UseCash)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
