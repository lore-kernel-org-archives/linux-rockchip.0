Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A781CD13D2
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 07:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OV7NwHQee79w2yCAPp+rx0ztYsXOy1QdcW5/z1saCc4=; b=yb7BLyhRLw7Bvt
	lpD0REq8ScYVDLEbScb9PXURgbZ5Vb/084fD6tsWxpY4yoy/sGRZCRDIhn30HaVr7rpLfpawznhyf
	pRjsPuAREDcaN0up1LK8K2mhv7beK599y4QeScr26M7MKMhHT0OOy9/Z7uyh2A4OmMcmKi9ejHggd
	pmbSaqfGCq/UgJ2WW7xu0Cd2Dp07IIYGiAbd3EHPAd1YUcaSDMHBmX2NZVzKIQGEyQ1oQl19Ifz8W
	GTeQkibaqPh53tzcHJYVupSziYOM0lAGWLz2EmvPmxV+6mfV1eLhYMHdIgUBs8LF1jPdiRjWdjoQd
	Fy8Ol+UH9g+3038SWusQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIidg-00000006fxZ-2WDr;
	Tue, 11 Nov 2025 07:18:04 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIidf-00000006fwY-0CNc
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 07:18:04 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB7HYhT022271;
	Tue, 11 Nov 2025 16:17:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        detlev.casanova@collabora.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        kylepzak@projectinitiative.io, dsimic@manjaro.org, alchark@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5 ITX/5B/5B+/5T/5C
Date: Tue, 11 Nov 2025 07:17:29 +0000
Message-ID: <20251111071730.126238-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111071730.126238-1-naoki@radxa.com>
References: <20251111071730.126238-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_231803_324700_305E4784 
X-CRM114-Status: GOOD (  10.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Since GPIO0_A4 is used for cd-gpios in sdmmc, use newly introduced
sdmmc_det_pin instead of default sdmmc_det for pinctrl-0 to set up pin
mux function as GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Split a patch into two; this patch adds properties for pinctrl
- Add fix for ROCK 5B/5B+/5T/5A/5C
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts      | 8 +++++++-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts        | 8 ++++++++
 4 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 6597c251d93c4..4c218ae6677ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -670,6 +670,12 @@ led_pins: led-pins {
 		};
 	};
 
+	mmc {
+		sdmmc_det_pin: sdmmc-det-pin {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie20x1_2_perstn: pcie20x1-2-perstn {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -801,7 +807,7 @@ &sdmmc {
 	no-sdio;
 	no-mmc;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_pin>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 7aac77dfc5f16..a35c9469a2574 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -509,6 +509,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	mmc {
+		sdmmc_det_pin: sdmmc-det-pin {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie2 {
 		pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -598,6 +604,8 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_pin>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..fa0dbb6b8ab7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -377,6 +377,12 @@ io_led: io-led {
 		};
 	};
 
+	mmc {
+		sdmmc_det_pin: sdmmc-det-pin {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pow_en: pow-en {
 			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -436,6 +442,8 @@ &sdmmc {
 	max-frequency = <150000000>;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_pin>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9ba4f19f98582..b837c4e08cec0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -473,6 +473,12 @@ gmac1_rstn: gmac1-rstn {
 		};
 	};
 
+	mmc {
+		sdmmc_det_pin: sdmmc-det-pin {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -537,6 +543,8 @@ &sdmmc {
 	disable-wp;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_pin>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
