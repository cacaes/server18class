package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixPasswd2Res extends Rpc.Data
{
	public int	retcode;
	public int	userid;
	public int	algorithm;
	public Octets	response;
	public Octets	matrix;
	public Octets	seed;
	public Octets	pin;
	public int	rtime;
	public int	currenttime;
	public Rpc.Data.DataVector	forbid;
	public Octets	last_used_elec_number;
	public Octets	ssoinfo;

	public MatrixPasswd2Res()
	{
		response = new Octets();
		matrix = new Octets();
		seed = new Octets();
		pin = new Octets();
		forbid = new Rpc.Data.DataVector(new GRoleForbid());
		last_used_elec_number = new Octets();
		ssoinfo = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(userid);
		os.marshal(algorithm);
		os.marshal(response);
		os.marshal(matrix);
		os.marshal(seed);
		os.marshal(pin);
		os.marshal(rtime);
		os.marshal(currenttime);
		os.marshal(forbid);
		os.marshal(last_used_elec_number);
		os.marshal(ssoinfo);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		userid = os.unmarshal_int();
		algorithm = os.unmarshal_int();
		os.unmarshal(response);
		os.unmarshal(matrix);
		os.unmarshal(seed);
		os.unmarshal(pin);
		rtime = os.unmarshal_int();
		currenttime = os.unmarshal_int();
		os.unmarshal(forbid);
		os.unmarshal(last_used_elec_number);
		os.unmarshal(ssoinfo);
		return os;
	}

	public Object clone()
	{
		try
		{
			MatrixPasswd2Res o = (MatrixPasswd2Res)super.clone();
			o.response = (Octets)response.clone();
			o.matrix = (Octets)matrix.clone();
			o.seed = (Octets)seed.clone();
			o.pin = (Octets)pin.clone();
			o.forbid = (Rpc.Data.DataVector)forbid.clone();
			o.last_used_elec_number = (Octets)last_used_elec_number.clone();
			o.ssoinfo = (Octets)ssoinfo.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
