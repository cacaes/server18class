package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixPasswd2Arg extends Rpc.Data
{
	public Octets	account;
	public Octets	challenge;
	public int	loginip;

	public MatrixPasswd2Arg()
	{
		account = new Octets();
		challenge = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(account);
		os.marshal(challenge);
		os.marshal(loginip);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		os.unmarshal(account);
		os.unmarshal(challenge);
		loginip = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			MatrixPasswd2Arg o = (MatrixPasswd2Arg)super.clone();
			o.account = (Octets)account.clone();
			o.challenge = (Octets)challenge.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
