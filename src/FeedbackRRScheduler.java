
import java.util.Comparator;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Properties;

/**
 * Feedback Round Robin Scheduler
 *
 * @version 2017
 */
public class FeedbackRRScheduler extends AbstractScheduler {

    // TODO
    private int maxLevels;
    private int quantum;
    private PriorityQueue<Process> readyQueue;
    Comparator<Process> processComparator = new Comparator<Process>() {

        @Override
        public int compare(Process o1, Process o2) {
            return new Integer(o1.priority).compareTo(new Integer(o2.getPriority()));
        }
    };

    public FeedbackRRScheduler() {

    }

    @Override
    public void initialize(Properties parameters) {
        quantum = Integer.parseInt(parameters.getProperty("timeQuantum"));
        readyQueue = new PriorityQueue<Process>(processComparator);
    }

    /**
     * Adds a process to the ready queue. usedFullTimeQuantum is true if process
     * is being moved to ready after having fully used its time quantum.
     */
    public void ready(Process process, boolean usedFullTimeQuantum) {

//        
            if (process.getNextBurst() > quantum) {
                readyQueue.remove(process);
                process.setPriority(process.priority + 1);
                readyQueue.add(process);
            } else {
                readyQueue.offer(process);
            }
            
        };

//     TODO
  //  }

    @Override
    public boolean isPreemptive() {
        return true;
    }

    /**
     * Removes the next process to be run from the ready queue and returns it.
     * Returns null if there is no process to run.
     */
    public Process schedule() {
        return readyQueue.poll();
    }
}
