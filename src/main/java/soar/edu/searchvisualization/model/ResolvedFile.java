package soar.edu.searchvisualization.model;

import java.util.ArrayList;

public class ResolvedFile {
    private String url;
    private String pathFile;
    private int line;
    private int column;
    private ArrayList<String> codes =  new ArrayList<String>();

    public ResolvedFile(String url, String pathFile, int line, int column, ArrayList<String> codes) {
        this.url = url;
        this.pathFile = pathFile;
        this.line = line;
        this.column = column;
        this.codes = codes;
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
    public int getLine() {
        return line;
    }

    /**
     * @return the column
     */
    public int getColumn() {
        return column;
    }

    /**
     * @return the codes
     */
    public ArrayList<String> getCodes() {
        return codes;
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
    public void setLine(int line) {
        this.line = line;
    }

    /**
     * @param column the column to set
     */
    public void setColumn(int column) {
        this.column = column;
    }

    /**
     * @param codes the codes to set
     */
    public void setCodes(ArrayList<String> codes) {
        this.codes = codes;
    }

}