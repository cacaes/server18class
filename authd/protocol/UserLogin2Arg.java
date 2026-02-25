package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogin2Arg extends Rpc.Data
{
	public int	userid;
	public int	localsid;
	public byte	blkickuser;
	public int	freecreatime;
	public Octets	used_elec_number;
	public int	reserved1;
	public Octets	reserved2;

	public UserLogin2Arg()
	{
		used_elec_number = new Octets();
		reserved2 = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(userid);
		os.marshal(localsid);
		os.marshal(blkickuser);
		os.marshal(freecreatime);
		os.marshal(used_elec_number);
		os.marshal(reserved1);
		os.marshal(reserved2);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		userid = os.unmarshal_int();
		localsid = os.unmarshal_int();
		blkickuser = os.unmarshal_byte();
		freecreatime = os.unmarshal_int();
		os.unmarshal(used_elec_number);
		reserved1 = os.unmarshal_int();
		os.unmarshal(reserved2);
		return os;
	}

	public Object clone()
	{
		try
		{
			UserLogin2Arg o = (UserLogin2Arg)super.clone();
			o.used_elec_number = (Octets)used_elec_number.clone();
			o.reserved2 = (Octets)reserved2.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
