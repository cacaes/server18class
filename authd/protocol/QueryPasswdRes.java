package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryPasswdRes extends Rpc.Data
{
	public byte	retcode;
	public int	userid;
	public Octets	password;

	public QueryPasswdRes()
	{
		password = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(userid);
		os.marshal(password);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_byte();
		userid = os.unmarshal_int();
		os.unmarshal(password);
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryPasswdRes o = (QueryPasswdRes)super.clone();
			o.password = (Octets)password.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
