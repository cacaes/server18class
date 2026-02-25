package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class GChangePasswdRes extends Rpc.Data
{
	public int	retcode;
	public Octets	username;
	public Octets	newpwd;

	public GChangePasswdRes()
	{
		username = new Octets();
		newpwd = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(username);
		os.marshal(newpwd);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		os.unmarshal(username);
		os.unmarshal(newpwd);
		return os;
	}

	public Object clone()
	{
		try
		{
			GChangePasswdRes o = (GChangePasswdRes)super.clone();
			o.username = (Octets)username.clone();
			o.newpwd = (Octets)newpwd.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
