package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class GChangePasswd extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		GChangePasswdArg arg = (GChangePasswdArg)argument;
		GChangePasswdRes res = (GChangePasswdRes)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		GChangePasswdArg arg = (GChangePasswdArg)argument;
		GChangePasswdRes res = (GChangePasswdRes)result;
	}

	public void OnTimeout()
	{
	}

}
