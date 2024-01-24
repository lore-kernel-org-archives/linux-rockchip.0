Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 860D4C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 20:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPe0PtqlNct+tZryDlD6I7YyCK/3fH7SugKijCPfCBo=; b=wlMmN/j7z3dgMQ
	7UlA8tKloLtJGV+QUoifdRpttVCpSDgb4D013ITlmGtySY8l4inGtkxCN0/had04LphayLBHmzVQj
	ZJZryLESAgqQwdpJgylYq45VaeVyva5c99MQJJJojIr/rAv9aAV9vR8+lUiy0/08XkzFJSZq/y7vE
	ASd4I/AjbiqtPGAHpmD+UYzaffRO/0Q8qpDV9girt+KHeALqySZPy9Rmg8jF07dOwHlKaUnUks7Z9
	bn0G2mjDfo3oM/mz9/d9/4HWGOpuJTinwotyevJzM6Si/qOC6IsmQZxyUQu+p+iH7beHuvlWp+eFE
	w2iGCPnlEbXhRLZlAlTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjuJ-0051JC-0q;
	Wed, 24 Jan 2024 20:31:35 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtY-0050wm-0N;
	Wed, 24 Jan 2024 20:30:49 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso69915275e9.3;
        Wed, 24 Jan 2024 12:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706128243; x=1706733043; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=szXmS7HmgictJ5RAkHxueDyLdRYR+rfDMMc1ONVgan0=;
        b=Ah/JZgPGEiaNjvB2DETtx6hx/Yd0X45m5pLPSWpFf2PSohJ+2oSuFUzVtwo9eaLduc
         pqsDZRSYb2B52kK8LTEDkvpgNxOul4LJFAwV3PHKEt/DuAhSLDWpehShpQVrbW1AIFmc
         EnN61MF2M7pukwpsr6pioi95/8HOiZEEGmSs7RzFNPRHt43MDOU3ujx2DHxUh+pZpluJ
         uUxgMk43X/01aRmO+ba+H6KtaCmo7S+V+0yIQPIj99wdoswvEEuphdTVtCnrMQRDbv0p
         VnQjKDaLRI27Yyz+/xg0VSrypmfoIYeELWLkXhkrQMtro+Kwa83NzNN0nkO2ZhU5gLBm
         olHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706128243; x=1706733043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=szXmS7HmgictJ5RAkHxueDyLdRYR+rfDMMc1ONVgan0=;
        b=UB0BuimJ9o6MkIyW8TlbYW+R0bIZkdZZ5Tjk4jhgZM2qjDw7xRkk65aV9SsW2p8luo
         6T/JR/61L79QOZvmaaWQCNA0+4D2Z4sS7tFcQkxNlBcRwBf1Ocg1xDekEqxuxvsfp/Mc
         ymizHCSY4pupFMrrM3Erjg590P9IfaycC+YyOwxPVoaPxaF21JAWTk+NST0locYZWwCw
         1Ub2TT+SHbdPLuI5fnTejielwQLllRUb+s6for+qZPvqsVR1ruvbWRbC7Ogobnnt0QZ1
         N5GgIdQNN0+zryd1X06C6CtKFpkdXBzOwCqhIU/hoNBev3MGSSk2R9om12IfEmBHu85x
         pBVg==
X-Gm-Message-State: AOJu0YxnHoEBtSKVCvPJEYgTR4eZS2+jRBVeBHf0dWBV7IPuiI6QsIbK
	zYgTB/6oe8xtqlLT8gL6Hx6xb0UKHgLsRZV440VIsVfKD31tLukU
X-Google-Smtp-Source: AGHT+IFvOcW0SfdrgXgun/JC1D49FDUDLHin1aupGwZRNz+xHqfknIHxIjah7udRXtf7RnvMZKOU1w==
X-Received: by 2002:a05:600c:3b88:b0:40e:c4c8:8ac1 with SMTP id n8-20020a05600c3b8800b0040ec4c88ac1mr845741wms.85.1706128243492;
        Wed, 24 Jan 2024 12:30:43 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id r15-20020a05600c458f00b0040d62f89381sm174073wmo.35.2024.01.24.12.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 12:30:43 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 25 Jan 2024 00:30:07 +0400
Subject: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
MIME-Version: 1.0
Message-Id: <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
In-Reply-To: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706128223; l=8740;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=JJqT9UTpf85L5Gq2NC1bIoVV2fXmQ+hsdNDZBhO5wms=;
 b=pSX8bHCbBcvrohGdJ2VDdnz7u/QyP80+XkWJHVuTXKnzmrrPyZTvqljNk1DpRKs6L+oFZO5ib
 7pimpVJ6J4vCfqmrujOdGgkN1nB9lw2jdqA6la6B0IeTyCtyF4mraKq
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_123048_158154_58AB52A7 
X-CRM114-Status: GOOD (  10.72  )
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

By default the CPUs on RK3588 start up in a conservative performance
mode. Add frequency and voltage mappings to the device tree to enable
dynamic scaling via cpufreq

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 209 ++++++++++++++++++++++++++++++
 1 file changed, 209 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 131b9eb21398..e605be531a0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -97,6 +97,7 @@ cpu_l0: cpu@0 {
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
 			assigned-clocks = <&scmi_clk SCMI_CLK_CPUL>;
 			assigned-clock-rates = <816000000>;
+			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -116,6 +117,7 @@ cpu_l1: cpu@100 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <530>;
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
+			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -135,6 +137,7 @@ cpu_l2: cpu@200 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <530>;
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
+			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -154,6 +157,7 @@ cpu_l3: cpu@300 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <530>;
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
+			operating-points-v2 = <&cluster0_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -175,6 +179,7 @@ cpu_b0: cpu@400 {
 			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
 			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
 			assigned-clock-rates = <816000000>;
+			operating-points-v2 = <&cluster1_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -194,6 +199,7 @@ cpu_b1: cpu@500 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
+			operating-points-v2 = <&cluster1_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -215,6 +221,7 @@ cpu_b2: cpu@600 {
 			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
 			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
 			assigned-clock-rates = <816000000>;
+			operating-points-v2 = <&cluster2_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -234,6 +241,7 @@ cpu_b3: cpu@700 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
+			operating-points-v2 = <&cluster2_opp_table>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -348,6 +356,207 @@ l3_cache: l3-cache {
 		};
 	};
 
+	cluster0_opp_table: opp-table-cluster0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <712500 712500 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <762500 762500 950000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <850000 850000 950000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <950000 950000 950000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster1_opp_table: opp-table-cluster1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <725000 725000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <762500 762500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <850000 850000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <925000 925000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <987500 987500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2256000000 {
+			opp-hz = /bits/ 64 <2256000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2304000000 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2352000000 {
+			opp-hz = /bits/ 64 <2352000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2400000000 {
+			opp-hz = /bits/ 64 <2400000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
+	cluster2_opp_table: opp-table-cluster2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+			opp-suspend;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-816000000 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1008000000 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <675000 675000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1416000000 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <725000 725000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <762500 762500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <850000 850000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2016000000 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <925000 925000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-microvolt = <987500 987500 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2256000000 {
+			opp-hz = /bits/ 64 <2256000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2304000000 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2352000000 {
+			opp-hz = /bits/ 64 <2352000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+		opp-2400000000 {
+			opp-hz = /bits/ 64 <2400000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+			clock-latency-ns = <40000>;
+		};
+	};
+
 	firmware {
 		optee: optee {
 			compatible = "linaro,optee-tz";

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
