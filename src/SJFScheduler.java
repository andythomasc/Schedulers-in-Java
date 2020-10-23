
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Properties;

/**
 * Shortest Job First Scheduler
 *
 * @version 2017
 */
public class SJFScheduler extends AbstractScheduler {

    // TODO
    double initialBurstEstimate;
    double alpha;
    private PriorityQueue<Process> readyQueue;
    Comparator<Process> processComparator = new Comparator<Process>() {

        @Override
        public int compare(Process o1, Process o2) {
            return new Integer(o1.priority).compareTo(new Integer(o2.getPriority()));
        }
    };

    public SJFScheduler() {

    }

    ;

    @Override
    public void initialize(Properties parameters) {
        initialBurstEstimate = Double.parseDouble(parameters.getProperty("initialBurstEstimate"));
        alpha = Double.parseDouble(parameters.getProperty("alphaBurstEstimate"));
        readyQueue = new PriorityQueue<Process>(processComparator);
    }

    /**
     * Adds a process to the ready queue. usedFullTimeQuantum is true if process
     * is being moved to ready after having fully used its time quantum.
     */
    public void ready(Process process, boolean usedFullTimeQuantum) {

    // TODO
        if (process.getPriority() == 0) {

            process.setPriority((int) initialBurstEstimate);
        } else {
            double alphaTn = process.getRecentBurst() * alpha;
            double tnPlus1 = alphaTn + ((1 - alpha) * initialBurstEstimate);

            process.setPriority((int) tnPlus1);
        }
        readyQueue.add(process);

    }

    /**
     * Removes the next process to be run from the ready queue and returns it.
     * Returns null if there is no process to run.
     */
    public Process schedule() {
        return readyQueue.poll();
    }
}
