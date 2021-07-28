Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E97C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:06:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B34460C3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:06:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7B34460C3F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnCXwMBrZcKvNAizkfUhbcYdSLc1LC6xWWQ5cfjXKUk=; b=or8OyEzvXqO1kQ
	Am0KNFBRn3A5ko96/APQoolA3tyStVaLY/gpTwEK2o5zFkEmC2nAOLNkWsM+B8VRVbLXy6Z2hUNyR
	6kX1EhwJufeui5UtZOJywkUD74tlAArudrMC3vcdRUQFguMCKPdjxvcJPMf5DVGUkzIT05uZ49TdM
	+KVntNMvCiVkXdqMwoKjzYfn1LddAA7svpWSpa0FCbdzgcg73MGVBz6psnzujK5mdDrrb+LKlAscm
	NlooXUPmcLgpG3dBFJSIsT2mUjtRvMiqA+f8aZbFqVEpqjQB0cZTR+mu5Vvr0rvY9nSVr/il3ry7X
	b9rjye2qa2BGVGbUNPBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kCv-000x9w-Rf; Wed, 28 Jul 2021 14:06:49 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2P-000ruu-FR; Wed, 28 Jul 2021 13:56:00 +0000
Received: by mail-qt1-x829.google.com with SMTP id g11so1358841qts.11;
 Wed, 28 Jul 2021 06:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fzfJBpsW9LQ1byhl5Qbe52ryPkD6kD9sFlfbAy36zEo=;
 b=vZJGJbTbSrB8Rn0kzviwisWYTIbSDRtg0XNJN0Va58F+7Iorqmzy2QnV6WHsKutK+T
 vEAoTf17u2vNh1pUp0s4Hko4jMTDJ9hupwN2xtxznHnAGZ1EMCnU+oCW/Yg0vaBJoas8
 qA6cYnBbsveqraOcCE8rsbNbO6zCDRLuzEC+xNrcg1wsNBrH5alS8Kg1Z/0Qo0dAbMxP
 0q1yzDP7hrgO+9amUCdczFIILYoDDD2ClSXTMyUOQA2FvlP/3cAmVp7NrYxn0y1zasqC
 F87TetUZH9SpzIoBkm9JpNiCvaBt4EaaNPxmAH9JG6yzC+LGm+2MW8cgWCRfcTDLOU+H
 o++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fzfJBpsW9LQ1byhl5Qbe52ryPkD6kD9sFlfbAy36zEo=;
 b=ikzOfzPCRO/mZq1p0Tb63Ms9Nr/9lYxKqkeVoIpHk2XBSGUQzs2ks+s2LpIMCBC9iR
 iQVX1OQHBUhMGLoaxnPNp8ysnBoFsz5y0lb7B1uKyMAv5b2OqHaD2hZe8Ov9uNDuzTUJ
 n5tv1PK1J9gGyMPCwchD6kQG4aqEW7hhqs+nu9Z7bxKJr8THHNdcnh0yVxCybVBKQLuG
 dL/DeOMk5DF7ZUwa5PgNM+XMgzZf99laUTGDPtNYfb/mWjJUPQp81xF6uL2x8FpuQRSp
 Jkr3EOLF4BFtukB1i5uiqDFGIISZQrKQSXANQ1pEJTJU2BziB/RvT/Un2Nqv1hODJB6W
 wNFg==
X-Gm-Message-State: AOAM533NxgXdJuiuHkZnCOR3kHa1WreMHihlcIAO6vs5igVVDsmzMFLr
 cA7vGQUowf6qm/blhGc7dOs=
X-Google-Smtp-Source: ABdhPJxuxPUzKe2BkmJUdEAKLZHA+kAye4TqqEzzemHQEfGQv1NrXoOCzHztSASET+boWh59n2jouQ==
X-Received: by 2002:ac8:7691:: with SMTP id g17mr23970620qtr.287.1627480556152; 
 Wed, 28 Jul 2021 06:55:56 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:55 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
Date: Wed, 28 Jul 2021 09:55:30 -0400
Message-Id: <20210728135534.703028-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065557_612067_768AF179 
X-CRM114-Status: GOOD (  13.96  )
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

Add the thermal and tsadc nodes to the rk3568 device tree.
There are two sensors, one for the cpu, one for the gpu.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |  6 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 71 +++++++++++++++++++
 2 files changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
index a588ca95ace2..b464c7bda1f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
@@ -2420,6 +2420,12 @@ spi3m1_cs1: spi3m1-cs1 {
 	};
 
 	tsadc {
+		/omit-if-no-ref/
+		tsadc_gpio: tsadc-gpio {
+			rockchip,pins =
+				<0 RK_PA1 0 &pcfg_pull_none>;
+		};
+
 		/omit-if-no-ref/
 		tsadcm0_shut: tsadcm0-shut {
 			rockchip,pins =
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 77c679304916..0905fac0726a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -51,6 +51,7 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x0>;
 			clocks = <&scmi_clk 0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -59,6 +60,7 @@ cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x100>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -67,6 +69,7 @@ cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x200>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -75,6 +78,7 @@ cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x300>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -774,6 +778,73 @@ uart9: serial@fe6d0000 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				cpu_alert0: cpu_alert0 {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu_alert1: cpu_alert1 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu_crit: cpu_crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+
+			thermal-sensors = <&tsadc 1>;
+		};
+	};
+
+	tsadc: tsadc@fe710000 {
+		compatible = "rockchip,rk3568-tsadc";
+		reg = <0x0 0xfe710000 0x0 0x100>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_TSADC_TSEN>, <&cru CLK_TSADC>;
+		assigned-clock-rates = <17000000>, <700000>;
+		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		resets = <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
+			 <&cru SRST_TSADCPHY>;
+		reset-names = "tsadc", "tsadc-apb", "tsadc-phy";
+		rockchip,grf = <&grf>;
+		rockchip,hw-tshut-temp = <95000>;
+		rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
+		rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
+		pinctrl-names = "gpio", "otpout";
+		pinctrl-0 = <&tsadc_gpio>;
+		pinctrl-1 = <&tsadc_shutorg>;
+		#thermal-sensor-cells = <1>;
+		status = "disabled";
+	};
+
 	saradc: saradc@fe720000 {
 		compatible = "rockchip,rk3568-saradc", "rockchip,rk3399-saradc";
 		reg = <0x0 0xfe720000 0x0 0x100>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
