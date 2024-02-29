Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C83C54798
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 19:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgLNPIsjHQhr2k5VBvGEwFlyTNPWcoBtcsCeFe0E/lw=; b=B+z55zFIu/QQu/
	5ZOE+Cl1UzMDjjJAeN4Xm16esD3/RrEV6g2nxuUqkJ+qtgE8HyY64ml7S7bXfYeINHeWPrWpnwwik
	/q22JXo6YPvwPGRuEQ2veLHULFxILbnwjEPkXdg6RkVkt8Py+B7o1mI5iKeQwSId/WUUUWc2eKfz3
	Nd5bQLDX00LTOmcyEBPnrzbijGljMm/to0omji9KFuOodIhZ+waiWLxBvtl8LPS1kKtHCuNOqjxjb
	hDDYeo5Mx0Wnqsmlkbg33BsqXfnwjiuVctq29e4SVE9FvueyuYwm1uji0OrdcvPlQCibZE3SISMS3
	lbl1xNhmp2O4Usob3bUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm4I-0000000EsZ8-3RxF;
	Thu, 29 Feb 2024 19:27:46 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm3k-0000000Es7k-0umJ;
	Thu, 29 Feb 2024 19:27:13 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5131a9b3d5bso1446217e87.0;
        Thu, 29 Feb 2024 11:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709234829; x=1709839629; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRkrxLzAapN1oFv+RsuOX+L6Z3XPlb+lZYTxmPs/FuM=;
        b=jehu6re45Kukx10cLv7qqjr9o97MYr7TkmnYOd0/TBVyzOaNgdTVlBIMEwRob3Td5Y
         tddk53BYtSCuCMLE71dSiSR8Ff3K25v0SnB+pKBZW6OoDR3V5kP0B2o1j47Acm5fEEMV
         I4OkvMzOhUXqyGOkw2oS7cLlvUG3qqwOSGS3tUKG0HRLBBx4qcjOIlAsf+Z8F6OHkJfT
         FwxynaUBjKYMVkV2K/T6okw/GQ7q1bhJ4aYlsJaKbwimC+EmRChrmJxAL2COBtk5/Gdj
         Plh6kmq6QkDRPf2Ck3dVr2GbL5vIsyDOtNLGSwuDqmNQ8R/jDWnbGAwt9DmdJuVu+ups
         B8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709234829; x=1709839629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRkrxLzAapN1oFv+RsuOX+L6Z3XPlb+lZYTxmPs/FuM=;
        b=EAbysr1Tr1tPOVX6/KY3A1B2Kf4uaAMfPWloee51WnMXa51nnNUc3rdtRJ2w/fkFPe
         tT9n/93emhmzWaxOma7zvfUX0I7YR8PMigL1MXqS0zVMt95fkHJ/9aXoVS82GOKCHmLd
         X0KmLKAo4Zj577xju+QmtxnjrDBnzjPY4KDYGbhSzXrKFH5jCSLZV8ut/hxhHIn7TbdS
         md8convtu4a6eYEiHSnsnjQaSFkeheoKUV5J+jc+oShAuEZp/W5ZKgmUnAJ/9ovFayAI
         kDozLOjYfjQSx8Y2AUdmU6bIdSj31WV4goR/Bv9l/UKnt2SgbeJ+lMj4/cI0VGuw5Mk5
         k7+A==
X-Forwarded-Encrypted: i=1; AJvYcCWRwM8YP9u4awMIKTuKqqZkbWHKdXsDmWsa+cGe+lgw89nEg/eCHPSL2thRfSc9j+mf+Y69EjLLoqHOU6xFjBnY3JgHUI1co8DBxias2vlQine+XlzPw/3WBXBAxfq5XRVxfBgAOE8BAcCKJLrcemV6IpLr6C75bF0=
X-Gm-Message-State: AOJu0Yyz87cM3N4Bc86AMHiNIutF71O8lltE12ehe45RE9D4ZKpXjWO9
	ZMEQW9Hz31dsZPLx+4IBiBkjAKAhmunaranmuOtfM0gYnv/pgc4a
