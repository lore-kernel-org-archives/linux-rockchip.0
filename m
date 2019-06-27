From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Thu, 27 Jun 2019 15:12:28 +0200
Message-ID: <20190627131228.5223-1-vicencb@gmail.com>
References: <9087476.qcbMaj4rIx@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9087476.qcbMaj4rIx@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Before this patch, the Type-C port on the Sapphire board is dead.
If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
then the port works for about 4 seconds at start-up. This is a
sample trace with a memory stick plugged in:
1.- The memory stick LED lights on and kernel reports:
[    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
[    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 GB/1.87 GiB)
[    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
[    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
[    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
[    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
[    5.951585]  sdb: sdb1
[    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
2.- 4 seconds later the memory stick LED lights off and kernel reports:
[    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger = USB_DCP_CHARGER
3.- After a minute the kernel reports:
[   71.666761] usb 5-1: USB disconnect, device number 2
It has been checked that, although the LED is off, VBUS is present.

If, instead, the dr_mode is changed to host and the phy-supply changed
accordingly, then it works. It has only been tested in host mode.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

On Thursday, June 27, 2019 2:39:59 PM CEST, Heiko Stuebner wrote:
> Hi Vicente,
>
> Am Samstag, 15. Juni 2019, 02:31:01 CEST schrieb Vicente Bergas:
>> Before this patch, the Type-C port on the Sapphire board is dead.
>> If setting the 'regulator-always-on' property to 'vcc5v0_typec0'
>> then the port works for about 4 seconds at start-up. This is a
>> sample trace with a memory stick plugged in:
>> 1.- The memory stick LED lights on and kernel reports: ...
>
> "git am" complains about the patch being broken in "line 21",
> so I guess your Google mailer somehow mangled the patch.
>
> Can you resend in a fixed way please (maybe with git send-email)?

Resent, sorry for the inconvenience.

> Thanks
> Heiko

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 04623e52ac5d..1bc1579674e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -565,12 +565,11 @@
 	status = "okay";
 
 	u2phy0_otg: otg-port {
-		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec0>;
 		status = "okay";
 	};
 };
@@ -620,7 +619,7 @@
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.22.0
