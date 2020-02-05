From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: dwc2: gadget mode and timeout with GRSTCTL_CSFTRST
Date: Wed, 05 Feb 2020 15:37:33 +0100
Message-ID: <3600884.FGW0xRIbGs@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>, Thinh Nguyen <thinhn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

right now we're experiencing strange behaviour with a dwc2 on Rockchip's
PX30 soc.

With a cable connected to the port, the configfs-snippet below seems to
work and at least creates a acm device on the host. Though I'm told that a
	 picocom -b 115200 /dev/ttyACM
sometimes works ok but also sometimes returns -EBUSY or hangs.
[But I guess that is a separate problem]

But if there is no cable connected when trying to do the configfs steps
we end up with
	dwc2_core_reset: HANG! Soft Reset timeout GRSTCTL GRSTCTL_CSFTRST
and no gadget gets configured.


So I guess to get a feeling for the issue, is this something to be
expected, or at least a known issue, with maybe a fix flying around
somewhere?

Or is this working on other dwc2 platforms correctly and is caused
by some other part talking to the dwc2 doing strange things?


Thanks
Heiko

-------- 8< ---- configfs snippet ------ >8 --------
cd /configfs/usb_gadget
mkdir g1
cd g1
echo "0x1d6d" > idVendor
echo "0x0104" > idProduct
mkdir strings/0x409
echo "0123456789" > strings/0x409/serialnumber
echo "Theobroma Systems" > strings/0x409/manufacturer
echo "Cobra Debug Serial" > strings/0x409/product

# create config
mkdir configs/c.1
mkdir configs/c.1/strings/0x409
echo "conf1" > configs/c.1/strings/0x409/configuration

# create function
mkdir functions/acm.usb0
ln -s functions/acm.usb0 configs/c.1

# activate new config
echo "" > UDC
echo "ff300000.usb" > UDC
