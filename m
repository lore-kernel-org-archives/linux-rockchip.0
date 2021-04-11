Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25C30C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C026F60FD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C026F60FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CfMaQkA66Hq4xDMHg2A3ptNYBO2lfCvXWU5wpFxhBas=; b=R5Sr3jHCc1Z6ALuSZ4oLZDqMLE
	xHDINncy5pv/zK6kmiY8GUH9Z9P9gvQXPFgHd7EewuCg1Z8MNvi6mYdqX4UmzyfvjsYF+/m6eQYJH
	/uCfUVZ7XHlKXjpRwUvl3zrKuf0riyNZpnL3aaC94NT1IaBctuvCPvjdetmVOyDr+rsEcTtDO4ByL
	usEbliqoq8BK3/Tq9SS7hp9B8bg3wW6YxigH1rCHTwaI0Y042MyCdsQAmYDcRJRXci/nIb/qrZct4
	eceEL/EiBaNUtsQWyOl+XxuByjGg7y+SJjmcGESPS0yoqhonE9rkHm7bUIWff/PXV2CyL5X3YuOTI
	lFIWGx5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZrX-004TSy-CA; Sun, 11 Apr 2021 13:10:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr2-004TNq-6i; Sun, 11 Apr 2021 13:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=260yFFsBhy1Ilpe0300ltWfnIm5n5zeKQOx10STsmU8=; b=mZ0V1lWPAMtkOAo8/2/Zd8yl4G
 QnoSVUsP/r7BmsyaQtZmFRcC8URen2j4/apW4ViDAVufgybO7egT1pad5n852gn44snnjE/Lx99Sl
 8aT3bcSRnOsuHjQDXFfnB3xZTyjy4bzRV1+rXN7exn9Lag8rh8BhxstsnM/NsTcc3+9FzS5YNHC4Q
 cTjLbyfQHxSMgvzFPn8JwzV4XuGQxQtVxzW1aASbLsNcL0kyEbtLnRRQvaW/4lY/HPryKZVwguOmB
 2Wo9Adz6QwOJZy6QDOjqTl6HHygPSqX7qjgAdwLDc3hlYr7dqeA9Vkhvl4MqXNZLcgEwFbdpt/LFa
 VC65S+6A==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZqz-005WMQ-Gz; Sun, 11 Apr 2021 13:10:19 +0000
Received: by mail-ej1-x633.google.com with SMTP id e14so15774599ejz.11;
 Sun, 11 Apr 2021 06:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=260yFFsBhy1Ilpe0300ltWfnIm5n5zeKQOx10STsmU8=;
 b=MoFzvhZVUkEPuCEA0RmK+MGnNHtcZeWyBRzaY8mE1paReKX2UZJJJuZn7AzsEo/yIs
 CG1qxuvJn0SHIfE8HbftaKCXX3ArfgKF2d5uKv04Aq1ngczayEz2iP6Yjqgczcm4hv9r
 zn1/x4pHg3w66ZJuXmPoE70QSGkYShDYr5rctFomtj8YhD4mLGijJCTaVcZ4b4p66tnq
 hQ5zyX2lCne65evuOOd6YWX2v/EXhm1HWsxA9hrImr5amG2fdivDsoDX0x3DieaUVhHR
 yXEyzBYKpI2PVpSCE2FZoYdqKaWGB4GqoaNuQk9TMaKRNopTZZtPl8c20iip1gGAiaIg
 /YTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=260yFFsBhy1Ilpe0300ltWfnIm5n5zeKQOx10STsmU8=;
 b=eTOFer5XWFWbvrdUBJ0iFvij6a/5MQ6+8PXnrMNq4hx6vFQtPPPnEyJjbO1oPjUmRD
 EHlTjI7tLhJaGc4KSGMkyLDPiO/xLLWi2Jl2NZjoBH2ivQpcOyPLrAn/EAiow5IGG+8x
 u9+JNOaEv+8wnFy7D8ZHLd8GCGynkYf1hXLOoA4mckg+ULRbMpKu+Dopw7MJgrhC4AI4
 5oLecv6fyswdEd5WGmayR+gbXbaHAFRTiyoW5sv3Kllyc1gRO7J9Fwx8wkE/OwH86eo+
 FQUxcPCxGhNDaxYUIdeUwtXyAvIC7MGwHQLU3sImgm8zWabeDGmu+FJJBU93yNO4I2gJ
 x4zA==
X-Gm-Message-State: AOAM532yCEPEltIsYZLYTkCHgHZYfX+EFqodH6nfg1zpZQeK7BeNufaD
 RAIFysJbNriLDlUTkAer1Lg=
X-Google-Smtp-Source: ABdhPJxnzLORRtr14fNC0okpdSRW1K8t7cG9PtsMq8H+5ronSRoXAchufD5QnPG23kZvaaeuN5ldUQ==
X-Received: by 2002:a17:906:d9ca:: with SMTP id
 qk10mr22621742ejb.436.1618146616156; 
 Sun, 11 Apr 2021 06:10:16 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:15 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties from
 pwm nodes rv1108.dtsi
Date: Sun, 11 Apr 2021 15:10:04 +0200
Message-Id: <20210411131007.21757-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
References: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061017_581104_4CCAC487 
X-CRM114-Status: GOOD (  10.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm/boot/dts/rv1108-evb.dt.yaml:
pwm@10280000: 'interrupts' does not match any of the regexes:
'pinctrl-[0-9]+'

"interrupts" is an undocumented property, so remove them
from pwm nodes in rv1108.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 68e2282f7..af033d4c9 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -217,7 +217,6 @@
 	pwm4: pwm@10280000 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x10280000 0x10>;
-		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -229,7 +228,6 @@
 	pwm5: pwm@10280010 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x10280010 0x10>;
-		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -241,7 +239,6 @@
 	pwm6: pwm@10280020 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x10280020 0x10>;
-		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -253,7 +250,6 @@
 	pwm7: pwm@10280030 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x10280030 0x10>;
-		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -391,7 +387,6 @@
 	pwm0: pwm@20040000 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x20040000 0x10>;
-		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM0_PMU>, <&cru PCLK_PWM0_PMU>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -403,7 +398,6 @@
 	pwm1: pwm@20040010 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x20040010 0x10>;
-		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM0_PMU>, <&cru PCLK_PWM0_PMU>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -415,7 +409,6 @@
 	pwm2: pwm@20040020 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x20040020 0x10>;
-		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM0_PMU>, <&cru PCLK_PWM0_PMU>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
@@ -427,7 +420,6 @@
 	pwm3: pwm@20040030 {
 		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
 		reg = <0x20040030 0x10>;
-		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM0_PMU>, <&cru PCLK_PWM0_PMU>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
