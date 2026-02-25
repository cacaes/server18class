package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryPasswd extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		QueryPasswdArg arg = (QueryPasswdArg)argument;
		QueryPasswdRes res = (QueryPasswdRes)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		QueryPasswdArg arg = (QueryPasswdArg)argument;
		QueryPasswdRes res = (QueryPasswdRes)result;
	}

	public void OnTimeout()
	{
	}

}
