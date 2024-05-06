Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 824BCC25B5F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCCXAuAZYOizTHMZn3b5SNYK/UmpJOLDYEew1fR22mU=; b=K9ScinEokJGUgh
	VmhepQsj3oA9QZgRqPa5uRy/uvV2cQJS5dxgxFFdZVMFpo9FTAHs65snD0e8mC8yY0eNpPLX10BI4
	J2uIFw4YgcRxAiMZGqoxJ7Dbuw5aokdmzmsSN5pJxz+nR29cjmqoJPAcwKel6330A42zQ9QR1mjqZ
	BX3CfWhuOWTIDE8glfV7F/7U0ifq7yL8EyQmla78Sdb9iNfQzPTjsAvL1SXoB78OIWpmTm2lN7x8j
	pa10KUHB6Genrq5/bPf3BnX52O1P50sO7eDq72/d+q7NgrIlGPy57MTaAskQQXTuSpBc6r+E6uDaj
	vjxzWk2ele5dKpq7tTig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umt-00000006ojp-1aXG;
	Mon, 06 May 2024 09:37:35 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umm-00000006ocw-0sT3;
	Mon, 06 May 2024 09:37:31 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a59cc765c29so181656766b.3;
        Mon, 06 May 2024 02:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988247; x=1715593047; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YwJQ8VUdBqnfny8gTVz/c10Fv5YxuURKySJ0zdXA/+A=;
        b=SMCwx6Xh72PrPCCmh7Rhar9xIY5v9K9y2r00JWtgfPPbOLsXYNMCG3rHTNKW9+0i7U
         1U9Nq1aipuiGqtwy1UbgemkLlm1exbESOrCppDlqExWO7GK2HRNZcP+5ZpHcBxuX0cyS
         g15zFHtbyBO/Ua06NmDkp65XLQjH4Fdg1Uo3kcq1v4tQ+ucE66EjNjFTv5PW2ktQCwgC
         ea/nOCqrzC7zov6xunnNcteA1hoThhspNJokHJD5jLl+xdPY8uPhi50oI2PVSX1qtLdw
         rbnWljEtfbtoKa4Qz1tyvS8db2sgsrHXBqSvh+VSQIZxdZ+gYvHOPio/JGh3a6At1jcR
         Mg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988247; x=1715593047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YwJQ8VUdBqnfny8gTVz/c10Fv5YxuURKySJ0zdXA/+A=;
        b=cHW/WGTLMvIQXTP0kVOjskRZ/3DS1itfaAV6TuiGx9c9zBVufV3iWc4ILUpXXia0s6
         6KUIswYcTPzwgoj0kGc6BaMQl12UbjbINEHqt+jaejpod+fxrK6lViNWbq5ife+w53sq
         8bzWuaUKi+Hn0zForLzgZEjOr0E4D3O1CmyGNvCw/9SY1vgxVcNCh//mwJelARhsb2y1
         +sk62OBNXOZP/fnMeX2K50ikd8o/G4/ew1f6QUfikMNhmhlalTwBdyZO7bOitxfBBNzJ
         h0vFWAbtJluQ9bV3+7RlU46YqfK3MrUn9ojAcREIrQX6JghurF1JbG6RYLoHNLzSP4KP
         zeWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyQOJel2XsJ7Bon/idgStM5Tmu6VqFyUfnf5BrCR4JN4kLk+xVEeOETrWT+EFy58dAmtgOtxuMKn5yATO7mSbb/WeKpBK6iP1TtBLEx6z70bORx152ArMgzMvMJ/gCLsokqaX9IFbsROubNXgxHwB1e6M6bz/siGM=
X-Gm-Message-State: AOJu0YwbP5lgPehG1maq3T5zNVgwtQyETay5Y+tXqJN9GffhqAEONAOG
	XqxNmFrccclVnwRH9+fJrn27vnvM+KGLN+2A+03fq70m5y7nvp8c
X-Google-Smtp-Source: AGHT+IGl5bNbGtIncVQHCuVr3453VDHFLfzpkdJaqPBXiJN/wYUafW4SauUKLhdoaGhtK9C1HFhj4w==
X-Received: by 2002:a50:ab1a:0:b0:572:a16f:29b with SMTP id s26-20020a50ab1a000000b00572a16f029bmr5508587edc.16.1714988246738;
        Mon, 06 May 2024 02:37:26 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:26 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 May 2024 13:36:36 +0400
Subject: [PATCH v4 5/6] arm64: dts: rockchip: Add CPU/memory regulator
 coupling for RK3588
MIME-Version: 1.0
Message-Id: <20240506-rk-dts-additions-v4-5-271023ddfd40@gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
In-Reply-To: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=5927;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=hRIkjs6ilNO5CkTYJyMd31t+JYZiL+ZsbuuDrU+GbqI=;
 b=XVssbaVtYFgNJD/XqYSrTYailN5Ixj2qPGOg//g6Locd7JznRCRUL/ireurFFFp18tnJlooDf
 tXw2RHepzHuAmunHqLkS8cBfLNJvwfiLch3E3gsH6QRKwVokgZS+b30
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023728_558276_BCBB276D 
X-CRM114-Status: GOOD (  12.78  )
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
index 7c3696a3ad3a..00f660d50127 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -878,6 +878,8 @@ regulators {
 			vdd_cpu_big1_s0: dcdc-reg1 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -890,6 +892,8 @@ regulator-state-mem {
 			vdd_cpu_big0_s0: dcdc-reg2 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -902,6 +906,8 @@ regulator-state-mem {
 			vdd_cpu_lit_s0: dcdc-reg3 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
@@ -926,6 +932,8 @@ regulator-state-mem {
 			vdd_cpu_big1_mem_s0: dcdc-reg5 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -939,6 +947,8 @@ regulator-state-mem {
 			vdd_cpu_big0_mem_s0: dcdc-reg6 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -963,6 +973,8 @@ regulator-state-mem {
 			vdd_cpu_lit_mem_s0: dcdc-reg8 {
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index b4f22d95ac0e..baeb08d665c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -832,6 +832,8 @@ vdd_cpu_big1_s0: dcdc-reg1 {
 				regulator-name = "vdd_cpu_big1_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -845,6 +847,8 @@ vdd_cpu_big0_s0: dcdc-reg2 {
 				regulator-name = "vdd_cpu_big0_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -858,6 +862,8 @@ vdd_cpu_lit_s0: dcdc-reg3 {
 				regulator-name = "vdd_cpu_lit_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
@@ -884,6 +890,8 @@ vdd_cpu_big1_mem_s0: dcdc-reg5 {
 				regulator-name = "vdd_cpu_big1_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big1_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -898,6 +906,8 @@ vdd_cpu_big0_mem_s0: dcdc-reg6 {
 				regulator-name = "vdd_cpu_big0_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_big0_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <1050000>;
 				regulator-ramp-delay = <12500>;
@@ -924,6 +934,8 @@ vdd_cpu_lit_mem_s0: dcdc-reg8 {
 				regulator-name = "vdd_cpu_lit_mem_s0";
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&vdd_cpu_lit_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
