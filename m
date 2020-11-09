Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5929AC388F7
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11F512068D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0C5KT3MT";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="TfEF0NM2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 11F512068D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E29Vir8B3A6sgAHIH4p9jgcWihTRHnhNGl5wD101KsU=; b=0C5KT3MTVyxdw6Qep66NBkTAk
	1rkCgCjzL/VDorL4z4a5R5hZC3J/E3mcGAzKju0Sdafe3Hc//vjAnUKqa5NvferbdKiWozufNFc94
	AOXCGWsjLl1XaqUKurxFwvuX++3GxWKRYJQZlKqrxJt9BBdWdGL/1ZBiw9AyRyIB021gOFwD9srAI
	4/+fpd7TU1W7oeWDcfhXteDXMkctDJsea3nzUL4eZWlOImw1Oln7SXcMNYUepRKsgaE5ZHDbp83k2
	LuwT29okmwrgv+UbHA5r2cbv6K2Oz8OMIvlXu94RZbxhvv8zn4lgWuvmEkuycSKH1qkKThkVQXtiJ
	KBWgf057w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBe1-0006PQ-U3; Mon, 09 Nov 2020 18:11:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBdH-0005w9-9q
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so5922503pfk.6
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tIeFiQnLUuCZywXPLVslCtTSylPuUHXE2jKWwkzFbJ0=;
 b=TfEF0NM22W03n74gvA1fowPmhoGvIxqKHADn7anF50EsdtaN3gAuVwEdZ8IOgY7NYL
 ENivVgLx7oCw7vdizPPa4fhaEoiuay2dTVq1Xmzu9ITH97mr6X83SeOuLMPSvR9GL+vE
 h1JFJwd3Pd5mDaDGF+kp7V0aFVamibzl7+0n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tIeFiQnLUuCZywXPLVslCtTSylPuUHXE2jKWwkzFbJ0=;
 b=rnK/dCORXHiROTf+1Hrmb/SiRAu4I39QOLv25DGf5Ogkxi9Q68mYrHARPBZQQ/qUkA
 tb9AyZ0SCCw9nF4tszkSJmGgL6WRLyo2oUIX0AwilGlVOe1x/CSFD7vEXyjJ/+wos72N
 jk2BHnN98vJGanBqEaeA7shJaqV4Uj0NnJJwnD+CL8LgtF15EpifvDjTMHafoPbxlPj3
 iyCbjANXpD51QxGBVVspEAD0JiMBPeZ2HEs0mwByO0XU1PzoE697vloI8dhgQvTBu4xE
 pSds2G2sVd0ay33Xr1iGdEnBliyjImqkp+wzfS9eTDAjlHXl7Ztu/4zwwLvcjUjr+NA2
 rX5g==
X-Gm-Message-State: AOAM532QEWEbCyj8lr99MFKk4dez8SicKQjURFhK95l06xOIADKbkkJY
 qanw+MSXqPoLvPTdq/ByQvVkcw==
X-Google-Smtp-Source: ABdhPJyE0V488QzrR1u+TMMxKwl6j3KSr7TaKRyWlI9fvEUjFDQpdEnszqr/B9XslV9/Ef/CFmxL8g==
X-Received: by 2002:a63:7a51:: with SMTP id j17mr13437221pgn.186.1604945467899; 
 Mon, 09 Nov 2020 10:11:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:11:07 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 6/9] arm64: dts: rockchip: px30-engicam: Add BT support
Date: Mon,  9 Nov 2020 23:40:14 +0530
Message-Id: <20201109181017.206834-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131111_474510_06DCC7FB 
X-CRM114-Status: GOOD (  12.64  )
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
on the UART bus.

UART bus on the design routed via USB to UART CP20x bridge. This
bridge powered from 3V3 regualtor gpio.

This patch adds BT enablement nodes for these respective boards.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../arm64/boot/dts/rockchip/px30-engicam-common.dtsi | 12 ++++++++++++
 .../boot/dts/rockchip/px30-engicam-ctouch2.dtsi      | 10 ++++++++++
 .../dts/rockchip/px30-engicam-px30-core-edimm2.2.dts | 10 ++++++++++
 3 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 92681ccf50f1..eb2be7893863 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -40,6 +40,18 @@ sdio_pwrseq: sdio-pwrseq {
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
 	};
+
+	vcc3v3_btreg: vcc3v3-btreg {
+		compatible = "regulator-gpio";
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_enable_h>;
+		regulator-name = "btreg-gpio-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		states = <3300000 0x0>;
+	};
 };
 
 &sdio {
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index d5708779c285..bf10a3d29fca 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -8,6 +8,12 @@
 #include "px30-engicam-common.dtsi"
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -18,3 +24,7 @@ wifi_enable_h: wifi-enable-h {
 &sdio_pwrseq {
 	reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 };
+
+&vcc3v3_btreg {
+	enable-gpio = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index 913444548b59..d759478e1c84 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -21,6 +21,12 @@ chosen {
 };
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -31,3 +37,7 @@ wifi_enable_h: wifi-enable-h {
 &sdio_pwrseq {
 	reset-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_LOW>;
 };
+
+&vcc3v3_btreg {
+	enable-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
