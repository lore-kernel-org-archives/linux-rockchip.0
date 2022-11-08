Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52C28C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6Ss/eP8bR5YynQ8cYQFkZrak2KECgoB9Uf0Vlvp4RU=; b=DZl0VF8VGGx0Jp
	yHPekdigbkiGZG+/Ciic+FKVEkmhdZp97Z3+xNWuARVAD7g9lcNZOEuue4/JTOusF0PuaHRswdKqd
	N3e/XaIP9UodgWZlbSBLz6H6K3Wyyy5kAHVaCoLJMpF3H2YBq1E5WwcIsevCbpo8UyqLRaJFAkBnp
	Am+fApL9yFSWRHs2kysYwjVVTB3DNvo6GE2j/+rDqSbfUsbbU4fak6RtppNH1GXNn/+ICY6ewZ62c
	BH9qp2hIn0FAEGOMmdOYsfYtRGaMG/Y7T/9+NoPKU4oTp5FQIgAfHfpRTEaAD+li5FD3zpo/YahTC
	b/F64n26+WYB3ocWe+hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG42-002cFk-OZ; Tue, 08 Nov 2022 04:18:18 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG18-002ae8-SM
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:15:21 +0000
Received: by mail-pg1-x532.google.com with SMTP id 64so12359428pgc.5
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYyNTGIwXr/GE3idzYmzpH2DtKCuhncte1jYNZp9aAc=;
        b=OAgv1jX6xzIECtZXDJMubwEYPjmOTnnJhBukpuLkJaed7E1GWrna9MWzcipU/aKDFd
         dWR2T54wiv6YlJmA1VuIdVcz4WJ7gnYY1fLPsAFC4Slpp2k7DkLWTszL9jEOIs+IoFwv
         7nARqDQil+0fEpPac9JzR8K/IFVnC1Dh0RrlKmzI8p4o5Ee7ftrcAHSzFYtCKKYyVSmx
         4O0CntLKneKNVJOU7A7d07pkt6CZD+8w8tw2Brppqhd2EUkRx3SdRqqX1RX5Cqj/eqOa
         AEEzWqu/H1VDqCuIA6rGnAERpnSCm545MtrG8vKSDufZG1j0xaWFW9oqZmgHrX3wV+Tt
         aHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYyNTGIwXr/GE3idzYmzpH2DtKCuhncte1jYNZp9aAc=;
        b=5Imp3FjFz1Sygkl6L+9B5eeW4RWLQvzIkMWx/gL9OO9FsMCISe7eLBOA8/bpou+fBq
         J5jYWGqlA3JLjY5X83+nw5Ka/YxF6TeVWTqq2ujFMP0hotSlKz1HEqYhtCQB2DxePZZE
         Lm41vlfS0I+zDyHSBD4mNxKfl9t1nngImEMv1GbE0RaVf9UJkMVyY7Mgbmna0San27eQ
         UerNdKZfSrOWP9geusOGQEeT9jg//iOXP/oKiUoBIvLSwNmJchbAGtqq+F7XnYyJLhf2
         cXSArkL393eueneOKikzbJIV7BE8VSz6EJqpEIeAsWXOV93uFtQFBOuaVelvj9ZVriUo
         wL+g==
X-Gm-Message-State: ACrzQf1zEAtvsherTx6nL1zKWtn1oy7A+oojiWEZeAyGnOHnJD1ll42W
	t99SrvQ6cSz+zi4T9JKzTNPu6Q==
X-Google-Smtp-Source: AMsMyM6Xjnc2MFXNPjQNxB4+JepsOpRNFHKjnNYWo28X1Agifr4p7e+WBqh5KMeLQE8UzAFkBP72UA==
X-Received: by 2002:a65:6702:0:b0:470:15c5:4363 with SMTP id u2-20020a656702000000b0047015c54363mr24853682pgf.546.1667880917243;
        Mon, 07 Nov 2022 20:15:17 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:17 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 10/10] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date: Tue,  8 Nov 2022 09:44:00 +0530
Message-Id: <20221108041400.157052-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201518_961593_F783331F 
X-CRM114-Status: GOOD (  15.58  )
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
Changes for v7:
- none
Changes for v6:
- update the carrier name.

 arch/arm/boot/dts/Makefile                   |  1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 38 ++++++++++++++++++++
 2 files changed, 39 insertions(+)
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
index 000000000000..ae1cf344239b
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -0,0 +1,38 @@
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
