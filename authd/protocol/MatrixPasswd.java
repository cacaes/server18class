package protocol;

import com.goldhuman.Common.*;
import com.goldhuman.Common.Marshal.*;
import com.goldhuman.Common.Security.*;
import com.goldhuman.IO.Protocol.*;

public final class MatrixPasswd extends Rpc
{
	public void Server(Data argument, Data result) throws ProtocolException
	{
		MatrixPasswdArg arg = (MatrixPasswdArg)argument;
		MatrixPasswdRes res = (MatrixPasswdRes)result;
	}

	public void Client(Data argument, Data result) throws ProtocolException
	{
		MatrixPasswdArg arg = (MatrixPasswdArg)argument;
		MatrixPasswdRes res = (MatrixPasswdRes)result;
	}

	public void OnTimeout()
	{
	}

}
