# windows commands
wmic nic get AdapterType, Name, Installed, MACAddress, PowerManagementSupported, Speed
ipconfig /all
ipconfig | findstr "adapter"
route print
netsh interface ip show address name="Wi-Fi 3"

# linux
ip link show
nmcli device status
nmcli connection show
netstat -i


# ifaces = scapy.get_if_list()
# print(ifaces)

# scapy windows device methods
winList = scapy.get_windows_if_list()
print(winList)
guidToNameDict = { e["guid"]: e["name"] for e in winList}
print(guidToNameDict)

print(scapy.get_windows_if_list()[0]["name"])

# import json
# test = scapy.get_windows_if_list()
# print(json.dumps(test, indent=4))

# berkeley packet filtering:
http://www.ictbanking.com/LJ/242/11680.html



from scapy.modules.winpcapy import *
from scapy.compat import plain_str 

def test():
    err = create_string_buffer(PCAP_ERRBUF_SIZE)
    devs = POINTER(pcap_if_t)()
    if pcap_findalldevs(byref(devs), err) < 0:
        return
    p = devs
    # Iterate through the different interfaces
    while p:
        name = plain_str(p.contents.name)  # GUID
        description = plain_str(p.contents.description)  # NAME
        print(":".join([name, description]))
        p = p.contents.next

test()

# winList = scapy.get_windows_if_list()
# intfList = scapy.get_if_list()

# # Pull guids and names from the windows list
# guidToNameDict = { e["guid"]: e["name"] for e in winList}

# # Extract the guids from the interface list
# guidsFromIntfList = [(e.split("_"))[1] for e in intfList]

# # Using the interface list of guids, pull the names from the
# # Windows map of guids to names
# namesAllowedList = [guidToNameDict[e] for e in guidsFromIntfList]

# print(guidToNameDict)