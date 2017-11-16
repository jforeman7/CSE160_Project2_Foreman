#include "../../includes/socket.h"

configuration TransportC
{
	provides interface Transport;
	
	// Data Structrures.
	uses interface List<socket_store_t> as SocketsInterface;
}

implementation
{
	// Main component wiring.
	components TransportP;
	Transport = TransportP;
	
	// Data Structure wiring.
	TransportP.SocketList = SocketsInterface;
}
