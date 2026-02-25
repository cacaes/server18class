package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class SSOGetTicketRep extends Protocol
{
	public int	retcode;
	public SSOUserBean	user;
	public Octets	ticket;
	public Octets	local_context;
	public Octets	reserved;

	public SSOGetTicketRep()
	{
		user = new SSOUserBean();
		ticket = new Octets();
		local_context = new Octets();
		reserved = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(user);
		os.marshal(ticket);
		os.marshal(local_context);
		os.marshal(reserved);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		os.unmarshal(user);
		os.unmarshal(ticket);
		os.unmarshal(local_context);
		os.unmarshal(reserved);
		return os;
	}

	public Object clone()
	{
		try
		{
			SSOGetTicketRep o = (SSOGetTicketRep)super.clone();
			o.user = (SSOUserBean)user.clone();
			o.ticket = (Octets)ticket.clone();
			o.local_context = (Octets)local_context.clone();
			o.reserved = (Octets)reserved.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
