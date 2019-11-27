package soar.edu.searchvisualization.model;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.github.javaparser.symbolsolver.model.resolution.TypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JarTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver;

import soar.edu.searchvisualization.utils.DirExplorer;

public class SynchronizedTypeSolver {
    private CombinedTypeSolver typeSolver;

    private final String ANDROID_JAR_LOCATION = "src/main/java/com/project/githubsearch/android/";

    public SynchronizedTypeSolver() {
        this.typeSolver = new CombinedTypeSolver(new ReflectionTypeSolver(false),
                new JavaParserTypeSolver(new File("src/main/java")));

        List<File> androidJars = findJarFiles(new File(ANDROID_JAR_LOCATION));
        for (File jar : androidJars) {
            try {
                this.typeSolver.add(JarTypeSolver.getJarTypeSolver(jar.getPath()));
            } catch (IOException e) {
                System.out.println("Can't add the jar: " + jar);
                // TODO Auto-generated catch block
                // e.printStackTrace();
            }
        }

    }

    private List<File> findJarFiles(File src) {
        List<File> files = new LinkedList<File>();
        new DirExplorer((level, path, file) -> path.endsWith(".jar"), (level, path, file) -> {
            files.add(file);
        }).explore(src);

        return files;
    }

    public synchronized void add(TypeSolver typeSolver) {
        this.typeSolver.add(typeSolver);
    }

    public synchronized CombinedTypeSolver getTypeSolver() {
        return this.typeSolver;
    }
}