package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryUserPrivilege2 extends Protocol
{
	public int	userid;
	public int	zoneid;

	public QueryUserPrivilege2()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(zoneid);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		zoneid = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryUserPrivilege2 o = (QueryUserPrivilege2)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
