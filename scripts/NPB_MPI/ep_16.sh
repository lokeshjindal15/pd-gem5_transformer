#!/bin/bash
/sbin/m5 resetstats
mpirun -np 64 -H 10.0.0.2,10.0.0.3,10.0.0.4,10.0.0.5,10.0.0.6,10.0.0.7,10.0.0.8,10.0.0.9,10.0.0.10,10.0.0.11,10.0.0.12,10.0.0.13,10.0.0.14,10.0.0.15,10.0.0.16,10.0.0.17 /benchmark/NPB3.3-MPI/bin/ep.S.64
/sbin/m5 exit
