From: Alexandre Janon <alex14fr-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] Fix I/O aborts on Firefly RK3288
Date: Sun, 01 Sep 2019 23:24:13 +0200
Message-ID: <20190901212413.t561j%alex14fr@gmail.com>
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

Hello everyone,

On my Firefly RK3288 with the binary Rockchip "mini loader" (v2.54), I/Os from
and to some physical addresses (above ff430000) causes kernel panics (Imprecise
external aborts), I don't know precisely why (maybe the 'Trusted' execution
environment ?)

I thus disabled access to these addresses, caused by:
- a quirk in rockchip timer init, targetting timer6-7 @ff810000, which didn't
  seemed to be needed in my case,
- rockchip platsmp boot_secondary CPU, targetting an smp-sram device @ff700000,
- various DT devices advertised as okay statuses, but whose I/O regs cause data
  aborts.

As replacement:
- timer quirk is commented out,
- for platsmp code for secondary CPUs initialization, we use the PSCI method as
  in the Rockchip's 4.4 BSP,
- timer6-7 (@ff810000) are not used, timer1-5 (@ff6b0000) instead,
- dma-controller@ffb20000 is disabled, the one @ff250000 is used instead,
- the efuse@ffb40000 is disabled

By using this patch I can boot mainline kernel entirely from eMMC using
rockchip-linux/u-boot, branch next-dev, to the latest Arch Linux ARM multiv7
rootfs. USB host, HDMI, Ethernet and eMMC work in this kernel, the rest is
untested.

Regards,
Alexandre



diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004e46..138bea00c600 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -12,6 +12,10 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
+	cpus {
+		enable-method = "rockchip,psci-smp";
+	};
+
 	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 1>;
@@ -160,6 +164,8 @@
 		regulator-always-on;
 		vin-supply = <&vcc_io>;
 	};
+
+
 };
 
 &cpu0 {
@@ -478,6 +484,12 @@
 			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+   psci {
+		 compatible = "arm,psci-1.0";
+		 method = "smc";
+   };
+
 };
 
 &saradc {
@@ -572,3 +584,5 @@
 &wdt {
 	status = "okay";
 };
+
+
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index cc893e154fe5..584064880bf8 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -181,7 +181,7 @@
 			arm,pl330-broken-no-flushp;
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
-			status = "disabled";
+			status = "okay";
 		};
 
 		dmac_bus_s: dma-controller@ffb20000 {
@@ -193,6 +193,7 @@
 			arm,pl330-broken-no-flushp;
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
+			status = "disabled";
 		};
 	};
 
@@ -234,14 +235,24 @@
 		arm,no-tick-in-suspend;
 	};
 
-	timer: timer@ff810000 {
+	timer: timer@ff6b0000 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x0 0xff6b0000 0x0 0x20>;
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&xin24m>, <&cru PCLK_TIMER>;
+		clock-names = "timer", "pclk";
+	};
+
+	timer@ff810000 {
 		compatible = "rockchip,rk3288-timer";
 		reg = <0x0 0xff810000 0x0 0x20>;
 		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&xin24m>, <&cru PCLK_TIMER>;
 		clock-names = "timer", "pclk";
+		status = "disabled";
 	};
 
+
 	display-subsystem {
 		compatible = "rockchip,display-subsystem";
 		ports = <&vopl_out>, <&vopb_out>;
@@ -724,9 +735,11 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x0 0xff700000 0x18000>;
+		status = "disabled";
 		smp-sram@0 {
 			compatible = "rockchip,rk3066-smp-sram";
 			reg = <0x00 0x10>;
+			status = "disabled";
 		};
 	};
 
@@ -1390,10 +1403,12 @@
 		#size-cells = <1>;
 		clocks = <&cru PCLK_EFUSE256>;
 		clock-names = "pclk_efuse";
+		status = "disabled";
 
 		cpu_leakage: cpu_leakage@17 {
 			reg = <0x17 0x1>;
 		};
+
 	};
 
 	gic: interrupt-controller@ffc01000 {
diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 649e0a54784c..d9fdcbe30aea 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -372,3 +372,7 @@ static const struct smp_operations rockchip_smp_ops __initconst = {
 
 CPU_METHOD_OF_DECLARE(rk3036_smp, "rockchip,rk3036-smp", &rk3036_smp_ops);
 CPU_METHOD_OF_DECLARE(rk3066_smp, "rockchip,rk3066-smp", &rockchip_smp_ops);
+
+extern const struct smp_operations psci_smp_ops;
+CPU_METHOD_OF_DECLARE(rk3036_smp2, "rockchip,psci-smp", &psci_smp_ops);
+
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index f9797a2b5d0d..4a172d220f72 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -26,14 +26,14 @@
 static void __init rockchip_timer_init(void)
 {
 	if (of_machine_is_compatible("rockchip,rk3288")) {
-		void __iomem *reg_base;
+		//void __iomem *reg_base;
 
 		/*
 		 * Most/all uboot versions for rk3288 don't enable timer7
 		 * which is needed for the architected timer to work.
 		 * So make sure it is running during early boot.
 		 */
-		reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
+	/*	reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
 		if (reg_base) {
 			writel(0, reg_base + 0x30);
 			writel(0xffffffff, reg_base + 0x20);
@@ -43,7 +43,7 @@ static void __init rockchip_timer_init(void)
 			iounmap(reg_base);
 		} else {
 			pr_err("rockchip: could not map timer7 registers\n");
-		}
+		} */
 	}
 
 	of_clk_init(NULL);
