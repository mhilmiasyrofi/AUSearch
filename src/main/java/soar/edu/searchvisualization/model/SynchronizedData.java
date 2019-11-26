package soar.edu.searchvisualization.model;

import org.json.JSONArray;
import org.json.JSONObject;

public class SynchronizedData {
    private JSONArray data = new JSONArray();

    public synchronized void add(JSONObject obj) {
        data.put(obj);
    }

    public synchronized void addArray(JSONArray arr) {
        for (int it = 0; it < arr.length(); it++) {
            JSONObject instance = new JSONObject(arr.get(it).toString());
            JSONObject obj = new JSONObject();
            obj.put("id", data.length());
            obj.put("html_url", instance.getString("html_url"));
            data.put(obj);
        }
    }

    public synchronized JSONArray getData() {
        return data;
    }
}