Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 157BCC19F2B
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 18:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcZopz027lnG5n+vGUnpF6nVH0n2ycwztpexXtuzegk=; b=ngOIYQVBYMg0jd
	Ks+81UGWYAOuAF9Z1EvzIdpnkWmd1ABLqUm5KidySc6obpXn04nDQc/hCOADAfiHM1Zlz6DQDVgQC
	EGS+X3S8XKZZ0mV4oVKH3+CJPiIaP282hpE5LtIls6KnGIYG21YOOciMV1mAk0poJBMY8h18JDahF
	J4EyMwFuC3mp6OyGyqeZLwwC4QOzUEBuxr0ChvE+Km6tY45P/qvUU+O5uvJX5oSpB/a0jSXeGNVJv
	3LEdIngLKS9ICfrV3oYcWXmrq04qN11h9lbakBNSXpwSO95SLlAqPJRlb+rLDMs7DRmuXPK9+RXrd
	L2Tucksq/z1tGYb3kYpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDJr-00Emts-0M; Sun, 31 Jul 2022 18:05:39 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3a-00EeHl-H0
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:52 +0000
Received: by mail-pf1-x42f.google.com with SMTP id c139so8661738pfc.2
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=9srpnaFLbfVaL5YYWGXQCwQ3oUJACuV3OZQN8eEBiHE=;
        b=ZxgFHA7OoNJq9X9Do75DAU0uk2g3QCOhHcQrJn21UdWGfoHeKL7p5dWNMdkNtFgbK/
         xdwDxZjJvduOLZcfP4dfZp5vFQ6QqPKQys8uw0Bzy1lDAuzuCSCbg7ZnG/6CsrjOZ1yh
         2Z9cForqkoN0H4o9CrULHG9B6GScor+XY+arSgNyMQVEjHPgmKD0abQozzaeHMr1WI/Y
         Z95CrUemvnRSfIiQNzfSaAM/she4520fhnyrXepn87HfuzV9KuP7luegNW/PKZU+2OGf
         gHCaSz7ya5DQnIwRBhk+dfNG6Unz8oeGeWpkqpbFN/hn3ejqX/X/zgxq34opQnGvOFSQ
         8Hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=9srpnaFLbfVaL5YYWGXQCwQ3oUJACuV3OZQN8eEBiHE=;
        b=5mQQs7TjKClzuCOK5oo0v6I5fjyPbpHJpW34YccRkKytQaymtO8UKfaC79rov2ovO7
         z+P9otKo035lDlnX8+vjLNGklRljkiFYPkxLM2Rn2jOKUw5eOphyZUAp5xJsOzikzzQ3
         +rYri8H3DlBSOlecrgdEMFHrGmKWlDHhatGVVZFPEMeea9KWvVDywOLCeiJYNoCNQKuE
         rbsq6RuKcnElOF+4AVv9Paeh2SJcr6GEuqdLlVr4MNOxwcLjBAlE3uldMvODM1M/Thrq
         TbWoNApwYRKkgR6i9K5p0AcyLX5mz1Rzvn9iCSrm5pYMn6aO9XrgHQlv5TjJ7wyiCcdl
         7AAw==
X-Gm-Message-State: AJIora/scLoaMpVvdjpjcmj0ScAKOxzjUFwHy2AsM6zHpmvHJSEKnmkB
	SSq63jPSiv+Cox4JmvErvCHbYg==
X-Google-Smtp-Source: AGRyM1ujZA85Y0shj2dUghLNEQsMHFcFq9xsPkqlxwhGlezaz5tfdBp5ZThFQ5uI/84sfGUncvyjTg==
X-Received: by 2002:a05:6a00:2190:b0:52b:fe5f:5939 with SMTP id h16-20020a056a00219000b0052bfe5f5939mr12778946pfi.83.1659289730193;
        Sun, 31 Jul 2022 10:48:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:49 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 20/20] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Sun, 31 Jul 2022 23:17:26 +0530
Message-Id: <20220731174726.72631-21-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104850_642222_8495B250 
X-CRM114-Status: GOOD (  15.05  )
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

Edge Compute Module 0 Carrier is an industrial form factor evaluation
board from Edgeble AI.

General features:
- microSD slot
- 2x MIPI CSI2 connectors
- MIPI DSI connector
- 2x USB Host
- 1x USB OTG
- Ethernet
- mini PCIe
- Onboard PoE
- RS485, RS232, CAN
- Micro Phone array
- Speaker
- RTC battery slot
- 40-pin expansion

Edge Compute Module 0 needs to mount on top of this Carrier board for
creating Edge Compute Module 0 Carrier platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- change easy and meaningful dts name

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..361b68e5019e 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1097,6 +1097,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-ecm0-carrier.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
new file mode 100644
index 000000000000..150bfb9bd04a
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-edge-compute-module-0.dtsi"
+
+/ {
+	model = "Edgeble AI Edge Compute Module 0 Carrier board";
+	compatible = "edgeble,edge-compute-module-0-carrier",
+		     "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4 &sdmmc0_det>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
