package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixFailure extends Protocol
{
	public int	userid;
	public int	loginip;
	public int	weight;

	public MatrixFailure()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(loginip);
		os.marshal(weight);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		loginip = os.unmarshal_int();
		weight = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			MatrixFailure o = (MatrixFailure)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
