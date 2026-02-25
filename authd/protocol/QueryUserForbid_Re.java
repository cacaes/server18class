package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryUserForbid_Re extends Protocol
{
	public int	userid;
	public int	list_type;
	public Rpc.Data.DataVector	forbid;

	public QueryUserForbid_Re()
	{
		forbid = new Rpc.Data.DataVector(new GRoleForbid());
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(list_type);
		os.marshal(forbid);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		list_type = os.unmarshal_int();
		os.unmarshal(forbid);
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryUserForbid_Re o = (QueryUserForbid_Re)super.clone();
			o.forbid = (Rpc.Data.DataVector)forbid.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
