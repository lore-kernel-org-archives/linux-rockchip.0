Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE19C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 220BC2073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FmkRliP3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XaWu+lGX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 220BC2073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YK4zl9CZAyfyx2jfAnukl/0T75iJ+fqbhdmX2AQJm6k=; b=FmkRliP3R9BmBjD4InFpLSwAc
	EZrDRg4HcoV/TRA25SDAQdiWWfJu36e2KCxmFFH6mg/fkcw3Pza0j/+mhImp4ezXuPxoly4QNXtiq
	9nS1Vn3LhScVWUggbKFCAwGDaRBykhnQ1ukCeO6ihAn0+5YdSscuDCQUJHLxeygl+HGGV8kBwSugJ
	68oCC3xp5ZomMfuDPrVtczfRAjY80qkpOtqae9ZWfbbpFL5Prco5KA6OSTEFckPmrEsrD89QElFg4
	5iOesTEO/QIe0PjjGsCiIQhVXUbPrlgHEdYrxjHe1VnGtg/xfjxnnVH9nCtnD84xV0J7Hze8hKRzq
	2ESTnf4Eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfCg-0003fN-Oq; Mon, 31 Aug 2020 08:30:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfCC-0003Qq-0Y
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id q3so2671821pls.11
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5bmGVS/nnClmGdGVSnVd+7lBlOmwv+P4+nNohCNZM64=;
 b=XaWu+lGXMesNK+tMqt7/wHdqonvaLQ7OeAtp4gK7w7ulHBpkWXmaKwuDFlll+HkN+k
 j5vdTWK81PJaMOFhetTQMCcgPm305T01fa8JKdqnslKLxuqf9JLWCb5EbncZspVYagTs
 UfCUb3RFxdHaVvOXlJ1isKXkjPI4ZhkY3N4wQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5bmGVS/nnClmGdGVSnVd+7lBlOmwv+P4+nNohCNZM64=;
 b=DxxJpMJ/6dPdoj7UrTyDsLhRaUNhar7bgy10Hw8fy9nXSIV4X3jFtJo7LPxpLK8nXp
 L2sthT9JSRLKQAOPM32cOjueI3B68hwL2Yd9DIEg5gZmvtId3qamCtM5XyZsWJF1nAe2
 cw5EYQ6m16Rsdu71rNVmk9nRYsOpfczByzAU28a6EUSskS9rQ8hHeL09Jj5gS7/8rZ5T
 v022NZSzOlJnIwXjyjQ9o0CSv7nOIbb1mT2FdWsbu8yvI21VUXyUZDPT3YYjXA5DvT0B
 PXR5diwt5jLOA+rsTr+oen0lmywP7yxSvHEBsecZnBd1zZDHnR2Ttu4AWEG6qHMP2hER
 PMIw==
X-Gm-Message-State: AOAM532pMQgRS7Rj84ryJWbyjSm4PavFrp4EZzUpVJ5iecAuM0JI/Tga
 u5EmEy/1NecJFe5hSIJpEQAxQw==
X-Google-Smtp-Source: ABdhPJz4tueuWwfQoq7GXOlWou/UQPDZ/NQE324zaX5kFU8hbnTFTOaKhkUbt/4asvp7TttV3ElqDQ==
X-Received: by 2002:a17:90a:4382:: with SMTP id
 r2mr387193pjg.144.1598862582124; 
 Mon, 31 Aug 2020 01:29:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/7] arm64: dts: rockchip: Add Engicam PX30.Core SOM
Date: Mon, 31 Aug 2020 13:59:13 +0530
Message-Id: <20200831082917.17117-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042944_194000_60835038 
X-CRM114-Status: GOOD (  14.72  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Trimarchi <michael@amarulasolutions.com>

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

General features:
- Rockchip PX30
- Up to 2GB DDR4
- eMMC 4 GB expandible
- rest of PX30 features

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2
- C.TOUCH 2.0

Add support for it.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- sort regulator nodes properties
- add Amarula Solutions copyright
- update the patch author
Changes for v2:
- none

 .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
 1 file changed, 232 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi
new file mode 100644
index 000000000000..16e6cf28a440
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutons
+ * Copyright (c) 2020 Amarula Solutons(India)
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+/ {
+	compatible = "engicam,px30-px30-core", "rockchip,px30";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG5 {
+				regulator-name = "vcc3v3_sys";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v0: LDO_REG1 {
+				regulator-name = "vcc_1v0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v0_pmu: LDO_REG4 {
+				regulator-name = "vcc3v0_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc5v0_host: SWITCH_REG2 {
+				regulator-name = "vcc5v0_host";
+				regulator-always-on;
+				regulator-boot-on;
+			};
+		};
+	};
+};
+
+&io_domains {
+	vccio1-supply = <&vcc_3v3>;
+	vccio2-supply = <&vcc_3v3>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcc_3v3>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&pinctrl {
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc_3v3>;
+	pmuio2-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
