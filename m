Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7686FC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E7FE6100A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 04:50:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E7FE6100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RR4zjBD5C4RIJq5UIG1AHIHCehxMS6pRkz9fWaI+uDM=; b=AKPKMYZPfh72n3
	qnE6AZ49KTO0SKiESf7T+TTnOMR7X7HdjiurTWiQkZ7RW4vkLH06/qihW10RO3IpZ+i8ikynY/FUt
	fW9eKch9RO0040XoZ/nLBMbWGNsvCUztL8jGfWvEbiuPf578P4m0Z9xHf+D/TxzffGWmhlpXsvZvz
	JKXNbmeLYc5K+/gV3dItNmM85KEZ7pTWQlO8Ga2kzyK8PrbaNXwNXoldPoXDn5RLzSWS+dwKLydrq
	9Kcehtu3nLUFmyXjdwGkR5oZstB4QqnfALeN6CB+MPGJX205koMwVcoM3siGeTO9KaP2m6b/a+e10
	A+0bPgss7k3lUGa/tnSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltjys-008mxp-0R; Thu, 17 Jun 2021 04:50:18 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltjye-008msI-QJ; Thu, 17 Jun 2021 04:50:06 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 y13-20020a1c4b0d0000b02901c20173e165so2895466wma.0; 
 Wed, 16 Jun 2021 21:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ASVo2MLoqVP1mLF6Nd3xdMslTrtZKM7Mb5C6XqAN9Os=;
 b=FHM8WTkrJ5sOVzzApmHO1kODYwLZheKZiN+Dv7007BCbcYQYVmxGSFAy+1wHvpZT8N
 p/bJu+/TqfBIGRtpgsEPdqKOvltEjWjCmENWI3Uao9PnBs2UY/qhPgW0NLrFMQ3rCa93
 I8Kia0V5WTLKTH4kUUQX7L/uQx7Zeh0q0wsp373RsupINBdP3zJ9DwflL7wG7NCoA7GI
 TMtSErfAzbe3QZ5wet/jwyYhcm3KWSHYeifs/qVr9EXW9uaVhY1BgRsRAw+ikR7PIgoi
 IoKltUU6dO0Ux/0r3fOj4ZeLfCD014ipoARQVFGvY8vRFyk1ZbCBmtV/l5VeU7x+xmKd
 VhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ASVo2MLoqVP1mLF6Nd3xdMslTrtZKM7Mb5C6XqAN9Os=;
 b=pgrlvZlAnnVDhs7pQumFzfPUowJONOEeEWhyRU2bhfzoQHLrjYbDubMAWamhQMTIJB
 rPgneZHAvfz0KGDCEARgLhwIG+cjx4z3nRxkzoR8yS5TkpX5fDHjaK0oRdtzgFqXtt5F
 37u239DU9ZHUnVTqh8ZEBiZFP4yfiTGiRVPRUhqiaLBFNMs/krF+Su/kDv2CdiV9CHAo
 zvQ9n/iNKWdK003m0WLr1FmxYqYQtlrVAvQ/WSXyD4B16ow/dl99qLL3MbCEe3RomQc4
 wWLy+nbdKOG1w0Kml92KpIA2ibeW5P/szr9HfNFPttG/1ITnA83H2agooD+/UQYxaEtS
 P1lg==
X-Gm-Message-State: AOAM532xFPGuJDNolLJ6/Ivf7t2GWtmUYt0D0qO767DPUTEIR0/jj7/T
 z+aOCVJ9ro5XP25rf8uRsIiiWqj4AQ==
X-Google-Smtp-Source: ABdhPJykCMd2j7kccm6Lk69DK/jMdpK2aAoJdzlwIytRotmEuFmHTkvf2l6vWkoFn0SfSipgLCeULw==
X-Received: by 2002:a05:600c:3ba2:: with SMTP id
 n34mr2705531wms.120.1623905402247; 
 Wed, 16 Jun 2021 21:50:02 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id n13sm4587460wrg.75.2021.06.16.21.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 21:50:01 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add RK3399 Rock Pi 4b plus board
Date: Thu, 17 Jun 2021 06:49:55 +0200
Message-Id: <20210617044955.598994-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210617044955.598994-1-knaerzche@gmail.com>
References: <20210617044955.598994-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_215004_895061_9279DA23 
X-CRM114-Status: GOOD (  16.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rock Pi 4b plus board is the successor of Rock Pi 4b board.

Differences to the original version are
- has RK3399 OP1 SoC revision
- has eMMC (16 or 32 GB) soldered on board (no changes required,
  since it is enabled in rk3399-rock-pi-4.dtsi)
- dev boards have SPI flash soldered, but as per manufacturer response,
  this won't be the case for mass production boards

I didn't add yet another compatible, since the small set of differences
are captured by the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3399-rock-pi-4b-plus.dts   | 47 +++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index dbd7d37950f1..e867e5889d44 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -45,6 +45,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
new file mode 100644
index 000000000000..ea68b8c9d9ba
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-op1-opp.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4B plus";
+	compatible = "radxa,rockpi4b", "radxa,rockpi4", "rockchip,rk3399";
+
+	aliases {
+		mmc2 = &sdio0;
+	};
+};
+
+&sdio0 {
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
