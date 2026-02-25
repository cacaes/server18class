package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class CertChallengeWrap extends Protocol
{
	public int	xid;
	public Octets	challenge;
	public Octets	reserved;
	public Octets	authd_cert;
	public Octets	response;

	public CertChallengeWrap()
	{
		challenge = new Octets();
		reserved = new Octets();
		authd_cert = new Octets();
		response = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(xid);
		os.marshal(challenge);
		os.marshal(reserved);
		os.marshal(authd_cert);
		os.marshal(response);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		xid = os.unmarshal_int();
		os.unmarshal(challenge);
		os.unmarshal(reserved);
		os.unmarshal(authd_cert);
		os.unmarshal(response);
		return os;
	}

	public Object clone()
	{
		try
		{
			CertChallengeWrap o = (CertChallengeWrap)super.clone();
			o.challenge = (Octets)challenge.clone();
			o.reserved = (Octets)reserved.clone();
			o.authd_cert = (Octets)authd_cert.clone();
			o.response = (Octets)response.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
