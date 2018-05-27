From: <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
Subject: Patch "ARM: dts: rockchip: Add missing #sound-dai-cells on rk3288"
 has been added to the 4.14-stable tree
Date: Sun, 27 May 2018 17:14:00 +0200
Message-ID: <15274340406629@kroah.com>
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
To: alexander.levin-0li6OtcxBFHby3iVrkZq2A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: stable-commits-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


This is a note to let you know that I've just added the patch titled

    ARM: dts: rockchip: Add missing #sound-dai-cells on rk3288

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm-dts-rockchip-add-missing-sound-dai-cells-on-rk3288.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org> know about it.


From foo@baz Sun May 27 16:52:54 CEST 2018
From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date: Thu, 1 Mar 2018 14:25:35 -0600
Subject: ARM: dts: rockchip: Add missing #sound-dai-cells on rk3288

From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

[ Upstream commit 4e943a890cef42e90f43ce6be64728a290b97c55 ]

dtc now gives the following warning:

arch/arm/boot/dts/rk3288-tinker.dtb: Warning (sound_dai_property): /sound/simple-audio-card,codec: Missing property '#sound-dai-cells' in node /hdmi@ff980000 or bad phandle (referred from sound-dai[0])

Add the missing #sound-dai-cells property.

Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Signed-off-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Sasha Levin <alexander.levin-0li6OtcxBFHby3iVrkZq2A@public.gmane.org>
Signed-off-by: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
---
 arch/arm/boot/dts/rk3288.dtsi |    2 ++
 1 file changed, 2 insertions(+)

--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -927,6 +927,7 @@
 	i2s: i2s@ff890000 {
 		compatible = "rockchip,rk3288-i2s", "rockchip,rk3066-i2s";
 		reg = <0x0 0xff890000 0x0 0x10000>;
+		#sound-dai-cells = <0>;
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -1122,6 +1123,7 @@
 		compatible = "rockchip,rk3288-dw-hdmi";
 		reg = <0x0 0xff980000 0x0 0x20000>;
 		reg-io-width = <4>;
+		#sound-dai-cells = <0>;
 		rockchip,grf = <&grf>;
 		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>;


Patches currently in stable-queue which might be from robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org are

queue-4.14/microblaze-switch-to-no_bootmem.patch
queue-4.14/arm64-dts-cavium-fix-pci-bus-dtc-warnings.patch
queue-4.14/dmaengine-mv_xor_v2-fix-clock-resource-by-adding-a-register-clock.patch
queue-4.14/arm-dts-rockchip-add-missing-sound-dai-cells-on-rk3288.patch
queue-4.14/pinctrl-artpec6-dt-add-missing-pin-group-uart5nocts.patch
