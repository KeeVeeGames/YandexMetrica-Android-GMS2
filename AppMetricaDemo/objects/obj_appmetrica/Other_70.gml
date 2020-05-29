if (async_load[? "id"] == "requestDeviceID") {
	var device_id = async_load[? "device_id"];
	
	show_debug_message("Device ID: " + string(device_id));
}