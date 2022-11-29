Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84CD9C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 08:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkgzsMQznGn8zVTCpbrNGmLpQP/1jF4k4C1jTprOVSQ=; b=ajP+Qo3MJy/609
	S+bj/yMZmSym64iV9D2sQSVMpeN+Y8NOeodOLaFgiXP4mA1ytmuCfO6LzdRWLYwYLr7ktp1yuGlAE
	xU7SNrJ6zQ+vFGLn1Jmb9u6V1iHCJL1r7fcXHNKDNwIiGIp9eAhqFdOE40Fai0er/St5+WCtIBLwS
	yntw17Uutf7weiu3NwTMrypOFyzusBMpaKzHNJ/fWBCqNGB0clkU69+SJ/gMqeAF9RcZo7dNCp8/U
	Qyj2IoN/5ba5RHQj6+afJa/Hwd4wUVdaZl1sO6QUFJLamlWB+xReGJ9cS/AM5s9Xg7YrJ1hIw5B7k
	vKyNL5W11sFuMec74M4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvWx-0079g8-T2; Tue, 29 Nov 2022 07:59:51 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSj-0077cn-98
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:55:30 +0000
Received: by mail-pj1-x1035.google.com with SMTP id o12so4072105pjo.4
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVaOWtQJYEfFjgCfIO0nKUUiRBiv1wPc261PVtkO8Q4=;
        b=eGPiDNrRYLRj3arUf4TQluOQSSX86JCVn2ysyw868tmPwWST3cQoWu1PM/21IHNTFO
         kYAkeiJoDcKpRT8BsPXJfbDyGoZKjtgtlbV96F7mT1Fne/t1geuNT7ZSsRvoOPLEShCB
         SwoG+qc+512r4bhnH69bIzeSKCPBhdi5trnO2+czTu0QIR7YfExw/PgPgpqbE1fe6pt3
         8UX2+1pJu0CoSBh6rCfy0e1iRWJZwpNJ/t4IK/tOT/WDQQ1JccMa8f3mBhXVRjliQfYm
         q3n+FyyBUl/NsN61fmYf6mjljp/8utBL+2cDrwq3AG1wC8ef9vEvfd69BPtBQNpjgB14
         7WJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVaOWtQJYEfFjgCfIO0nKUUiRBiv1wPc261PVtkO8Q4=;
        b=2HSYbxPmLXY420WJARCCKI7cPRZ7JwZkZt57JL8ZCmdAQj9VdNLBT1EUe5pF5/yVxa
         mit3DY2N2pKNanwGVcDqGZHP37AY2gP5q3yzyegQLPQG2C+JcfJhW6CEYvEVea1cKCaP
         s7GN08aedX3ZVLsgf0ruPFb842+iEmtIaScgQ/DppI7fw+ZE7bzJWzSvRs6cmuyfNt2Q
         kmSF1wzV/FdiTR/WSWgfnju5MTD4/esz+Aea/IlZjQ8W14Ttm8kdM0i7iWrns/mac/VD
         sjgWbgHZy6IYOyquw+NccQNFPGBbPJqSP9KKTiotiaGRIhaGm0FZZ8PZ3Yy8o6ixGgM6
         VQ2w==
X-Gm-Message-State: ANoB5pmxZlvrq0CMiOslgDVgyApl0neCooKHlpmUOdXl/W5RG7rGhjXS
	RQkSFXES24EZE5xRjRUQyToe9Q==
X-Google-Smtp-Source: AA0mqf4HBSDUkTFn2Wa8RMOIpHEhkGQlAtDGGU4QZ6ZD7B2SYpCouter2bx2iUvHVadJ8YixjKLRVA==
X-Received: by 2002:a17:902:a706:b0:189:9031:6758 with SMTP id w6-20020a170902a70600b0018990316758mr7254845plq.138.1669708528435;
        Mon, 28 Nov 2022 23:55:28 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:28 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v9 8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date: Tue, 29 Nov 2022 13:24:24 +0530
Message-Id: <20221129075424.189655-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235529_344967_435D604A 
X-CRM114-Status: GOOD (  15.11  )
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

Neural Compute Module 2(Neu2) IO board is an industrial form factor
evaluation board from Edgeble AI.

General features:
- microSD slot
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

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- add serial2 aliases
Changes for v8, v7:
- none
Changes for v6:
- update the carrier name.

 arch/arm/boot/dts/Makefile                   |  1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 42 ++++++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e48cfbc4e8e4..40cc34bd4945 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1122,6 +1122,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-neu2-io.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
new file mode 100644
index 000000000000..dded0a12f0cd
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-neu2.dtsi"
+
+/ {
+	model = "Edgeble Neu2 IO Board";
+	compatible = "edgeble,neural-compute-module-2-io",
+		     "edgeble,neural-compute-module-2", "rockchip,rv1126";
+
+	aliases {
+		serial2 = &uart2;
+	};
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
