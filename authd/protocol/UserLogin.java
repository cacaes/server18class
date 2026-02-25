package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogin extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		UserLoginArg arg = (UserLoginArg)argument;
		UserLoginRes res = (UserLoginRes)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		UserLoginArg arg = (UserLoginArg)argument;
		UserLoginRes res = (UserLoginRes)result;
	}

	public void OnTimeout()
	{
	}

}
