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
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1CD8C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 811CB60FD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 811CB60FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xu3FWhTw8y0wNngp+bVSekrOJ56mKyvgMBksoRTrYsA=; b=Bv0jRl+j5by7QQv9ZNQ1no3/qK
	0aMqQhpZa7uJvks13MmWVl1sVJhSxZAoOzbQh2v/M7yMeb5hRJGhwHU74WEeODn3LASL+dmf8RS5u
	zrLsBqJpr/YT8xJoHEG9cRHEHO5LTqhas0Sh2XXxhirYIq3IdobIr7Mh5iqNPHJ8xTe3o2De3MRBw
	uIlvuJa9etR4/HVauE5LQVFGhp7njOjdTzvT/HOzkKEQrbxdZAa6o32W2XqxwmfTmLYsdl8sLLMaf
	33XsgarxxbON+qxTn0eF2Sfd+arzFf/anCe/sAJ33TXomMnAJdHbG1rChdBUr3Dhujk7F/2qNmT/7
	rBRfWppg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZri-004TW6-AR; Sun, 11 Apr 2021 13:11:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr2-004TO5-TD; Sun, 11 Apr 2021 13:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=; b=WJsqz40T0D4BiTasYDvGrv49iD
 vz84KBghg/zwlE4QSPWaEirn/2IYWkjs2MS3sWBzjQKrhOGX5PZQCZAh6u+PYXDGbIk7gNpgDVTV+
 I6bIqUli0CgRsee8ijUPIIuYTZ/wu76lnLwUMsXg1+mzIcck7tI1gQa8A7WkJ68Us/E7xqAlw++ud
 K2iU25kWrsuhpYOK6nQglVF8qWI14PuaDnLU1r2qOYgP/NQSEiDJB6tV1wjcH25m3vg6oB4PqxjxN
 3/LolizX7dkOhCRF6bY0ZBpFpNYtl3JdL+qM+yZdUbroNGOzjaWH+kF3mcIfW7shYAVcdWHECMsNE
 FLtMcRkw==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr0-005WMe-E0; Sun, 11 Apr 2021 13:10:19 +0000
Received: by mail-ed1-x535.google.com with SMTP id m3so11805019edv.5;
 Sun, 11 Apr 2021 06:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=;
 b=TujKURGt1FeHGz4K0iqBb/VqGehpedpe2hXzNLdrqyv+CTmBYZOGuVQ/MHjTiJtx2L
 WQ+Xr8qJxwXBLj6c/w5RqBSSzlLx5/nkwv4pzbojJ92hpa40mTx/tkvPidXov5qzIK3t
 OoO7XRM33sQG4v6KfCdWk9fB3jge7TFjMYhIt17lW2mOYpH4Z+EqSlCca+4pUU+2OF6u
 A24QMmTzndsdUyHnDrv9XV/1czyIf/V786efC3Ta1/wQmce8qof+54nPbkuV8a0z9Tre
 jdREJcvJFZ5hMJ+adrSbdL4rP67v5Up9y5U476RrRaw5yXMVmULtufZCHrNKX2JH6T36
 nhFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=;
 b=iZQetk+PY/gvKECK1AUEQypHx8qvRYTR1ymOOkoNCl+zQb+wFqYcjmcBdzkZkNEDnI
 6aUc8TKEeB/nVu7vxoHKfwAhSW5PRsEzpPpNkkUK7gFCDCunlLiB3oL5950nPvGcAcbi
 PndGpdLlnY4xhiyp4Q6Uch0oNQvD635VSAMwZaT161nmUjrJSQTcWH8qqhVoLY2uUTGr
 A4X7VbrFYWaHUEgKr0+yRC5JpQwda6pio433j/8/eDA1PZHFk2/EScWUAXM3mDjSCca2
 6oWupQMwxOP8hEYg2R/peBAks2w9+KoR/ytogTQziMH0xmR01gpxH3lAZVtQq5T2jXei
 zlPg==
X-Gm-Message-State: AOAM53150D3JyZeKyfN+DBOuBa3v4kkRnZfJNUjoNbLsytraJMcNBePs
 l4AH2NMBl86oddvv2JP7Cg4=
X-Google-Smtp-Source: ABdhPJxpWbRylv8hRSWy+Dl3+JQE8MDXnNeIdWg+QZ0c0yqg5G6HGyew3HpL9IuIVzF4jA1UVB+ddA==
X-Received: by 2002:aa7:da46:: with SMTP id w6mr26215661eds.30.1618146617114; 
 Sun, 11 Apr 2021 06:10:17 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] ARM: dts: rockchip: remove clock-names from pwm nodes
Date: Sun, 11 Apr 2021 15:10:05 +0200
Message-Id: <20210411131007.21757-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
References: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061018_489056_CA993757 
X-CRM114-Status: GOOD (  11.89  )
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

/arch/arm/boot/dts/rk3036-evb.dt.yaml:
pwm@20050030: clock-names: ['pwm'] is too short

Devices with only one pwm clock use it to both
to derive the functional clock for the device
and as the bus clock. The driver does not need
"clock-names" to get a handle, so remove them all.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 4 ----
 arch/arm/boot/dts/rk3288.dtsi | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 47a787a12..e24230d50 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -355,7 +355,6 @@
 		reg = <0x20050000 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		status = "disabled";
@@ -366,7 +365,6 @@
 		reg = <0x20050010 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		status = "disabled";
@@ -377,7 +375,6 @@
 		reg = <0x20050020 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
 		status = "disabled";
@@ -388,7 +385,6 @@
 		reg = <0x20050030 0x10>;
 		#pwm-cells = <2>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		status = "disabled";
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index ea7416c31..05557ad02 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -679,7 +679,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -690,7 +689,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -701,7 +699,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -712,7 +709,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
