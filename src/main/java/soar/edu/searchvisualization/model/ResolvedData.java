package soar.edu.searchvisualization.model;

import java.util.ArrayList;

public class ResolvedData {

    ArrayList<ResolvedFile> resolvedFiles;

    public ResolvedData() {
        this.resolvedFiles = new ArrayList<ResolvedFile>();
    }

    /**
     * @return the resolvedFiles
     */
    public synchronized ArrayList<ResolvedFile> getResolvedFiles() {
        return resolvedFiles;
    }

    public synchronized void add(ResolvedFile resolvedFile) {
        this.resolvedFiles.add(resolvedFile);
    } 

}