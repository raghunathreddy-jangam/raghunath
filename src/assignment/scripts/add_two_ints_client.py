#!/usr/bin/env python

import sys
import rospy
import matplotlib.pyplot as plt
from assignment.srv import *
result=[]

def add_two_ints_client(x, y):
    
    rospy.wait_for_service('add_two_ints')
    
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum,resp1.time
    
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":

    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print usage()
        sys.exit(1)
    rospy.init_node('add_two_ints_client')

    for k in range (0,300):
        print "Requesting %s+%s"%(x+k, y+k)
        time_client = rospy.get_time()
        (total_sum,time)=add_two_ints_client(x+k, y+k)
        print "%s + %s = %s@%f"%(x+k, y+k,total_sum,time-time_client)
        result.insert(k,time-time_client)

    plt.hist(result)
    plt.title("Time difference")
    plt.xlabel("seconds")
    plt.ylabel("Frequency")
    plt.show()
