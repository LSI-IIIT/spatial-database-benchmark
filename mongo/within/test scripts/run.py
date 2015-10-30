import subprocess,os
 
os.environ['line_layer_size'] = '10'
os.environ['box_layer_size'] = '10'
os.system('sh run.sh $line_layer_size $box_layer_size')
