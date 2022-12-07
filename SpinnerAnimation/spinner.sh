#! /bin/bash

spinner=( Ooooo oOooo ooOoo oooOo ooooO )

#fucntion waits for some predefined time  while the spinner spins and then kills it
# the '&' next to the spin function call puts it in the background and moves on
#the pid is to get the process id of the spin function so we can terminate it after
#this can be perhaps be used to animate spinning while it waits to copy a file

wait(){
	spin &
	pid=$!

	for i in {1..10}
	do
	  sleep 1
	done

	kill $pid
	echo ""
}


#the function for actually looping through the spinner array to create spinning animation

spin(){
      while true
      do
	for i in "${spinner[@]}"
	do 
	  echo -ne "\r$i"
	  sleep 0.3s
	done
       done
}


wait
