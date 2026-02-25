package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class CashSerialArg extends Rpc.Data
{
	public int	userid;
	public int	zoneid;
	public byte	force;

	public CashSerialArg()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(zoneid);
		os.marshal(force);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		zoneid = os.unmarshal_int();
		force = os.unmarshal_byte();
		return os;
	}

	public Object clone()
	{
		try
		{
			CashSerialArg o = (CashSerialArg)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
