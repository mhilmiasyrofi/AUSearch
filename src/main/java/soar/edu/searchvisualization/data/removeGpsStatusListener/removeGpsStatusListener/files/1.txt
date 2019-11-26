package jp.ohwada.android.gpsstatussample1;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

/**
 * SatelliteManager
 */ 
public class SatelliteManager {

	private static final long MIN_TIME = 1000;	// 1 sec
	private static final float MIN_DISTANCE = 0;
	private static final String TAB = "\t";
	private static final String LF = "\n";
			
	private LocationManager mLocationManager;
	private GpsStatus mGpsStatus;
	private LocationListener mLocationListener = null;
	private GpsStatus.Listener mGpsStatusListener = null;
		
    /** 
	 * === constructor ===
	 */	     
 	public SatelliteManager( Context context ) {                          
		mLocationManager = (LocationManager) context.getSystemService( Context.LOCATION_SERVICE );
		mGpsStatus = mLocationManager.getGpsStatus( null );
	}

    /** 
	 * addGpsStatusListener
	 */	
 	public void addGpsStatusListener( GpsStatus.Listener listener ) {
 		mGpsStatusListener = listener;	
		mLocationManager.addGpsStatusListener( mGpsStatusListener );
	}

    /** 
	 * removeGpsStatusListener
	 */	
 	public void removeGpsStatusListener() {	
 		if ( mGpsStatusListener != null ) {
			mLocationManager.removeGpsStatusListener( mGpsStatusListener );
		}
	}

    /** 
	 * requestLocationUpdates
	 */		
 	public void requestLocationUpdates() {	
 		mLocationListener = new DummyLocationListener();
		mLocationManager.requestLocationUpdates( 
			LocationManager.GPS_PROVIDER, 
			MIN_TIME, 
			MIN_DISTANCE, 
			mLocationListener );
	}

    /** 
	 * removeUpdates
	 */
 	public void removeUpdates() {		
 		if ( mLocationListener != null ) {
   			mLocationManager.removeUpdates( mLocationListener );
		}
	}

	/**
	 * getSatellites
	 */     
	public Iterable<GpsSatellite> getSatellites() {
		Iterable<GpsSatellite> satellites = mGpsStatus.getSatellites(); 
		mGpsStatus = mLocationManager.getGpsStatus( mGpsStatus ); 
		return satellites;  
	}

	/**
	 * getSatelliteMsg
	 */     
	public String getSatelliteMsg( Iterable<GpsSatellite> satellites ) {
		String str = "Prn : Azimuth Elevation Snr " + LF;    		 
		for( GpsSatellite sat : satellites ) {
			str += sat.getPrn() + " : " + TAB;
			str += sat.getAzimuth() + TAB;
			str += sat.getElevation() + TAB;
			str += sat.getSnr() + LF;
		} 
		return str;
	}

	/**
	 * getEvent
	 */ 	
	public String getEvent( int event ) {
		String str = "";
		switch( event ) {
			case GpsStatus.GPS_EVENT_STARTED:
				str = "STARTED";
				break;
			case GpsStatus.GPS_EVENT_STOPPED:
				str = "STOPPED";
				break;
			case GpsStatus.GPS_EVENT_FIRST_FIX:
				str = "FIRST_FIX";
				break;
			case GpsStatus.GPS_EVENT_SATELLITE_STATUS:
				str = "SATELLITE_STATUS";
				break;
		}
		return str;			
	}
	
	/**
	 * class DummyLocationListener
	 */    
	private class DummyLocationListener implements LocationListener {
		@Override
		public void onLocationChanged(Location mLocation) {
			// dummy
		}
		@Override
		public void onProviderDisabled(String provider) {
			// dummy
		}
		@Override
		public void onProviderEnabled(String provider) { 
			// dummy
		}
		@Override
		public void onStatusChanged(String provider, int status, Bundle extras) { 
			// dummy
		}
	}
    	        
}
