# Prototype Code
## SmartTrack IoT Prototype

class SmartTrackDevice:
    """IoT device for luggage tracking"""
    
    def __init__(self, device_id):
        self.device_id = device_id
        self.location = None
        self.battery_level = 100
    
    def update_location(self, lat, lon):
        self.location = (lat, lon)
        self.battery_level -= 0.1
        return self.location
