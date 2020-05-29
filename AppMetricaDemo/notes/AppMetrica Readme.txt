Импортировать расширение AppMetrica в проект, выполнить код appmetrica_start() в начале игры.

Device ID.

	appmetrica_request_device_id()
		
		Отправляет запрос на получение Device ID. Вызывает асинхронное событие Social, в котором хранится полуенный Device ID.
		
	Пример:
	
		appmetrica_request_device_id();
	
		затем в Async - Social:
	
		if (async_load[? "id"] == "requestDeviceID") {
			var device_id = async_load[? "device_id"];
			show_debug_message("Device ID: " + string(device_id));
		}

События.

	appmetrica_event_report(event_name)

		Отправляет сообщение о событии.

	Пример:
	
		appmetrica_event_report("TestEvent");
	
	----
	
	appmetrica_event_report_multilevel(event_name, parameters_json);
	
		Отправляет сообщение о событии с вложенными параметрами в формате JSON.
		
	Пример:
	
		var parameter_map = ds_map_create();
		parameter_map[? "Name"] = "Alice";
		parameter_map[? "Age"] = "18";

		appmetrica_event_report_multilevel("TestEventMultilevel", json_encode(parameter_map));

		ds_map_destroy(parameter_map);


Профиль.

	appmetrica_userprofile_set_id(id)
		
		Устанавливает ID для пользовательского профиля. Без вызова функции, AppMetrica сама сгенириует ID (Device ID) и привяжет к нему все атрибуты и события.
		
	Пример:
	
		appmetrica_userprofile_set_id("john_test_id");
		
	----
	
	appmetrica_userprofile_set_*(value) и appmetrica_userprofile_set_custom_*(aatribute, value)
	
		Устанавливают атрибуты профиля перед отправкой.
		
	appmetrica_userprofile_report()
	
		Отправляет атрибуты профиля.
		
	Пример:
	
		appmetrica_userprofile_set_name("John");
		appmetrica_userprofile_set_gender_male();
		appmetrica_userprofile_set_age(24);
		appmetrica_userprofile_set_notofications(true);
		appmetrica_userprofile_set_custom_string("string_attribute", "string");
		appmetrica_userprofile_set_custom_number("number_attribute", 55);
		appmetrica_userprofile_set_custom_counter("counter_attribute", 1);
		appmetrica_userprofile_set_custom_bool("bool_attribute", false);

		appmetrica_userprofile_report();
		

Выручка.

	appmetrica_revenue_report(price, currency, product_id, quantity)
	
		Отправляет сообщение о покупке без валидации.
		
	Пример:
	
		appmetrica_revenue_report(100, "RUB", "test_product", 1);
	
	----
	
	appmetrica_revenue_report_payload(price, currency, product_id, quantity, payload_json)
	
		Отправляет сообщение о покупке без валидации c дополнительной информацией.
		
	Пример:
	
		var payload_map = ds_map_create();
		payload_map[? "OrderID"] = "order_test";
		payload_map[? "source"] = "Google Play";
	
		appmetrica_revenue_report_payload(100, "RUB", "test_product", 1, json_encode(payload_map));
	
		ds_map_destroy(payload_map);
	
	----
	
	appmetrica_revenue_report_validated(original_json, signature, price, currency, product_id, quantity)
	
		Отправляет сообщение о покупке с валидацией.
		Параметры original_json и signature можно получить функциями GPBilling_Purchase_GetOriginalJson и GPBilling_Purchase_GetSignature из расширения Google Play Services.
		Подробнее: https://help.yoyogames.com/hc/en-us/articles/360031457831-Android-Google-Play-Billing-IAPs-
	
	Пример:
	
		var original_json = GPBilling_Purchase_GetSignature(token);
        var signature = GPBilling_Purchase_GetOriginalJson(token);
		
		appmetrica_revenue_report_validated(original_json, signature, 100, "RUB", "test_product", 1);
		
	----
	
	appmetrica_revenue_report_validated_payload(original_json, signature, price, currency, product_id, quantity, payload_json)
	
		Отправляет сообщение о покупке с валидацией и c дополнительной информацией.
		
	Пример:
	
		var original_json = GPBilling_Purchase_GetSignature(token);
        var signature = GPBilling_Purchase_GetOriginalJson(token);
		
		var payload_map = ds_map_create();
		payload_map[? "OrderID"] = "order_test";
		payload_map[? "source"] = "Google Play";
		
		appmetrica_revenue_report_validated(original_json, signature, 100, "RUB", "test_product", 1, json_encode(payload_map));
		
		ds_map_destroy(payload_map);
		

Прочее.

	appmetrica_error_report(error)
	
		Отправляет собственное сообщение об ошибке.
		
	Пример:
	
		appmetrica_error_report("Error resolving something!");
		
	----
	
	appmetrica_refferal_report(refferal_url)
		
		Отправляет сообщение об источнике установки.
		
	Пример:
	
		appmetrica_refferal_report("https://itch.io");
		
	----
	
	appmetrica_set_location_tracking(enabled)
	
		Включает/отключает отправку информации о местоположении устройства (по умолчанию включено).
		
	Пример:
	
		appmetrica_set_location_tracking(false);
		

Have fun!