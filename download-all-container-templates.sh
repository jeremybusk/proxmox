for i in $(pveam available  | awk '{print $2}'); do pveam download nas-share $i; done
