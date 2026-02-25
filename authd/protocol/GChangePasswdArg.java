package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class GChangePasswdArg extends Rpc.Data
{
	public Octets	username;
	public Octets	newpwd;
	public Octets	oldpwd;

	public GChangePasswdArg()
	{
		username = new Octets();
		newpwd = new Octets();
		oldpwd = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(username);
		os.marshal(newpwd);
		os.marshal(oldpwd);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		os.unmarshal(username);
		os.unmarshal(newpwd);
		os.unmarshal(oldpwd);
		return os;
	}

	public Object clone()
	{
		try
		{
			GChangePasswdArg o = (GChangePasswdArg)super.clone();
			o.username = (Octets)username.clone();
			o.newpwd = (Octets)newpwd.clone();
			o.oldpwd = (Octets)oldpwd.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
