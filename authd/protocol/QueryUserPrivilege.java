package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryUserPrivilege extends Protocol
{
	public int	userid;
	public byte	zoneid;

	public QueryUserPrivilege()
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
		zoneid = os.unmarshal_byte();
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryUserPrivilege o = (QueryUserPrivilege)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
