package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryPasswdArg extends Rpc.Data
{
	public Octets	account;

	public QueryPasswdArg()
	{
		account = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(account);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		os.unmarshal(account);
		return os;
	}

	public Object clone()
	{
		try
		{
			QueryPasswdArg o = (QueryPasswdArg)super.clone();
			o.account = (Octets)account.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
