mkdir -p classes
javac -d classes ./src/*.java

cd classes
for i in {1..3}
do
	for j in 10 20 30 40 50
	do
		java InputGenerator ../experiment1/seed$i/FCFS/input_parameters_meanCPU_$j.prp ../experiment1/seed$i/FCFS/inputs$j.in
		java InputGenerator ../experiment1/seed$i/FeedbackRRScheduler/input_parameters_meanCPU_$j.prp ../experiment1/seed$i/FeedbackRRScheduler/inputs$j.in
		java InputGenerator ../experiment1/seed$i/IdealSJF/input_parameters_meanCPU_$j.prp ../experiment1/seed$i/IdealSJF/inputs$j.in
		java InputGenerator ../experiment1/seed$i/SJF/input_parameters_meanCPU_$j.prp ../experiment1/seed$i/SJF/inputs$j
		java InputGenerator ../experiment1/seed$i/RR/input_parameters_meanCPU_$j.prp ../experiment1/seed$i/RR/inputs$j.in
	done
done

for i in {1..3}
do
	for j in 10 20 30 40 50
	do
		java Simulator ../experiment1/seed$i/FCFS/simulator_parameters.prp ../experiment1/seed$i/FCFS/out$j.out ../experiment1/seed$i/FCFS/inputs$j.in
		java Simulator ../experiment1/seed$i/FeedbackRRScheduler/simulator_parameters.prp ../experiment1/seed$i/FeedbackRRScheduler/out$j.out ../experiment1/seed$i/FeedbackRRScheduler/inputs$j.in
		java Simulator ../experiment1/seed$i/IdealSJF/simulator_parameters.prp ../experiment1/seed$i/IdealSJF/out$j.out ../experiment1/seed$i/IdealSJF/inputs$j.in
		java Simulator ../experiment1/seed$i/SJF/simulator_parameters.prp ../experiment1/seed$i/SJF/out$j.out ../experiment1/seed$i/SJF/inputs$j.in
		java Simulator ../experiment1/seed$i/RR/simulator_parameters.prp ../experiment1/seed$i/RR/out$j.out ../experiment1/seed$i/RR/inputs$j.in
	done
done


for i in {1..3}
do
	for j in {1..10}
	do
		java InputGenerator ../experiment2/seed$i/FCFS/input_parameters$j.prp ../experiment2/seed$i/FCFS/inputs$j.in
		java InputGenerator ../experiment2/seed$i/FeedbackRRScheduler/input_parameters$j.prp ../experiment2/seed$i/FeedbackRRScheduler/inputs$j.in
		java InputGenerator ../experiment2/seed$i/IdealSJF/input_parameters$j.prp ../experiment2/seed$i/IdealSJF/inputs$j.in
		java InputGenerator ../experiment2/seed$i/SJF/input_parameters$j.prp ../experiment2/seed$i/SJF/inputs$j.in
		java InputGenerator ../experiment2/seed$i/RR/input_parameters$j.prp ../experiment2/seed$i/RR/inputs$j.in
	done
done

for i in {1..3}
do
	for j in {1..10}
	do
		java Simulator ../experiment2/seed$i/FCFS/simulator_parameters.prp ../experiment2/seed$i/FCFS/out$j.out ../experiment2/seed$i/FCFS/inputs$j.in
		java Simulator ../experiment2/seed$i/FeedbackRRScheduler/simulator_parameters.prp ../experiment2/seed$i/FeedbackRRScheduler/out$j.out ../experiment2/seed$i/FeedbackRRScheduler/inputs$j.in
		java Simulator ../experiment2/seed$i/IdealSJF/simulator_parameters.prp ../experiment2/seed$i/IdealSJF/out$j.out ../experiment2/seed$i/IdealSJF/inputs$j.in
		java Simulator ../experiment2/seed$i/SJF/simulator_parameters.prp ../experiment2/seed$i/SJF/out$j.out ../experiment2/seed$i/SJF/inputs$j.in
		java Simulator ../experiment2/seed$i/RR/simulator_parameters.prp ../experiment2/seed$i/RR/out$j.out ../experiment2/seed$i/RR/inputs$j.in
	done
done

for i in {1..3}
do
	for j in {1..10}
	do
		java InputGenerator ../experiment3/seed$i/FCFS/input_parameters$j.prp ../experiment3/seed$i/FCFS/inputs$j.in
		java InputGenerator ../experiment3/seed$i/FeedbackRRScheduler/input_parameters$j.prp ../experiment3/seed$i/FeedbackRRScheduler/inputs$j.in
		java InputGenerator ../experiment3/seed$i/IdealSJF/input_parameters$j.prp ../experiment3/seed$i/IdealSJF/inputs$j.in
		java InputGenerator ../experiment3/seed$i/SJF/input_parameters$j.prp ../experiment3/seed$i/SJF/inputs$j.in
		java InputGenerator ../experiment3/seed$i/RR/input_parameters$j.prp ../experiment3/seed$i/RR/inputs$j.in
	done
done

for i in {1..3}
do
	for j in {1..10}
	do
		java Simulator ../experiment3/seed$i/FCFS/simulator_parameters.prp ../experiment3/seed$i/FCFS/out$j.out ../experiment3/seed$i/FCFS/inputs$j.in
		java Simulator ../experiment3/seed$i/FeedbackRRScheduler/simulator_parameters.prp ../experiment3/seed$i/FeedbackRRScheduler/out$j.out ../experiment3/seed$i/FeedbackRRScheduler/inputs$j.in
		java Simulator ../experiment3/seed$i/IdealSJF/simulator_parameters.prp ../experiment3/seed$i/IdealSJF/out$j.out ../experiment3/seed$i/IdealSJF/inputs$j.in
		java Simulator ../experiment3/seed$i/SJF/simulator_parameters.prp ../experiment3/seed$i/SJF/out$j.out ../experiment3/seed$i/SJF/inputs$j.in
		java Simulator ../experiment3/seed$i/RR/simulator_parameters.prp ../experiment3/seed$i/RR/out$j.out ../experiment3/seed$i/RR/inputs$j.in
	done
done


for i in {1..3}
do
	for j in {1..10}
	do
		java InputGenerator ../experiment4/seed$i/FCFS/input_parameters$j.prp ../experiment4/seed$i/FCFS/inputs$j.in
		java InputGenerator ../experiment4/seed$i/FeedbackRRScheduler/input_parameters$j.prp ../experiment4/seed$i/FeedbackRRScheduler/inputs$j.in
		java InputGenerator ../experiment4/seed$i/IdealSJF/input_parameters$j.prp ../experiment4/seed$i/IdealSJF/inputs$j.in
		java InputGenerator ../experiment4/seed$i/SJF/input_parameters$j.prp ../experiment4/seed$i/SJF/inputs$j.in
		java InputGenerator ../experiment4/seed$i/RR/input_parameters$j.prp ../experiment4/seed$i/RR/inputs$j.in
	done
done

for i in {1..3}
do
	for j in {1..10}
	do
		java Simulator ../experiment4/seed$i/FCFS/simulator_parameters.prp ../experiment4/seed$i/FCFS/out$j.out ../experiment4/seed$i/FCFS/inputs$j.in
		java Simulator ../experiment4/seed$i/FeedbackRRScheduler/simulator_parameters.prp ../experiment4/seed$i/FeedbackRRScheduler/out$j.out ../experiment4/seed$i/FeedbackRRScheduler/inputs$j.in
		java Simulator ../experiment4/seed$i/IdealSJF/simulator_parameters.prp ../experiment4/seed$i/IdealSJF/out$j.out ../experiment4/seed$i/IdealSJF/inputs$j.in
		java Simulator ../experiment4/seed$i/SJF/simulator_parameters.prp ../experiment4/seed$i/SJF/out$j.out ../experiment4/seed$i/SJF/inputs$j.in
		java Simulator ../experiment4/seed$i/RR/simulator_parameters.prp ../experiment4/seed$i/RR/out$j.out ../experiment4/seed$i/RR/inputs$j.in
	done
done

