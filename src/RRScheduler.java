import java.util.Properties;
import java.util.LinkedList;

/**
 * Round Robin Scheduler
 *
 * @version 2017
 */
public class RRScheduler extends AbstractScheduler {

    private LinkedList<Process> readyQueue;
    private int quantum;

    public RRScheduler() {
        readyQueue = new LinkedList<Process>();
    }
    
    /**
     * Initializes the scheduler from the given parameters
     */
    @Override
    public void initialize(Properties parameters) {
        quantum = Integer.parseInt(parameters.getProperty("timeQuantum"));
    }

    /**
     * Adds a process to the ready queue. usedFullTimeQuantum is true if process
     * is being moved to ready after having fully used its time quantum.
     */
    @Override
    public void ready(Process process, boolean usedFullTimeQuantum) {
        readyQueue.offer(process);
        
    }

    /**
     * Returns the time quantum of this scheduler or -1 if the scheduler does
     * not require a timer interrupt.
     */
    @Override
    public int getTimeQuantum() {
        return quantum;
    }

    /**
     * Returns whether the scheduler is preemptive
     */
    public boolean isPreemptive() {
        return true;
    }

    /**
     * Removes the next process to be run from the ready queue and returns it.
     * Returns null if there is no process to run.
     */
    @Override
    public Process schedule() {
        return readyQueue.poll();
    }
}