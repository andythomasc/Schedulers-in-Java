
import java.util.Comparator;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Properties;
import java.util.Queue;

/**
 * Ideal Shortest Job First Scheduler
 *
 * @version 2017
 */
public class IdealSJFScheduler extends AbstractScheduler {

    // TODO
    private PriorityQueue<Process> readyQueue;
    Comparator<Process> processComparator = new Comparator<Process>() {

        @Override
        public int compare(Process o1, Process o2) {
            return new Integer(o1.getNextBurst()).compareTo(new Integer(o2.getNextBurst()));
        }
    };
    @Override
    public void initialize(Properties parameters) {
        
        
        readyQueue = new PriorityQueue<Process>(processComparator);
    }

    /**
     * Adds a process to the ready queue. usedFullTimeQuantum is true if process
     * is being moved to ready after having fully used its time quantum.
     */
    public void ready(Process process, boolean usedFullTimeQuantum) {

        if (readyQueue.isEmpty()) {
            readyQueue.add(process);
        } else {
            readyQueue.offer(process);

//     TODO
        }
    }

    /**
     * Removes the next process to be run from the ready queue and returns it.
     * Returns null if there is no process to run.
     */
    public Process schedule() {
        return readyQueue.poll();
    }
}
