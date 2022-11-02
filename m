Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE2CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 12:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FsAFwKRfsc/qT6EBjqnJFeCFuBzM2STmjivTGodkwM=; b=w6MNUP/fRapQID
	VGNnJdg39IViPvMzxY7eseioynOias+jhUdqwiOs5qb3cjJ4NCVdUlxPedj/4goUjyNt9Fmc71H5Y
	N41m+Pgu0oI2b9bUhV2hTPj5GIMWJtYzAwCFRUK6+GckZdAvdB1qXcasY2FwuSLlfpHoR0AuufCjc
	fQNSC4udseGc3PCzcOQCNNjrNAXnZfFK7VpYEWvKcODSZQrePLp8EfzRXqalmJtna/AU0Ux/dhl6h
	HXAEciT4CUgke5GwvAb5i5nNOtQwevGvPUDbZ4cRDv5x42PtY3v0r2auf/JropHd/2+qUAkaUY+6V
	+Iiea2objJC5oXAM4mhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD9i-00B3a2-5p; Wed, 02 Nov 2022 12:47:42 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD90-00B2rN-7W
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 12:46:59 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d24so16471518pls.4
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 05:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04A00wmc7ivq5c1HcZPDC2rBPvZBIFpcYtF6WjKRwqg=;
        b=5UyTJ6YySGqRc9UCiI+lvZh2KPPejSwVur4skyYw6Dowp5jJLy51KrGnJ2aXM9rxYz
         t9UzUd7NnQEWrP1O5cV6J4PPDNbqrLXXZG/FmJWrC8+ZIhbbT701B2R1j5NwWa/njRq7
         kR8W7Rq+5fuE7k2Dkq1rqzwCA3ys/h6gQQzsizfudffP0LKSE6Z5UaI10w9XnB7dMlws
         UoWvArKtEWAvtqtyJ7pJES6r+HajCV9gHNdkUyOjDlq628PXAXos5dhppx0ODgaU35j/
         93uR7JSuCvpqf5DYThfNkNZstvwsfDyUhJnju7C17w0dnWfX/zuBvNBgkAuX+gqTXn3n
         HBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04A00wmc7ivq5c1HcZPDC2rBPvZBIFpcYtF6WjKRwqg=;
        b=1FuYe6s9HjLDiap4WP4WysekUQ+l3JlrlNz12WGpnSz9Sf0whYERctWRDbhcWxsAgE
         vdL04bckASt03KIZnkctqUkRUJqieJDc1As34ApgtTkjJ9YptG4xA5qJ9iVoKqft7+Ml
         KVDJkuaLKhfnHQRwD6mb/f3akmO2FkLosJuq/I7i+TowHT8AMo18/D8Yk381Irht7T0L
         5amUlX+BmqRGbaj70K/h53mmg/R7bL+OKeDOmpTcTn1eyxwwu7kCSt2i7E0TW2IjeOM5
         IBlcxkwI2LsPvqDfJ9reoyscC4qM8R8+TmioCYTIHOq7opqHJ3ouu8ke1WqqFj2+tmHS
         6+zw==
X-Gm-Message-State: ACrzQf37jhdJNlCkHmnY89CZDV5iAALauuBjFkEgvZhQO4A2ne+XY/+D
	j3vdj3v/JUIPSTw9n0B2+GyNTA==
X-Google-Smtp-Source: AMsMyM6+hxj1asTrKWMS4QSnSpR+achyLNm5DhZ+F4u9ixal1cweAWmCJVIEy41U3WzMm8YvX2ePFw==
X-Received: by 2002:a17:90b:1b50:b0:213:c304:1d2f with SMTP id nv16-20020a17090b1b5000b00213c3041d2fmr20774685pjb.64.1667393217762;
        Wed, 02 Nov 2022 05:46:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:57 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 6/6] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date: Wed,  2 Nov 2022 18:16:07 +0530
Message-Id: <20221102124607.297083-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_054658_301569_0C61C9F2 
X-CRM114-Status: GOOD (  16.10  )
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
