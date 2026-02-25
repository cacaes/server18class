package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class AnnounceZoneid2 extends Protocol
{
	public int	zoneid;
	public int	aid;
	public byte	blreset;

	public AnnounceZoneid2()
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
		zoneid = os.unmarshal_int();
		aid = os.unmarshal_int();
		blreset = os.unmarshal_byte();
		return os;
	}

	public Object clone()
	{
		try
		{
			AnnounceZoneid2 o = (AnnounceZoneid2)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

	public void Process(Manager manager, Session session) throws ProtocolException
	{
	}

}
