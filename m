Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9737DC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DE2E20644
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="o6/84dc+";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dtzywe1c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0DE2E20644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zqGd529K7HwnoTpowzK1JYHHTvlE/u46Qpp+l6ICkAA=; b=o6/84dc+zwYxSMlkxfoIcYRMR
	FZ06C8Y/QAI2/CPqiFc7wRaiBOtBMbD+tVvVkhR5CRy8Tg2TYcNQjpg0mtcY7bzk2R6GOFH1w9d10
	DmaZZjGATdR7jzXl8l7ahue64+CnYTB9B9vCDXEocJ6TtPvQ9uS5jFH9u2PZc011/spUWONk1GHzY
	nOORqnLNIOesaoQJdiF8Q5RQZ8dpy1ogvsCAFiLSnFKwXRE05YFlzyIyL1Cml1IixhW9e3bZujPLr
	pKIhpX73tjZAPLG5QVdA7jx9xfWc5GKaEOeKIgxU/tHeYMfXA/9nfYWxCPBjCF3jAErrtm/xNo1Tw
	ilVr1obXg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBdm-0006FW-OP; Mon, 09 Nov 2020 18:11:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBdB-0005to-P7
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id x13so8886258pfa.9
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oy1WSzwflsIVOZ5/8uOOaITBP+5WayH2aQR8Kgtsxu4=;
 b=dtzywe1cxALk0HOLgXYLQHuMEw5wtkpRrCRO1LcqdGzpqPSjpudcguae2oXb17dbk/
 GwUqqWz9f731aSDaicAPQAXJQfmD1F/4rxNNN5d78ecdbyQd5Xd9YCBSSccmqBfXU2XB
 6E8gvPn/7KpyJ06lM0tNavY5VEgpSHiI/6i+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oy1WSzwflsIVOZ5/8uOOaITBP+5WayH2aQR8Kgtsxu4=;
 b=Dibrj2MDLJv2RamrUL8ydUN1LAAZ66oMhWEiFvig2fHQ3RDiAQB/yjy/+vyVqh6O86
 GsSyq2C3MpncXl+krXarR8AvZjZULEnganary9VGk/IqfXQwNT6rNeq537n9AK59jVKB
 3b8edn3jCYXl5i/YcmgDgXyHh7lRBy5V43Qfgx3bPNf2yD+NeZ3CC44VWbdham5eUMgV
 5VgXxw9RvTal+eOyY/QIHyWT2wTKxRfyh3X1FBOHJ/R55EbN/NVj49TyOmyZNEDJ55Vb
 5tYFAiVaPXqmZB7TR2Q7NNnanTQXG8lz+tg/ymZL205In2yQ2bIPoerIr+BbkIwem0Gq
 ixnw==
X-Gm-Message-State: AOAM533GJvrwYB1kvUtaX7BPyrUeE43Cx+aNbIMT8a4BlTWcvSI7RcTE
 J5MitHPFCn1BsdJLrpzvkXDr6g==
X-Google-Smtp-Source: ABdhPJwwjh5/eOsviuhwmOZ4kdqHmmRdEhkA7XeJSn1GUE3T5tptRqYWzbbTsQov7XVLc6W81o+9Fw==
X-Received: by 2002:a63:f611:: with SMTP id m17mr13686101pgh.178.1604945463867; 
 Mon, 09 Nov 2020 10:11:03 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:11:03 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 5/9] arm64: dts: rockchip: px30-engicam: Add WiFi support
Date: Mon,  9 Nov 2020 23:40:13 +0530
Message-Id: <20201109181017.206834-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131105_986870_8259DA84 
X-CRM114-Status: GOOD (  12.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Suniel Mahesh <sunil@amarulasolutions.com>

Engicam PX30 carrier boards like EDIMM2.2 and C.TOUCH2.0 have
an onboard Sterling-LWD Wifi/BT chip based on BCM43430 connected
on the SDIO bus.

The SDIO power sequnce is connacted with exteernal 32KHz oscillator
and it require 3V3 regulator input.

This patch adds WiFi enablement nodes for these respective boards.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip/px30-engicam-common.dtsi     | 45 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    | 12 +++++
 .../px30-engicam-px30-core-edimm2.2.dts       | 12 +++++
 3 files changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 8fdd7ff2fdf9..92681ccf50f1 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -14,6 +14,51 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+	};
+
+	vcc3v3_rf_aux_mod: vcc3v3-rf-aux-mod {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_rf_aux_mod";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&xin32k>;
+		clock-names = "ext_clock";
+		post-power-on-delay-ms = <80>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+	};
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+	};
 };
 
 &gmac {
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index 58425b1e559f..d5708779c285 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -6,3 +6,15 @@
  */
 
 #include "px30-engicam-common.dtsi"
+
+&pinctrl {
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio_pwrseq {
+	reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index e54d1e480daa..913444548b59 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -19,3 +19,15 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 };
+
+&pinctrl {
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio_pwrseq {
+	reset-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_LOW>;
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
