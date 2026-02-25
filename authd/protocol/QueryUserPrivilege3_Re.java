package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryUserPrivilege3_Re extends Protocol
{
	public int	userid;
	public Rpc.Data.DataVector	auth;

	public QueryUserPrivilege3_Re()
	{
		auth = new Rpc.Data.DataVector(new MInt());
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(auth);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		os.unmarshal(auth);
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryUserPrivilege3_Re o = (QueryUserPrivilege3_Re)super.clone();
			o.auth = (Rpc.Data.DataVector)auth.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
