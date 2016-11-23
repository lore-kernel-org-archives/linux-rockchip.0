From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: [PATCH 9/9] ARM: dts: rockchip: add timer entries to rk3188.dtsi
Date: Wed, 23 Nov 2016 20:29:37 +0300
Message-ID: <1479922177-20136-9-git-send-email-al.kochet@gmail.com>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.lezcano@linaro.org, tglx@linutronix.de, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Alexander Kochetkov <al.kochet@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

This is correct configuration borrowed from 3.0 kernel[1].
timer 6 used as clocksource, timers 0, 1, 4 and 5 used
as clockevents.

Timers can do interrupts and work as expected with correct
driver support.

[1] https://github.com/radxa/linux-rockchip/blob/radxa-stable-3.0/arch/arm/mach-rk3188/rk_timer.c

Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi |   45 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 31f81b2..e2f88c8 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -106,6 +106,51 @@
 		};
 	};
 
+	timer0: timer@20038000 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x20038000 0x20>;
+		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_TIMER0>, <&cru PCLK_TIMER0>;
+		clock-names = "timer", "pclk";
+		status = "disabled";
+	};
+
+	timer1: timer@20038020 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x20038020 0x20>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_TIMER1>, <&cru PCLK_TIMER0>;
+		clock-names = "timer", "pclk";
+		status = "disabled";
+	};
+
+	timer4: timer@20038060 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x20038060 0x20>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_TIMER4>, <&cru PCLK_TIMER0>;
+		clock-names = "timer", "pclk";
+		status = "disabled";
+	};
+
+	timer5: timer@20038080 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x20038080 0x20>;
+		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_TIMER5>, <&cru PCLK_TIMER0>;
+		clock-names = "timer", "pclk";
+		status = "disabled";
+	};
+
+	timer6: timer@200380A0 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x200380A0 0x20>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_TIMER6>, <&cru PCLK_TIMER0>;
+		clock-names = "timer", "pclk";
+		status = "disabled";
+	};
+
 	i2s0: i2s@1011a000 {
 		compatible = "rockchip,rk3188-i2s", "rockchip,rk3066-i2s";
 		reg = <0x1011a000 0x2000>;
-- 
1.7.9.5
