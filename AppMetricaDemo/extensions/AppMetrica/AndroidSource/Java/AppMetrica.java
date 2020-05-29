package ${YYAndroidPackageName};

import android.app.Activity;
import android.util.Log;
import android.app.Application;
import android.content.Context;
import java.util.Currency;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.profile.*;
import com.yandex.metrica.Revenue;

import ${YYAndroidPackageName}.R;
import ${YYAndroidPackageName}.RunnerActivity;
import ${YYAndroidPackageName}.RunnerApplication;
import com.yoyogames.runner.RunnerJNILib;

public class AppMetrica extends ExtensionBase {

	// Initialization

	private String apiKey = "cdb832d6-edfa-4f6a-b57a-ba1bbf925308";

	private class DeviceIDListener implements AppMetricaDeviceIDListener {
		public void onLoaded(String deviceID) {
			int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
			RunnerJNILib.DsMapAddString(dsMapIndex, "id", "requestDeviceID");
			RunnerJNILib.DsMapAddString(dsMapIndex, "device_id", deviceID);
			RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);
		}

		public void onError(AppMetricaDeviceIDListener.Reason reason) {
			switch(reason) {
				case INVALID_RESPONSE:
					Log.i("yoyo", "[APPMETRICA] Device ID request error: INVALID_RESPONSE");
					break;

				case NETWORK:
					Log.i("yoyo", "[APPMETRICA] Device ID request error: NETWORK");
					break;

				case UNKNOWN:
					Log.i("yoyo", "[APPMETRICA] Device ID request error: UNKNOWN");
					break;
			}
		}
	}

	private boolean toBool(double value) {
		if (value < 0.5) {
			return false;
		} else {
			return true;
		}
	}

	/*@Override
	public void onPause() {
		YandexMetrica.pauseSession(RunnerActivity.CurrentActivity);
		Log.i("yoyo", "[APPMETRICA] Pause session " + RunnerActivity.CurrentActivity.toString());
	}

	@Override
	public void onResume() {
		YandexMetrica.resumeSession(RunnerActivity.CurrentActivity);
		Log.i("yoyo", "[APPMETRICA] Start / resume session " + RunnerActivity.CurrentActivity.toString());
	}*/

	private UserProfile.Builder userProfile = UserProfile.newBuilder();


	// GameMaker API

	public void Init() {
		YandexMetricaConfig config = YandexMetricaConfig.newConfigBuilder(apiKey)
			.withLogs()
			.build();

		Context context = RunnerActivity.CurrentActivity.getApplication().getApplicationContext();

		YandexMetrica.activate(context, config);
		Log.i("yoyo", "[APPMETRICA] Initialization " + context.toString());

		Application application = RunnerActivity.CurrentActivity.getApplication();

		YandexMetrica.enableActivityAutoTracking(application);
		Log.i("yoyo", "[APPMETRICA] Start tracking " + application.toString());

	}

	public void requestDeviceID() {
		DeviceIDListener deviceIDListener = new DeviceIDListener();
		YandexMetrica.requestAppMetricaDeviceID(deviceIDListener);
		Log.i("yoyo", "[APPMETRICA] Request Device ID");
	}

	public void eventReport(String eventName) {
		YandexMetrica.reportEvent(eventName);
		Log.i("yoyo", "[APPMETRICA] Report Event " + eventName);
	}

	public void eventReport(String eventName, String eventParameters) {
		YandexMetrica.reportEvent(eventName, eventParameters);
		Log.i("yoyo", "[APPMETRICA] Report Event " + eventName + " with parameters: " + eventParameters);
	}

	public void userProfileSetId(String id) {
		YandexMetrica.setUserProfileID(id);
		Log.i("yoyo", "[APPMETRICA] User ID set: " + id);
	}

	public void userProfileSetName(String name) {
		userProfile = userProfile.apply(Attribute.name().withValue(name));
		Log.i("yoyo", "[APPMETRICA] User Profile name set: " + name);
	}

	public void userProfileSetGenderMale() {
		userProfile = userProfile.apply(Attribute.gender().withValue(GenderAttribute.Gender.MALE));
		Log.i("yoyo", "[APPMETRICA] User Profile gender set: Male");
	}

	public void userProfileSetGenderFemale() {
		userProfile = userProfile.apply(Attribute.gender().withValue(GenderAttribute.Gender.FEMALE));
		Log.i("yoyo", "[APPMETRICA] User Profile gender set: Female");
	}

	public void userProfileSetGenderOther() {
		userProfile = userProfile.apply(Attribute.gender().withValue(GenderAttribute.Gender.OTHER));
		Log.i("yoyo", "[APPMETRICA] User Profile gender set: Other");
	}

	public void userProfileSetAge(double age) {
		userProfile = userProfile.apply(Attribute.birthDate().withAge((int)age));
		Log.i("yoyo", "[APPMETRICA] User Profile age set " + Integer.toString((int)age));
	}

	public void userProfileSetNotificationEnabled(double enabled) {
		boolean isEnabled = toBool(enabled);
		userProfile = userProfile.apply(Attribute.notificationsEnabled().withValue(isEnabled));
		Log.i("yoyo", "[APPMETRICA] User Profile gender set: " + Boolean.toString(isEnabled));		
	}

	public void userProfileSetCustomString(String attribue, String value) {
		userProfile = userProfile.apply(Attribute.customString(attribue).withValue(value));
		Log.i("yoyo", "[APPMETRICA] User Profile custom string \"" + attribue + "\" set: " + value);
	}

	public void userProfileSetCustomNumber(String attribue, double value) {
		userProfile = userProfile.apply(Attribute.customNumber(attribue).withValue(value));
		Log.i("yoyo", "[APPMETRICA] User Profile custom number \"" + attribue + "\" set: " + Double.toString(value));
	}

	public void userProfileSetCustomCounter(String attribue, double value) {
		userProfile = userProfile.apply(Attribute.customCounter(attribue).withDelta(value));
		Log.i("yoyo", "[APPMETRICA] User Profile custom counter \"" + attribue + "\" set: " + Double.toString(value));
	}

	public void userProfileSetCustomBool(String attribue, double value) {
		boolean boolValue = toBool(value);
		userProfile = userProfile.apply(Attribute.customBoolean(attribue).withValue(boolValue));
		Log.i("yoyo", "[APPMETRICA] User Profile custom bool \"" + attribue + "\" set: " + Boolean.toString(boolValue));
	}

	public void userProfileReport() {
		YandexMetrica.reportUserProfile(userProfile.build());
		Log.i("yoyo", "[APPMETRICA] Report User Profile");
	}
	
	public void revenueReport(double price, String currency, String productID, double quantity) {
		Revenue revenue = Revenue.newBuilder(price, Currency.getInstance(currency))
			.withProductID(productID)
			.withQuantity((int)quantity)
			.build();

		YandexMetrica.reportRevenue(revenue);

		Log.i("yoyo", "[APPMETRICA] Report Revenue: " + productID + 
			", price = " + Double.toString(price) + " " + currency +
			", quantity = " + Integer.toString((int)quantity));
	}

	public void revenueReport(double price, String currency, String productID, double quantity, String payload) {
		Revenue revenue = Revenue.newBuilder((int)price, Currency.getInstance(currency))
			.withProductID(productID)
			.withQuantity((int)quantity)
			.withPayload(payload)
			.build();

		YandexMetrica.reportRevenue(revenue);

		Log.i("yoyo", "[APPMETRICA] Report Revenue: " + productID + 
			", price = " + Double.toString(price) + " " + currency +
			", quantity = " + Integer.toString((int)quantity) +
			", payload = " + payload);
	}

	public void revenueReportValidated(String originalJson, String signature, double price, String currency, String productID, double quantity) {
		Revenue.Receipt revenueReceipt = Revenue.Receipt.newBuilder()
			.withData(originalJson)
			.withSignature(signature)
			.build();
	
		Revenue revenue = Revenue.newBuilder(price, Currency.getInstance(currency))
			.withReceipt(revenueReceipt)
			.withProductID(productID)
			.withQuantity((int)quantity)
			.build();

		YandexMetrica.reportRevenue(revenue);

		Log.i("yoyo", "[APPMETRICA] Report Revenue validated: " + productID + 
			", price = " + Double.toString(price) + " " + currency +
			", quantity = " + Integer.toString((int)quantity));
	}

	public void revenueReportValidated(String originalJson, String signature, double price, String currency, String productID, double quantity, String payload) {
		Revenue.Receipt revenueReceipt = Revenue.Receipt.newBuilder()
			.withData(originalJson)
			.withSignature(signature)
			.build();
	
		Revenue revenue = Revenue.newBuilder(price, Currency.getInstance(currency))
			.withReceipt(revenueReceipt)
			.withProductID(productID)
			.withQuantity((int)quantity)
			.withPayload(payload)
			.build();

		YandexMetrica.reportRevenue(revenue);

		Log.i("yoyo", "[APPMETRICA] Report Revenue validated: " + productID + 
			", price = " + Double.toString(price) + " " + currency +
			", quantity = " + Integer.toString((int)quantity) +
			", payload = " + payload);
	}

	public void errorReport(String error) {
		YandexMetrica.reportError(error, null);

		Log.i("yoyo", "[APPMETRICA] Report Error: " + error);
	}

	public void refferalUrlReport(String refferalUrl) {
		YandexMetrica.reportReferralUrl(refferalUrl);

		Log.i("yoyo", "[APPMETRICA] Report Refferal URL: " + refferalUrl);
	}

	public void setLocationTracking(double enabled) {
		boolean isEnabled = toBool(enabled);
		YandexMetrica.setLocationTracking(isEnabled);

		Log.i("yoyo", "[APPMETRICA] Set location tracking: " + Boolean.toString(isEnabled));
	}
}