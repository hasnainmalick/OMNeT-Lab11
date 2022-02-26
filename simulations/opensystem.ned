
package lab11closedsystem.simulations;

import org.omnetpp.queueing.SourceOnce;
import org.omnetpp.queueing.Fork;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Merge;
import org.omnetpp.queueing.Sink;
network opennetwork
{
@display("bgb=597,278");
submodules:
sourceOnce: SourceOnce {
@display("p=60,120");
}
fork: Fork {
@display("p=160,120");
}
queue2: Queue {
@display("p=260,200");
}
queue1: Queue {
@display("p=260,60");
}
merge: Merge {
@display("p=360,120");
}
sink: Sink {
@display("p=460,120");
}
connections:
sourceOnce.out --> fork.in;
fork.out++ --> queue1.in++;
queue1.out --> merge.in++;
merge.out --> sink.in++;
fork.out++ --> queue2.in++;
queue2.out --> merge.in++;
}
