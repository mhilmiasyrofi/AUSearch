package soar.edu.searchvisualization.model;

import java.util.ArrayList;

public class ResolvedFile {
    private ArrayList<Query> queries;
    private String url;
    private String pathFile;
    private ArrayList<Integer> lines;
    private ArrayList<String> codes = new ArrayList<String>();

    public ResolvedFile(ArrayList<Query> queries, String url, String pathFile, ArrayList<Integer> lines, ArrayList<String> codes) {
        this.queries = queries;
        this.url = url;
        this.pathFile = pathFile;
        this.lines = lines;
        this.codes = codes;
    }

    /**
     * @return the queries
     */
    public ArrayList<Query> getQueries() {
        return queries;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @return the pathFile
     */
    public String getPathFile() {
        return pathFile;
    }

    /**
     * @return the line
     */
    public ArrayList<Integer> getLines() {
        return lines;
    }

    /**
     * @return the codes
     */
    public ArrayList<String> getCodes() {
        return codes;
    }


    /**
     * @param queries the queries to set
     */
    public void setQueries(ArrayList<Query> queries) {
        this.queries = queries;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @param pathFile the pathFile to set
     */
    public void setPathFile(String pathFile) {
        this.pathFile = pathFile;
    }

    /**
     * @param line the line to set
     */
    public void setLines(ArrayList<Integer> lines) {
        this.lines = lines;
    }

    /**
     * @param codes the codes to set
     */
    public void setCodes(ArrayList<String> codes) {
        this.codes = codes;
    }

}