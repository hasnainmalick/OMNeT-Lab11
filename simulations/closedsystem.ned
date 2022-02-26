
package lab11closedsystem.simulations;

import org.omnetpp.queueing.Fork;
import org.omnetpp.queueing.Merge;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.SourceOnce;
network closedbatch
{
@display("bgb=500,320");
submodules:
fork: Fork {
@display("p=155,116");
}
merge1: Merge {
@display("p=328,116");
}
sourceOnce: SourceOnce {
@display("p=76,261");
}
queue1: Queue {
@display("p=243,53");
}
queue2: Queue {
@display("p=243,188");
}
merge2: Merge {
@display("p=243,261");
}
connections:
fork.out++ --> queue1.in++;
queue1.out --> merge1.in++;
fork.out++ --> queue2.in++;
queue2.out --> merge1.in++;
merge1.out --> merge2.in++;
sourceOnce.out --> merge2.in++;
merge2.out --> fork.in;
}
