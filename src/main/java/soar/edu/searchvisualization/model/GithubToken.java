package soar.edu.searchvisualization.model;

public class GithubToken {
    String token;
    boolean used;
    
    public GithubToken(String token) {
        this.token = token;
        this.used = false;
    }

    /**
     * @return the token
     */
    public String getToken() {
        return token;
    }
    
    /**
     * @return the used
     */
    public boolean getUsed() {
        return used;
    }

    /**
     * @param token the token to set
     */
    public void setToken(String token) {
        this.token = token;
    }

    /**
     * @param used the isUsed to set
     */
    public void setUsed(boolean used) {
        this.used = used;
    }
}