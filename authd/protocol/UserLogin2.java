package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogin2 extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		UserLogin2Arg arg = (UserLogin2Arg)argument;
		UserLogin2Res res = (UserLogin2Res)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		UserLogin2Arg arg = (UserLogin2Arg)argument;
		UserLogin2Res res = (UserLogin2Res)result;
	}

	public void OnTimeout()
	{
	}

}
