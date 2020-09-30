Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87311C4727F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05A50207FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cr6/cJR7";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WoGAS3/c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05A50207FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GMUaxQclsjX2R3W+AUzL8GMoN7GNjBETUNBxJoGBYkA=; b=cr6/cJR73BFR9IV81kVdkTaeo
	fmz6tgauzbjrYR3+yBPXsu2BPyW97pOlrhyonSm1U3oKHLMRkgXQOpel2D55URy9usdM6L6t2OI8T
	jtwJvkwCgM+vOZAsP+vkGLJvyzESUfMe5kHDTQVPwa90DBY9lfoNEJ7DqXhbMPE2tr+Ccrs1YDYks
	1tlCqaEuEG8hmys1+fA+AXXOiahg/qK31LB22rGQOCMxFQ8xb/hYj2AmYw107ndJ80c037SIEnQwN
	Zodut9O4wP+zG/adp4kdDzYrAbeW1jnlOVQHoTEeq2SsQSxaDLaZZCa5hLBvhXMNzFo/9u/+IlYQw
	itkKmPMBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbyp-0008UT-4v; Wed, 30 Sep 2020 13:17:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbym-0008T6-Cw
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:17:09 +0000
Received: by mail-pl1-x642.google.com with SMTP id y20so1013375pll.12
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=69Go+H8mzVJb+DoVPbWAf0+BDqWJ/HcXuTcqbKzy4V8=;
 b=WoGAS3/cwtA2j1opnvRhRruE9Glw3xP3G7lDTZoQ7ZU5qYEPqPwh5M5dbYjC4C8dzf
 ddIM9RkQrTQFwyKcIRsfEn+pdDn5cPdeVIOQPyOKBkhORfo5OskmIeRuUv1V6dW90j0Q
 bbm0oDfGUeOt+IifpfbSx323TNMckj4TuU/Aw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=69Go+H8mzVJb+DoVPbWAf0+BDqWJ/HcXuTcqbKzy4V8=;
 b=uZsjVSB6CXhVY3YiP9iF/WGyOB1iQS+ChklVCaaMNHuO1Wa1jPradmpnygj0xuXWD9
 Sb9+QlzJyMqK/Pqq6j0f80G+ufF5ZRzY/A7n6bSjsgBl5S/cGMLDBp/pawZDH3ecDq0W
 cVClfR3jeQ26LWDJ51W8y+H02Ttk68JKSj76PnlZunTE1KORIYtOyVMwI+EMdLs82wWU
 3etqvZyCIXjbGpBtMdbhzjZLxCE/cF/rq4eurav3oMrXSO64LN/nLBgu3doNpZGjQFEC
 vOW8oI6LPGDa4EwM8ilmTLaYB1Je+U3/tZPUzE4XhMjzEaxoiNTuIAjwk9CTR6j5fag7
 7LeQ==
X-Gm-Message-State: AOAM533oSTl6ZAOYyHQfuwLfjMPgJJXXL/tFfaqdcg544kDLaWlHjhUe
 xLqaX2+kx8KjtcnRLc73vd1Vaw==
X-Google-Smtp-Source: ABdhPJz1E1DXDoKwpvVw3Fhvc18Hf8okeVaJwZILGJkrjEufVAklZ9ddM8YPJWOfFxD+NDs+JNyxVA==
X-Received: by 2002:a17:90b:1098:: with SMTP id
 gj24mr2654092pjb.55.1601471824938; 
 Wed, 30 Sep 2020 06:17:04 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 1/8] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2
 Starter Kit
Date: Wed, 30 Sep 2020 18:46:19 +0530
Message-Id: <20200930131626.265206-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091708_460585_150C25F3 
X-CRM114-Status: GOOD (  15.20  )
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board.

Genaral features:
- LCD 7" C.Touch
- microSD slot
- Ethernet 1Gb
- Wifi/BT
- 2x LVDS Full HD interfaces
- 3x USB 2.0
- 1x USB 3.0
- HDMI Out
- Mini PCIe
- MIPI CSI
- 2x CAN
- Audio Out

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v3:
- none
Changes for v2:
- Minor device tree adjustments as per Linux mainline changes
- Add Michael Trimarchi as one of the contributors
- collect Kever Yang r-b tag
- Add additional copyright

 arch/arm/dts/px30-engicam-common.dtsi   | 39 +++++++++++++++++++++++++
 arch/arm/dts/px30-engicam-edimm2.2.dtsi |  7 +++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/arm/dts/px30-engicam-common.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm/dts/px30-engicam-common.dtsi b/arch/arm/dts/px30-engicam-common.dtsi
new file mode 100644
index 0000000000..bd5bde989e
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-common.dtsi
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";	/* +5V */
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&gmac {
+	clock_in_out = "output";
+	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 50000>;
+	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-sd-highspeed;
+	card-detect-delay = <800>;
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	vqmmc-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/px30-engicam-edimm2.2.dtsi b/arch/arm/dts/px30-engicam-edimm2.2.dtsi
new file mode 100644
index 0000000000..cb00988953
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
