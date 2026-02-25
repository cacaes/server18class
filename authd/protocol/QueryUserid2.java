package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class QueryUserid2 extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		QueryUseridArg2 arg = (QueryUseridArg2)argument;
		QueryUseridRes2 res = (QueryUseridRes2)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		QueryUseridArg2 arg = (QueryUseridArg2)argument;
		QueryUseridRes2 res = (QueryUseridRes2)result;
	}

	public void OnTimeout()
	{
	}

}
