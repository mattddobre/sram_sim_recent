import csv

#file = "snm.conf"

#target = "sky130"

# search for some process configuration
def parse_conf(file, target):
    
    found = False
    file = open(file, "r")
    FILE = csv.reader(file)
    # dictionary to store key value pairs
    f_vec = {}
    
    for LINE in FILE:
        # account for spaces
        if(len(LINE) == 0): 
            continue
            
        line = LINE[0]
    
        
        if(line.find('#') >= 0): 
            continue
        
        
    	# target process found
        if (line.find("begin") >= 0 and line.find(target) >=0):
            found = True
            #f_vec.append(line)
            continue
            
    
        if(found): 
            # reached the end of the process def
            if(line.find("end") >=0):
                found = False
                break
            else: 
                # no need to worry about type
                info = line.split()
                f_vec[info[1]] = info[2]
            
            
    return f_vec


#vdd =  parse_conf(file, target)
# more useful to have a dictionary
#print(vdd)
