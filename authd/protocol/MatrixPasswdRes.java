package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixPasswdRes extends Rpc.Data
{
	public int	retcode;
	public int	userid;
	public int	algorithm;
	public Octets	response;
	public Octets	matrix;

	public MatrixPasswdRes()
	{
		response = new Octets();
		matrix = new Octets();
	}

	public OctetsStream marshal(OctetsStream os)
	{
		os.marshal(retcode);
		os.marshal(userid);
		os.marshal(algorithm);
		os.marshal(response);
		os.marshal(matrix);
		return os;
	}

	public OctetsStream unmarshal(OctetsStream os) throws MarshalException
	{
		retcode = os.unmarshal_int();
		userid = os.unmarshal_int();
		algorithm = os.unmarshal_int();
		os.unmarshal(response);
		os.unmarshal(matrix);
		return os;
	}

	public Object clone()
	{
		try
		{
			MatrixPasswdRes o = (MatrixPasswdRes)super.clone();
			o.response = (Octets)response.clone();
			o.matrix = (Octets)matrix.clone();
			return o;
		}
		catch (Exception e) { }
		return null;
	}

}
