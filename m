Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E72F5C54787
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 22:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9irTeMeUfdpMbSSlj+bZ/Kc7/6KF0swwRhsZ4t0hdek=; b=QmGNK5W9CVhW/Y
	vEZXPxzATleHcNFFU14hF1yO7K3JZGPQRyJmanVwwduSNEVoFbSyB+eLvZl9d3oWHLnfOuhtKwHUp
	r+NZCtGelXvsOsKr6wBYrKF1CuNirl9slIh3xMWQR1eC1VkvI81TYSe4DMsjyd1TinWE/CBC3qV9a
	T5w+WzbiQ9qudLkLmfoYw+Zq0AyVxISgLlNy87IZIODCLTC+4jmkKSw5VODWjUfUbL4wa8V+q3fB9
	Vtlxcw8lmZEWo6MqobJ4zgX2ZjNSEX+o6EbydTa2BRezILQ52T27Ay29OkHLG1GeldiiAAKpWzDLR
	vtlk0IrSalM1ITMG4LCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCFI-0000000CPqo-28CM;
	Mon, 19 Feb 2024 22:36:20 +0000
Received: from forward502c.mail.yandex.net ([178.154.239.210])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCEO-0000000CP5Y-0diT;
	Mon, 19 Feb 2024 22:35:27 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:3285:0:640:fd1e:0])
	by forward502c.mail.yandex.net (Yandex) with ESMTPS id 8B2E260A71;
	Tue, 20 Feb 2024 01:35:15 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bYZIDNh7RSw0-4wsHJwlL;
	Tue, 20 Feb 2024 01:35:14 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1708382114; bh=Dg3NPhdWCbF/J6QGjt5jZEuBRyHuuRdGYC0aO9zVBSI=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=ZS72suhl3hi7aFvyMzx4PYGPr7oc678dPqa8EFaacR/t0cOF2CYOlTlUcisPxtejT
	 bDRkX6JIbVT6RHMx3VLzNmEw66AfZO+hYV30zm1lHqJrP6C7LcOWAoWr5VyQcyIRhx
	 BKW5KXIBEpZewTHKjS8gGf02uqyM0p6CakTEwNxc=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 3/9] arm64: dts: rockchip: Add TF card to Khadas Edge 2
Date: Tue, 20 Feb 2024 01:34:19 +0300
Message-ID: <6e9062feb40bbad304f2e5bb300601034e805081.1708381247.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_143524_460056_68384022 
X-CRM114-Status: GOOD (  10.55  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add TF card support to Khadas Edge 2.
The board exposes sdmmc pins via EXTIO. TF card can be used with IO
module.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index b99d2b82c787..856ce4f869a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -12,6 +12,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
@@ -36,6 +37,19 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 		regulator-max-microvolt = <1100000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vdd_3v3_sd: vdd-3v3-sd-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3_sd";
+		gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_en>;
+	};
 };
 
 &cpu_b0 {
@@ -110,6 +124,14 @@ regulator-state-mem {
 	};
 };
 
+&pinctrl {
+	vdd_sd {
+		vdd_sd_en: vdd-sd-en {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
@@ -120,6 +142,18 @@ &sdhci {
 	status = "okay";
 };
 
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	no-mmc;
+	no-sdio;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vdd_3v3_sd>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
-- 
2.43.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
