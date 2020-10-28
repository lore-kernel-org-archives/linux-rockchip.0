Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A135C55178
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D625246E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pIDUHx/g";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ekeNrkDF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D625246E2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8cD3KzypBoT/Gr2gaYfC/MPex9XRoqnYGrgxOfJRBkw=; b=pIDUHx/ged/IofLPcFHzoGpnW
	v66u6Bm9aXGrlmiOtXoO52+zXXbez9CpbQ/jB3Ir3WZL/YSZmkB5LE6Z+LWGHxf4Hy3TnpT+WDYT3
	fGVCb6V8iPzeeDvrfjBaZWRxfX2fnKfFHvMHAB2fGKpfLz/hEiKkX3IKXJkr6AcMesCkFsko2wrj2
	HfqOEpIm29jv/X8Y2xb0w96SFTTa7GffrzlwLaCH11kRNlUn30zyWgxVZL+PbbWWF7wuek6QHTtxf
	GYkUnAAJi6wC0+CymlfdCZKI2eSzSyJkf9DH9wKsNkGWj3kJj56i5IfVy/sn4oFk70lkT2XbTtpo2
	XGeNkzBng==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlag-0002gx-Mp; Wed, 28 Oct 2020 13:34:14 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlae-0002fo-EQ
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:13 +0000
Received: by mail-pj1-x1031.google.com with SMTP id m17so1624354pjz.3
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DzO2IlrdBQR1HWEG+K/iR6TtsyWEukIy8V/Za/avVek=;
 b=ekeNrkDFmYzGlAQ0uf4pNzHWeg0hd2HIq7Mobx32as8zBEYAVSntJr2jm+5vxqaCh6
 N5qUvKmRZiFJr1Bd0gZCChMQGQ/cK2i+13ox1qHAObVLOK1+Yd0w4TgZ8WSWflHcOVnL
 Plmf+mAfj3kgHY+3XF8M2tAs9mkvo04AcDvvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DzO2IlrdBQR1HWEG+K/iR6TtsyWEukIy8V/Za/avVek=;
 b=amoFSifDyTXqz6vgZpveW7E1MeKznWK5JWXHdUeH+cDD9dY8FxiG/ogKKnu6Ue5GEP
 fGMinlzOseDLJeQEIiTtTv5IJHpQJ5TnzdMpab9fTXc19sW1rs9DC8/XTpVy39kHcs9/
 /JHSKYr16DWmXD870/tNKFS6XXaLb49GkzjxHdYuImoh12g7fBqNu2tDDR7vgHdsbhsI
 O9BKTPr+NjHcaUIraqJLEGP+DhdND9qp3eBH3FHwjgy95hV6EwQ7ezvW7IqB2oM4/syK
 0Nc74RyrlYL1csqO3PiGjVPH8dFu4nJRts/+U5hmFU/U+snmL0m3VlH5YaAIQJmJHe4M
 JAEg==
X-Gm-Message-State: AOAM531HoJkppPhzk8IVabcLjmu/Vonwd4WjZS3yTH2eh7bjfcId8/1/
 xYFRqEAxJy7qwFHIGgA0tHXUvkC/gR6Dsw==
X-Google-Smtp-Source: ABdhPJwiEYP4TJQGK/bkb68CjM6dHlXxPC5kB96yE1/THrEOR0xUAKl4pyUsaxh7f0PXEF7hf30Xlg==
X-Received: by 2002:a17:90a:5b05:: with SMTP id
 o5mr6730113pji.139.1603892050358; 
 Wed, 28 Oct 2020 06:34:10 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 1/8] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2
 Starter Kit
Date: Wed, 28 Oct 2020 19:03:41 +0530
Message-Id: <20201028133348.241839-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093412_505878_6DD49494 
X-CRM114-Status: GOOD (  14.97  )
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
Changes for v4:
- none

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
