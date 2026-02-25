package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class UserLogout extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		UserLogoutArg arg = (UserLogoutArg)argument;
		UserLogoutRes res = (UserLogoutRes)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		UserLogoutArg arg = (UserLogoutArg)argument;
		UserLogoutRes res = (UserLogoutRes)result;
	}

	public void OnTimeout()
	{
	}

}
