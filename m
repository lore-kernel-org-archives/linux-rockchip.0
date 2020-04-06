From: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Subject: [PATCH v2] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
Date: Mon,  6 Apr 2020 13:50:04 +0000
Message-ID: <20200406135006.23759-1-justin.swartz@risingedge.co.za>
References: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e602c1b8-3606-a8d3-c64c-ec9e58315974-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
Cc: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The Mecer Xtreme Mini S6 features a wireless module, based on a
Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
SDIO and UART interfaces respectively.

Define a simple MMC power sequence that declares the GPIO pins
connected to the module's WLAN Disable and Bluetooth Disable pins
as active low reset signals, because both signals must be deasserted
for WLAN radio operation.

Configure the host's SDIO interface for High Speed mode with 1.8v
I/O signalling and IRQ detection over a 4-bit wide bus.

Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
---
Changes in v2:
  - Remove unused disable-wp and deprecated num-slots attributes
    from &sdio, as suggested by Johan Jonker.

 arch/arm/boot/dts/rk3229-xms6.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 679fc2b00..6890af0b7 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -39,6 +39,12 @@
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio2 26 GPIO_ACTIVE_LOW>,
+		              <&gpio2 29 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc_host: vcc-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -202,6 +208,16 @@
 	status = "okay";
 };
 
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	vqmmc-supply = <&vccio_1v8>;
+	status = "okay";
+};
+
 &sdmmc {
 	cap-mmc-highspeed;
 	disable-wp;
-- 
2.11.0
