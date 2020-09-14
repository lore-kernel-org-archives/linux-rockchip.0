Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714A1C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 864CA208DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VVy2kPzy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UOjnGBuh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 864CA208DB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YL0NMMJXr4v/PrCQFJJbvsaQbaGbKc32Tt7YQuAnU/M=; b=VVy2kPzyYl8vDcLcB1WlqSUL1r
	w1IGlIbfRNeluLVn9bgvyNNNQlfjMtj86gHbcM0jbgJwqFiOWrwdreuwQWWmZJTnQhSzvTWhrL0OZ
	clapgaPN9vCIFydg4QT64tdq8oGovG7kQ8fMP4CTDFC68T2spteBkm5xhYPB69ra6DJMiREziPD+4
	naW1DrvjRgZXgDkQRO+yUaKF0PNhS2fVUyY6KdcfFZvBfoUaAcg/aJ+Lazsd+YHn6mVX/RjRYH0jZ
	zeZdTy8T9a5qAFS6294UtIdM8TValuuw4kbRVDx4iHtj2wK8wy+2f9GbyEbd8v/WxYiHsonKSjs46
	yWVLyjDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXO-0003jC-KV; Mon, 14 Sep 2020 15:37:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXL-0003h6-75
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:37:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id o20so12926935pfp.11
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ngyo44zbreE+kQor0OXJEeKaHqQvHVhARWpVGXmMTd8=;
 b=UOjnGBuhBMVubzUGkZTSHGZnjplND6G6g9rloXd0NgQennwDjgt/aJSOngA/uL0b67
 vkHqPr6DA58hANlH8hswMX0g9ljba/UENfDEtnSw5GxL4MaolrdFD3VBUQ8pImfpeVnh
 Azc6avv+ZiPopUmLcc3Z/B8Y4ZAafLbxog1oE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ngyo44zbreE+kQor0OXJEeKaHqQvHVhARWpVGXmMTd8=;
 b=ExBkx7bKI7tz2bJVPWUB4OwnwpC8q8eauZyZrKpnPatMWZGBFSwku2bZP6kBHPdQW0
 l85td20WDv7fQVyVi6JdW/HcFReembOZcvs5cDw3Kb6JTrz2vkrPNSn7ky1F36dFCSb5
 AK65Awzh//eR9TWFAYDqp73VnjcvVUZQYPYABuJunVqG3hKBGpDM0Yk5STNv0E9abnH1
 BFTAJA3CvjQbBl9srGC1WaJkrJmSP7KJkgMVX5Jxxx4bMnNkAm7fFpDHr4/6tXVTq3Kk
 G0KKt/K7iT74WA+VOiS4X2tlnKjz1Ymg3ppVwgltXJN3B2FM1HTFdsBZEtHoT6V8620y
 Km0A==
X-Gm-Message-State: AOAM531ldEwlNjMp6nAeffNNNrMMgqiA59fi15VKM3/5RjVxogpV6RIk
 kSoxnEivxLIrfDDyevhafCXiHoK3TSv1MoyB
X-Google-Smtp-Source: ABdhPJxMR7vxdfB3rZvMDvsMzQJw2kDuiVPnrjKY3xjLyPXtX21/nuCQNH5Fqkd971mmpv4aIY7Qrw==
X-Received: by 2002:a63:594a:: with SMTP id j10mr10508558pgm.402.1600097817206; 
 Mon, 14 Sep 2020 08:36:57 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:36:56 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 1/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2
 Starter Kit
Date: Mon, 14 Sep 2020 21:06:28 +0530
Message-Id: <20200914153634.18121-2-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113659_333309_A62649A9 
X-CRM114-Status: GOOD (  16.42  )
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
 jagan@amarulasolutions.com, sunil@amarulasolutions.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
