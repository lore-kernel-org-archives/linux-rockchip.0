Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03FC9C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR3ZjHaWJ/sWhtkpgXLxxiJJKjIFQcbkZGK2hh/xsDE=; b=GxT9S3B9Qv55U6
	+FAis8UfsSBTHgAHlmXaWQo8zT1Oc/p//eplqP0Rdnr0qVqd6hSUQ90LtK4QCrb+c/PphYcF22OGx
	wAGIz2W6PiKmrxLbbY2p1sRATm70/FGEeGjwB7SSJKoHX450hm9Srs77X3QoWP0fabYoHzqxWY6FK
	mDLYayJ8acsf84E9mbfXBkA8+3bQiMXhni3+lGZUaP717kLni9SNhw6Id5gZgumzkO7VExVDKkdQ8
	khTmTTObnPPG8jKYXO+IvvOZSidejLgwIW5vceQzHPthPgffqpxiRpWsN0SL09jSUZcUgDGuPdH1u
	B2Nixx+hViZkADU/Z40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Na-007Ejf-QP; Fri, 30 Sep 2022 05:16:06 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007Cwy-KZ; Fri, 30 Sep 2022 05:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=CzlWQu3A1mClcSu8Q/+U0oU9SfnYjCXu1cD9OxHY0xA=; b=Pr99J+e7Xmh2eC7NtAyWjs9UyS
	V5p1C8QM9DSIzKalgw6gibz3OB97t3La6sxPtS4A6eMiJHN0gtxV2z23KWFVW2+dwUR0sqAgqCOo6
	Dpu38kFowhi8NakcfbrxMcaGnKh+dbV39ZDRvzjn8N/4+KODMSQhUQfKAD6iEjzjd+EhmxRWEFoOD
	2+c4eTc7AL+LniqUASXtlMSlNhUc04Uhuap3e5xUXBWZ0u2pSn9bRL85ln5KVxlXRv1R/qC70Blj/
	lX8jOUvrRLOuBQ84G4adcmadHOddVUVes1ykokV5SFFrxyrY0MlDnQ8mA5NIT1F1PzjYliWQ9E/6f
	XQOXpZgQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kd-00DjeY-9F; Fri, 30 Sep 2022 07:13:03 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kc-001duk-2S;
	Fri, 30 Sep 2022 07:13:02 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v3 04/13] arm64: dts: rockchip: Add NOR flash to ODROID-M1
Date: Fri, 30 Sep 2022 07:12:37 +0200
Message-Id: <20220930051246.391614-5-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_983478_DC422F86 
X-CRM114-Status: GOOD (  12.56  )
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

Enable the Rockchip Serial Flash Controller for the ODROID-M1 and add
the corresponding SPI NOR flash entry. The SFC is used in dual I/O mode
and not quad I/O mode, as the FSPI_D2 pin is shared with the EMMC_RSTn
pin.

The partitions addresses and sizes are taken from the ODROID-M1
Partition Table page on the ODROID wiki.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 112c65af3f55..94e839c9afab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -351,6 +351,20 @@ rgmii_phy0: ethernet-phy@0 {
 };
 
 &pinctrl {
+	fspi {
+		fspi_dual_io_pins: fspi-dual-io-pins {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PD0 1 &pcfg_pull_none>,
+				/* fspi_cs0n */
+				<1 RK_PD3 1 &pcfg_pull_none>,
+				/* fspi_d0 */
+				<1 RK_PD1 1 &pcfg_pull_none>,
+				/* fspi_d1 */
+				<1 RK_PD2 1 &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led_power_pin: led-power-pin {
 			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -409,6 +423,50 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sfc {
+	/* Dual I/O mode as the D2 pin conflicts with the eMMC */
+	pinctrl-0 = <&fspi_dual_io_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+		spi-rx-bus-width = <2>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "SPL";
+				reg = <0x0 0xe0000>;
+			};
+			partition@e0000 {
+				label = "U-Boot Env";
+				reg = <0xe0000 0x20000>;
+			};
+			partition@100000 {
+				label = "U-Boot";
+				reg = <0x100000 0x200000>;
+			};
+			partition@300000 {
+				label = "splash";
+				reg = <0x300000 0x100000>;
+			};
+			partition@400000 {
+				label = "Filesystem";
+				reg = <0x400000 0xc00000>;
+			};
+		};
+	};
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <0>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
