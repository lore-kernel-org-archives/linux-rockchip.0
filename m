Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 105B6C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lb5CA9xsbuwv7VfdQ3u9vzV7kmONXqWZGLYmIGpXphc=; b=lErs49TMryQQAb
	tkja3+RC8VDHcdWWyDvF1puQubJMBoEErXWm/0cXKyFTaxeRrFaZ1hMGkXLYopb76l7MxnHIxtYxX
	IWffnUNKEH6OW0TOHMpgx9gacrzYPN/iQSlJMNdjRzqgaYwoVNj1DHGHWXtcxH6XDshnXWIATtps6
	sV1uKtu47csDMvpjUOVRUoKl7Yh1++HHk2Akll/RaBsX9LNjHY+Mi6CsZ9rjegZvVr4iDuKR3gLLc
	jdCINztaBbksfC4DYLiNyKjD6QLUQCRgnzKe339eE+CccQyTy+0umELkS57Swe7YZykkeGWgjvLkA
	x95ahMwQRwx0uGcL957Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMGg-007I1P-8I; Sat, 23 Jul 2022 21:02:34 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM0Q-0079EK-Sp
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:48 +0000
Received: by mail-pg1-x531.google.com with SMTP id 6so7054327pgb.13
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rmp0e7/4fUtG3oOLDCPWkUf+7fHroo7l46CJHVPi4qo=;
        b=szJJQaZ4BjwDmv82EfyTYDoJNkpmr8QGEpTZsXuUHmXWHhmKaAA7eInbV0KBEPyfKJ
         ZcY9e1K5Uz5x5d4JeBeyYnb6Sfn5bUCdNzUx5IP7eFGZNe5DZNlqSYEc7uK49PHflKVi
         UDQV6os7+0UznSRQkE/Hk3LN3/62RXhUV23SB2GDGYPaeMPKjZ1slBByDonq9bUY1oos
         HAcGQzejjhmY6but/ZrD5OKpenZaiQ8a3D+Ba3yIuKQR55XyGfnoJlGI7E2G41pRK/u9
         Hj1KUXfelkJsZRmxtYLqNUX539YSzrWAYl+JQsEHA0P5dabZw9lxcIItQkVlH8tDP2QQ
         nKQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rmp0e7/4fUtG3oOLDCPWkUf+7fHroo7l46CJHVPi4qo=;
        b=sqNvB3TM9ixe9IPFqJ3TYGr5AHjp7HtEbudHBHCdBStDbK3lM79WQ2zmv+EHWZlpxr
         6kXaPacQq58nrBxCGUzeEo/D8j5jsEHmW/DDeLY8Ur78xOwoRvxu44goAUDKqs0ySYKE
         NnO4GgjaMoybOxiSPP9/lwodFQK0ZqY1E9imjunW64aXw/3vM97h7kB4imuaEvLgeek4
         7B3gZ5egiDX/19qGysSeCXq8Ar+ckVoy3izED8EHTD1bExs0Nu4e6bNisuT1559PMJsx
         1+1Myo9ry6D7T2kiATgJJofFkyaPGoJPM2DdF+HYHA2ccJQj/6x2lwbZ/FMFMNtq+z6L
         jWPQ==
X-Gm-Message-State: AJIora9wVPy4PnGFbIQl67+5+YyXtqWg/2/UYoX84YZTAI3MUPcrgFJY
	CQ3bffbbrZBWHmJgEG7KGgRUQQ==
X-Google-Smtp-Source: AGRyM1vPMOd0pPCte7s43UG0YSt4Mwg5khwesmiicvyB5ZgMkQ7hTMPfSznK77hVYDhrhOO08+nJEQ==
X-Received: by 2002:a05:6a00:24d6:b0:52b:ee89:ecb2 with SMTP id d22-20020a056a0024d600b0052bee89ecb2mr1744598pfv.15.1658609146228;
        Sat, 23 Jul 2022 13:45:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:45 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 21/22] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Sun, 24 Jul 2022 02:13:34 +0530
Message-Id: <20220723204335.750095-22-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134546_994272_00EA3DA8 
X-CRM114-Status: GOOD (  14.92  )
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
 arch/arm/boot/dts/Makefile                    |  1 +
 .../rv1126-edge-compute-module-0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..6a0ba434c1cf 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1097,6 +1097,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edge-compute-module-0-carrier.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts b/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
new file mode 100644
index 000000000000..b3b6f70c1a9b
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edge-compute-module-0.dtsi"
+
+/ {
+	model = "Edgeble AI Edge Compute Module 0 Carrier board";
+	compatible = "edgeble,edge-compute-module-0-carrier",
+		     "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
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