X-Google-Smtp-Source: AGHT+IErVqjV3a+j6Yl9ulo0aeAHio/JIuZkEQoqds6hmzl54SAZ9JSyigSZr1dPGg7WfLjV5P15QA==
X-Received: by 2002:a05:6512:acc:b0:512:c9bc:f491 with SMTP id n12-20020a0565120acc00b00512c9bcf491mr3108393lfu.47.1709234829291;
        Thu, 29 Feb 2024 11:27:09 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:6ebc::d35])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c1c1400b00412bca49a5bsm2853944wms.42.2024.02.29.11.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 11:27:09 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 29 Feb 2024 23:26:34 +0400
Subject: [PATCH v3 3/5] arm64: dts: rockchip: Add CPU/memory regulator
 coupling for RK3588
MIME-Version: 1.0
Message-Id: <20240229-rk-dts-additions-v3-3-6afe8473a631@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709234816; l=5927;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=8H/tOXt2VM0cB2gFZgy5l9YIXKh951auxB3otM6qfCo=;
 b=bqp+KXlto4YfmOpGe6God+ep8UDgtPadNyatqUfzq6lMupZbDME0CufrEW9xNpyE31Wam2SX7
 J1KuN2GU9A2Cvl8qe+f5Wdzdby1BkpK2mKN3vmagirbWjZnfoPsS5RM
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_112712_343571_E0256DFA 
X-CRM114-Status: GOOD (  13.13  )
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

RK3588 chips allow for their CPU cores to be powered by a different
supply vs. their corresponding memory interfaces, and two of the
boards currently upstream do that (EVB1 and QuartzPro64).

The voltage of the memory interface though has to match that of the
CPU cores that use it, which downstream kernels achieve by the means
of a custom cpufreq driver which adjusts both at the same time.

It seems that regulator coupling is a more appropriate generic
interface for it, so this patch introduces coupling to affected
device trees to ensure that memory interface voltage is also updated
whenever cpufreq switches between CPU OPPs.

Note that other boards, such as Radxa Rock 5B, define both the CPU
and memory interface regulators as aliases to the same DT node, so
this doesn't apply there.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts    | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 12 ++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index de30c2632b8e..dfae67f1e9c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -788,6 +788,8 @@ regulators {
 			vdd_cpu_big1_s0: dcdc-reg1 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -800,6 +802,8 @@ regulator-state-mem {
 			vdd_cpu_big0_s0: dcdc-reg2 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -812,6 +816,8 @@ regulator-state-mem {
 			vdd_cpu_lit_s0: dcdc-reg3 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
@@ -836,6 +842,8 @@ regulator-state-mem {
 			vdd_cpu_big1_mem_s0: dcdc-reg5 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -849,6 +857,8 @@ regulator-state-mem {
 			vdd_cpu_big0_mem_s0: dcdc-reg6 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -873,6 +883,8 @@ regulator-state-mem {
 			vdd_cpu_lit_mem_s0: dcdc-reg8 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 87a0abf95f7d..9c038450cd7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -818,6 +818,8 @@ vdd_cpu_big1_s0: dcdc-reg1 {
 				regulator-name = "vdd_cpu_big1_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -831,6 +833,8 @@ vdd_cpu_big0_s0: dcdc-reg2 {
 				regulator-name = "vdd_cpu_big0_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -844,6 +848,8 @@ vdd_cpu_lit_s0: dcdc-reg3 {
 				regulator-name = "vdd_cpu_lit_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
@@ -870,6 +876,8 @@ vdd_cpu_big1_mem_s0: dcdc-reg5 {
 				regulator-name = "vdd_cpu_big1_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -884,6 +892,8 @@ vdd_cpu_big0_mem_s0: dcdc-reg6 {
 				regulator-name = "vdd_cpu_big0_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -910,6 +920,8 @@ vdd_cpu_lit_mem_s0: dcdc-reg8 {
 				regulator-name = "vdd_cpu_lit_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
