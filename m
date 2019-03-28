From: Jack Mitchell <ml-psbXN780rFT10XsdtD+oqA@public.gmane.org>
Subject: rk3399: nanopc-t4 usb otg
Date: Thu, 28 Mar 2019 11:34:54 +0000
Message-ID: <a94d70c2-8495-bf91-41c5-bff013ade381@embed.me.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-BW
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

Can anyone confirm working operation of USB OTG over a type c phy on an
RK3399 at commit 8c2ffd9174779014c3fe1f96d9dc3641d9175f00 (tag: v5.1-rc2).

I've got a nanopc-t4 here and when I try to load the g_ether driver I
receive

[    6.359280] udc-core: couldn't find an available UDC - added
[g_ether] to list of pending drivers

I've had a look through the dts and all seems to be in order. USB
devices work fine in the host ports and I've confirmed otg mode.

root@rk3399:/sys/kernel/debug/fe800000.dwc3# cat mode
otg

The cable is being detected at plug/unplug as can be seen from

[ 1252.479273] phy phy-ff770000.syscon:usb2-phy@e450.2: charger =
USB_SDP_CHARGER

My defconfig is the standard arm64 as provided with the addition of
CONFIG_USB_ETH=m.

Any information would be helpful, especially if this is working on other
3399 based boards at the mentioned commit.

Regards,
Jack.
