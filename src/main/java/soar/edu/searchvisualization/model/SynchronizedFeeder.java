package soar.edu.searchvisualization.model;

import java.util.ArrayList;

public class SynchronizedFeeder {
    ArrayList<GithubToken> tokens;
    
    public SynchronizedFeeder() {
        tokens = new ArrayList<GithubToken>();
        // please make sure that the number of thread is equal with the number of tokens
        tokens.add(new GithubToken(System.getenv("GITHUB_AUTH_TOKEN_1")));
        tokens.add(new GithubToken(System.getenv("GITHUB_AUTH_TOKEN_2")));
        tokens.add(new GithubToken(System.getenv("GITHUB_AUTH_TOKEN_3")));
    }

    public synchronized GithubToken getAvailableGithubToken() {
        GithubToken token = this.tokens.get(1);
        for (int i = 0; i < this.tokens.size(); i++) {
            if (!this.tokens.get(i).getUsed()) {
                this.tokens.get(i).setUsed(true);
                return tokens.get(i);
            } 
        }
        return token;
    }

    public synchronized void releaseToken(GithubToken token) {
        for (int i = 0; i < this.tokens.size(); i++) {
            if (this.tokens.get(i).getToken().equals(token.getToken())) {
                this.tokens.get(i).setUsed(false);
                break;
            }
        }
    }
    
}