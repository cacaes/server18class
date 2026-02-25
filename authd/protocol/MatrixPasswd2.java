package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixPasswd2 extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		MatrixPasswd2Arg arg = (MatrixPasswd2Arg)argument;
		MatrixPasswd2Res res = (MatrixPasswd2Res)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		MatrixPasswd2Arg arg = (MatrixPasswd2Arg)argument;
		MatrixPasswd2Res res = (MatrixPasswd2Res)result;
	}

	public void OnTimeout()
	{
	}

}
