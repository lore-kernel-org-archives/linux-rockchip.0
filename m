From: 4omecha-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Subject: [rk3188-radxa] USB reset, cannot enumerate
Date: Mon, 08 Oct 2018 12:33:22 +0200
Message-ID: <1644317.H7zTSKHW2t@think-future.de>
Reply-To: "4omecha-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org" <4omecha-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

When cloning the micro-sdcard (internal reader, boot device) to a standard 
size sdcard on a rk3188 based SoC (radxa rock pro) using dd the transfer fails 
after a couple of seconds. It recovers only after un-/replugging. dmesg shows 
the following USB device messages:

usb 2-1.3: New USB device found, idVendor=05e3, idProduct=0608, 
bcdDevice=60.52
usb 2-1.3: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1.3: Product: USB2.0 Hub
hub 2-1.3:1.0: USB hub found
hub 2-1.3:1.0: 4 ports detected
hub 2-1.3:1.0: hub_ext_port_status failed (err = -71)
hub 2-1.3:1.0: hub_ext_port_status failed (err = -71)
hub 2-1.3:1.0: hub_ext_port_status failed (err = -71)
hub 2-1.3:1.0: hub_ext_port_status failed (err = -71)
hub 2-1.3:1.0: hub_ext_port_status failed (err = -71)
usb 2-1.3: Failed to suspend device, error -71
usb 2-1.3: USB disconnect, device number 21
usb 2-1.3: new high-speed USB device number 22 using dwc2
usb 2-1.3: device descriptor read/64, error -71
usb 2-1.3: New USB device found, idVendor=05e3, idProduct=0608, 
bcdDevice=60.52
usb 2-1.3: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1.3: Product: USB2.0 Hub
hub 2-1.3:1.0: USB hub found
hub 2-1.3:1.0: 4 ports detected
usb 2-1.3.2: new high-speed USB device number 23 using dwc2
usb 2-1.3.2: New USB device found, idVendor=1bcf, idProduct=0c31, bcdDevice= 
1.32
-- 

usb 2-1.3.2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 2-1.3.2: Product: USB to Serial-ATA bridge
usb 2-1.3.2: Manufacturer: Sunplus Innovation Technology 
usb 2-1.3.2: SerialNumber: FAFDFFF0FF183335804373
usb-storage 2-1.3.2:1.0: USB Mass Storage device detected
scsi host0: usb-storage 2-1.3.2:1.0
usb 2-1.3: USB disconnect, device number 22
usb 2-1.3.2: USB disconnect, device number 23
usb 2-1.3: new high-speed USB device number 24 using dwc2
usb 2-1-port3: Cannot enable. Maybe the USB cable is bad?
usb 2-1.3: new high-speed USB device number 25 using dwc2
usb 2-1.3: device not accepting address 25, error -71
usb 2-1-port3: attempt power cycle
usb 2-1.3: new full-speed USB device number 27 using dwc2
usb 2-1.3: device descriptor read/64, error -32
usb 2-1.3: device descriptor read/64, error -32

This happens reproducibly. It happens when using the sdcard-reader connected 
to an external USB-hub and it also happens when the reader is connected 
directly to the internal USB-hub. I tried dd bs>=512 and it always failed.

The reader and cable is used on a daily basis w/ other hosts and has always 
been working reliably.

Is USB on rk3188 known to be unstable? Is it the PCB layout ("Maybe the USB 
cable is bad?")?

Any ideas, hints anyone?

Cheers

4omecha
