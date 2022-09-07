Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED5A3C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBG37P/ACT3F36pncH0ZHXEsTWrr4adswPBxctagbKU=; b=bdOoZ5BCbvfO5C
	qsPnMNoJ+uXTU7YR8wGVIS0kzrtHmnIPijIZ30QsDm99wUvZXmPLxNCtXTpXnthi5+OeStdv6+vK2
	aC9Uozt8gxvqPC4dcLv7WSUoB6msrsp5AHR1ffEHCo+QUvkraw8aDm52QNW1D0MuiEkgW5Y/Dff2V
	pOL9w1gl4KKLUiCe26ZN/o/aOJScajmxLXutNQfnd5zz6J122wIwATsbogjkynaenikrAbIDaAv75
	XM7MJWo/gOziagsMzV7TEnaHFeuhvXh16mgSxcgDVavHyc2rMHy0JwWNQDxgVQLhIpd/m9UBogqLj
	mXyjfWFxVop+W0AMwjpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxbn-007cSp-0q; Wed, 07 Sep 2022 16:08:59 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxWM-007Z1m-V8
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:03:24 +0000
Received: by mail-pj1-x1030.google.com with SMTP id m3so4409176pjo.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=P7INJJ0dSMSOYW8Kze8Tn6xVassfDthSwV+6T1Kwtkg=;
        b=tVtYJsvQ8YPGLHGTmXXS4y6kOnt4knAW670uJQpoqHsfCMwqQJiSCvR6nEWiGLN6cv
         bJk97bFyOns17ACAONgPWkav9G8uPCnoWxLYG5FyMLOjgJbyCjOJUez1QJWEScISKTYV
         LfsKWWMU+bqa3XkqCs1CEzQGDQg6PDkEhN1jb4cKa7/T/cGyOUqwG+yWQJySBH+bYozf
         4Iojxy18zyG32YS/OIodRYA3ii01MiBh9cljaMK2P9d6T1Kt0RRGLZVQZzc0wYcugEoE
         q3mjiK7202XCvmiGDEY9THyBsLHie0HX7+2DZB0dHWJjd1GyTVowM8bUmwSAUq1EDqDr
         ZUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=P7INJJ0dSMSOYW8Kze8Tn6xVassfDthSwV+6T1Kwtkg=;
        b=ca06WrElWFAQ9pfQJEL6zGKccsFU2PBzeTjM8mm5F8Yv6yNzBWx1XbAXs/0Zv3syiA
         9es+/lvYs0ombFXxbLU7jgIdZp9zQlo16lJeVFm95nq2PhW5ttuIC00YjMRc+RlhhApL
         f+hZgP9fw24zDuTNbgVxtfoaxmeHluu5Emlsj7jppmttiLyz5lWIOkFgrW/B+nV2Bbrf
         /k3OdQuRSWCnCuW/Fd5BESZt3wUnMOMSEcfQQqmmEDMYXTwhBhnFH/aIkIYpzO6H6sE9
         beM6CDDstCWZyxl3mlTtij1dnhQfhr/68qWziTlMVbcQZVQA0f9ppOay0yDN44nTd8d/
         5UWQ==
X-Gm-Message-State: ACgBeo2LfVJ5g+aleK9jsEpxxLtaqFYHgHhMENgdDYE5zTSLi+iSHiPg
	X/ILTyL8hdRRCpScEnorrIb7dw==
X-Google-Smtp-Source: AA6agR5yCMir5Bw4XTBgOXc4QtLhWA/TW0ekwhyG4A2VOFwogBBBu/SuZsXTT0rAC8JbKTj1V+sY7A==
X-Received: by 2002:a17:90a:908:b0:200:14d8:1ff9 with SMTP id n8-20020a17090a090800b0020014d81ff9mr24131318pjn.16.1662566602593;
        Wed, 07 Sep 2022 09:03:22 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:22 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v4 13/13] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Wed,  7 Sep 2022 21:32:07 +0530
Message-Id: <20220907160207.3845791-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090323_028768_6AF0E9FE 
X-CRM114-Status: GOOD (  15.31  )
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
Changes for v4:
- rebase on -next 
Changes for v3:
- none
Changes for v2:
- change easy and meaningful dts name

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 05d8aef6e5d2..69781a7227cb 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1114,6 +1114,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
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
