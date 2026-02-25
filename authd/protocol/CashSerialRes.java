package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class CashSerialRes extends Rpc.Data
{
	public int	retcode;
	public int	userid;
	public int	zoneid;
	public int	sn;

	public CashSerialRes()
	{
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(userid);
		os.marshal(zoneid);
		os.marshal(sn);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		userid = os.unmarshal_int();
		zoneid = os.unmarshal_int();
		sn = os.unmarshal_int();
		return os;
	}

	public Object clone()
	{
		try
		{
			CashSerialRes o = (CashSerialRes)super.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
