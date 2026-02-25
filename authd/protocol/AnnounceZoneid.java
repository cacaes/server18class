package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class AnnounceZoneid extends Protocol
{
	public byte	zoneid;
	public byte	aid;
	public byte	blreset;

	public AnnounceZoneid()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(zoneid);
		os.marshal(aid);
		os.marshal(blreset);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		zoneid = os.unmarshal_byte();
		aid = os.unmarshal_byte();
		blreset = os.unmarshal_byte();
		return os;
	}

	public Object clone()
	{
		try
		{
			AnnounceZoneid o = (AnnounceZoneid)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
