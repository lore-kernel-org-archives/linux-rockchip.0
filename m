Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EF7DC48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 19:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YOeyNBkEdayOByitMF/vgyFuamDO/EyERNPBNz4YRk=; b=I1NNRNt20pNKIN
	t54bS0eXtuxaZLm5I7AG8rtozNriBf6708OckSjJeISAAoXNLnDy0Xylmob3wQ2h76F5hJmMkWLYw
	G1sKxkDfRKSh9ZTd4DeAhVj1e5rDOTY5Xk35B8eBPW82UaX2ZJNzmd+g3IYhi+ooD2z28VEinJ1IS
	U1N12fimc9tqKAFzQFd6tPqAKP4Vu3ALagD08exL+rtrcNahfgH9+wMWzo8W5I8g5f9WgPPaGcMr1
	V41MFungPza2iv0AY2Y+Q4CYNpsfuLb7DOnkzsa3sqBZzWdetIhGgGAopIMFlk+XlUpqBDBT7iK7k
	yAtHufXWVc/vpGS0T1yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm4N-0000000Esbd-31Rp;
	Thu, 29 Feb 2024 19:27:51 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm3l-0000000EsCg-2VkG;
	Thu, 29 Feb 2024 19:27:16 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-412bb23e5c5so7332295e9.1;
        Thu, 29 Feb 2024 11:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709234832; x=1709839632; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZwVUPftNegb6HH4bYsAEUZGVb0uMfPEnr6vp5tlxDKo=;
        b=Ap/0uL1TweAVy8g5m9FzGBDaovXpxl9vyeeLknbH2+5bXFxuF8sVklaaaxmnfZFKtb
         iCzj1s/jEJY5drUrAqWsK/HVbLG+/ibvHnU9qdoFvaWR1/8SGaoZomdZAY7VcFMXjvDu
         ovGYMz0sFiG8Ai2AVwClGsD242YQXNBHcie2CtEMoHgyBjrrM0vYhtMWnYQGAavoRs0O
         27jbJuVSXejwIcvUavnbNxjUxYgaBgzawQqjGlNQlmzZ4DcuNxWr314Zf4mnpk69nZqh
         2ZMAgCxsqS6UPfsQTxJSAeBaD0+zqLsAeIxuMKE/js4BoJqiQoA5G19yiKqBLzm9zsbG
         jJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709234832; x=1709839632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZwVUPftNegb6HH4bYsAEUZGVb0uMfPEnr6vp5tlxDKo=;
        b=XFJ4WmanMrHeF4V5HPKDnuKMWbqjH/JOKA92YUX+GWJJMQj2gVGq4MPSRB7mhSCOSo
         c0LREmok5R28EJCGMASJx9g/XIqshfge46mlAWYuR6x0HMrwNVCuOjYl0T+JRKAE20kf
         P+a1ZofH31xWMkJSaSqIAeAb88agCDsuR05bKPYcIa3PxWlOCh7vEjA7CLgPxK/RrwTS
         Caqtk6Kh2VOpR7JhgSw6cgmVB47SYT0voqJHCUoTDzi0SmUYsiXotBvR1gQTXBNZtr1Q
         3BERk3EWa7PMnvBN2+QzSt2dCfhursW8CdAladW4RSxz5m13RarKy4HUKFwOQED/u8au
         xqGg==
X-Forwarded-Encrypted: i=1; AJvYcCXBX+yTq8DSwWyVvABwV0TCvXxrnNg/ZXx7cGVmu7XDq00y5Z6x3ssRRQq3Vf0NrfjT1ZL13tcT6Cn8A+3smRE5dscnxgdqFPA6xWjxRkcML6MmC9VUVqin8DyBbOcEgckUsWCPhlYnfHG5XSM58nAZePyuyQD+rIE=
X-Gm-Message-State: AOJu0Yw2//kQfGmFZzc2QKAFU7+1aT6oQll/CxoKP6nsNuy6z5UWbzJH
	mZnUOLftNGckhfQi+iho5mN3no4gsqnOWF0p/0+G1YTFp2U3WFYZ
X-Google-Smtp-Source: AGHT+IGgvwjsJCNA59wEBsCYDT3n5G2vTxs3waTze6xViTgTY3HRaJ0AjinQi9sy8qMMKuZNdbvcig==
X-Received: by 2002:a05:600c:4749:b0:412:c379:606 with SMTP id w9-20020a05600c474900b00412c3790606mr831572wmo.2.1709234832258;
        Thu, 29 Feb 2024 11:27:12 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:6ebc::d35])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c1c1400b00412bca49a5bsm2853944wms.42.2024.02.29.11.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 11:27:12 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 29 Feb 2024 23:26:35 +0400
Subject: [PATCH v3 4/5] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
MIME-Version: 1.0
Message-Id: <20240229-rk-dts-additions-v3-4-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
In-Reply-To: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709234816; l=7377;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=HqctyYsaxYWsfVb7+E0CHFs01nBeI4mecklDekwBdvM=;
 b=IYPGKtGqei9coIZquJt1iE33PtngNeOPlB/ef9HB4xIjCSziIGRB8ptL33UMkddciAK3l4pds
 VG9L7idHWQAAxjgIXiVfMwhIq6g+NNrafoCbW8NrtVp4uhzEa4VB9M3
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_112713_838046_3064BB8D 
X-CRM114-Status: GOOD (  15.28  )
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
dynamic scaling via cpufreq.

OPP values are adapted from Radxa's downstream kernel for Rock 5B [1],
stripping them down to the minimum frequency and voltage combinations
as expected by the generic upstream cpufreq-dt driver, and also dropping
those OPPs that don't differ in voltage but only in frequency (keeping
the top frequency OPP in each case).

Note that this patch ignores voltage scaling for the CPU memory
interface which the downstream kernel does through a custom cpufreq
driver, and which is why the downstream version has two sets of voltage
values for each OPP (the second one being meant for the memory
interface supply regulator). This is done instead via regulator
coupling between CPU and memory interface supplies on affected boards.

This has been tested on Rock 5B with u-boot 2023.11 compiled from
Collabora's integration tree [2] with binary bl31 and appears to be
stable both under active cooling and passive cooling (with throttling)

[1] https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
[2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/u-boot

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 122 ++++++++++++++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 9bf197358642..bd39c5c47bfb 100644
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
@@ -348,6 +356,120 @@ l3_cache: l3-cache {
 		};
 	};
 
+	cluster0_opp_table: opp-table-cluster0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
