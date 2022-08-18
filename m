Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF69AC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUUuyqq4Xlsxmq5i3F5Gu5DfA0+J3BeeVsXoab/rGro=; b=1i0zqRGvcZifuW
	4phqviJyJujVhc0pe3lfeTtShINk8FqEc/J3hQzpkHJUZsp7IhiBCIdXySn8VCge/P3igGt+PFKed
	POSUkVlkHw/SgpDyWeJuB4ovnBg9OVOadIPsvdSCxJWHW9B45xj2Rhj4AyJolQhBbSaCUWPmg3icn
	9hzlDFHEgyITziHXvMhb/CzU4wOiSmr6dAVCA4SCbTlcYsRtLLzLBfrGTKpvrLRZwpPWCe1whu0Zj
	psIDohMu1dMLRDo2mWHvLLUxlHfGFaBdBS62JqEITmPoYtpQgl4EXiQqt0qia86Jw+9zZUQjhTKC4
	kK/yRQJeKCUdmsSYSZFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfSU-005IFl-Ms; Thu, 18 Aug 2022 13:21:14 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOerP-004kbO-Rc
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:57 +0000
Received: by mail-pg1-x533.google.com with SMTP id v4so1195615pgi.10
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=vCHsjUT/CIgoiPKWpJGWF0bqXuEAYoFTuk01CLPUBNU=;
        b=6oRvSgWHqhnC1ZagHb+AJVJZ8O8XqnyXss0FRwyzpkY5VhFmV2KMozJrdnDEwpvDtC
         X9oxTj7HANQ/N3WfmfXHBlVuhgOxS09NVoUytzxr0dZNmqnlyvRst08Y1oQtoOD1w7ZX
         ura6NS+Kyd8sSNg/VAiNiYDugXeESYc5pDhdPTJoQ/9V6dqPyc+9zxjO2nNmjQ8qarXo
         ALY9WY8rPAxTEQSe7/UNUZVimMpU9A6lCBy7NGwWLvTDoq10VdBiOhHLMRT4CouIaTo4
         5NTCzhcsxwyQi7Icvblx37JkS0m2B5twe1Z8KPCT9X9MBE9QJXsLPeMGoaym30zZrNbg
         y0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=vCHsjUT/CIgoiPKWpJGWF0bqXuEAYoFTuk01CLPUBNU=;
        b=0j00Inqpko7dkmIuetRLBHehaWgo3aSWNwsKBeyRUCM3+YldRroxa04BEBfgJb9p8a
         kB3cgolGCyrR5/162gy7Lud8ERM8t8sj0BE/wZyPE65gGkeNXm6gkEspoqAJNoDMijb7
         Hq8m5DWUX1I4mIAz9R8kDu7cmQSx3u8PNcZOTCqCHoJPDuATuhUBX3RbNkHZb1a3e7l+
         nbX6zDhRHuOjMw9J+tyyMjEVMv5vbpgZ58jITp39nBy5ynqVOp1pHtcEWbQFtX9xnP1S
         t8UW2GKPywabpLH++aSrAjLrXgQu4//5ATYx4exgyZJ+Q0UgJqNtv4+mGqtz9+Sxd5av
         ynQQ==
X-Gm-Message-State: ACgBeo2tFkj4g52gj8JKe9+i+3W/4FGw+ygBBGl/+kwfVVJ9AH5Kq1nh
	63gah6b8jWIj3E9qMoyVBp0dhg==
X-Google-Smtp-Source: AA6agR7rRaVO+Oqxf1oh8pMqIXQwS4xGr2HaNRVwOU7G3onHD0txkGXFVR6GYOEmUSgWBHNnLcuHEw==
X-Received: by 2002:a63:8142:0:b0:429:f9f9:8fb5 with SMTP id t63-20020a638142000000b00429f9f98fb5mr2332689pgd.619.1660826573618;
        Thu, 18 Aug 2022 05:42:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:53 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 19/19] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Thu, 18 Aug 2022 18:11:32 +0530
Message-Id: <20220818124132.125304-20-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054255_953084_8A4B1052 
X-CRM114-Status: GOOD (  14.87  )
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
Changes for v3:
- none
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
