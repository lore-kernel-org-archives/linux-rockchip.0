Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B4EAC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C16FD6121F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C16FD6121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xu3FWhTw8y0wNngp+bVSekrOJ56mKyvgMBksoRTrYsA=; b=TGG5EfFCUiPyeOUd5uswD423x6
	jFV3P2xsl+oaxT0HsPK15ckZTeM1R2+zerpHdx3U9MiMXLJlhU8C2R3WBV4r45X/T3BS0pwdLciuC
	nazTzrWz5E/X2H+DyR0Vz9ZVFxLFwfzFGPqA1DoY2nXJKUsWGaaNxHNG5CAyYhUU6vJREy/pNXSSG
	MvGo+DS4VsmY1iH9nACdIGF8obeusLregLazaRN0fmNh0WDLKsUx6JW03ucAfdyDbKYzakoO8PUzr
	W4KioC/y8bLXlez12U6uOtcRIpiLTectSUD/wrlDSHqK66Ypz+dy6Xjbctcza5sHgCKzveMVaO3X7
	Tyi45vSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW2lj-007ZvE-Dv; Mon, 12 Apr 2021 20:02:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l9-007Zpi-1I; Mon, 12 Apr 2021 20:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=; b=pD8FSzXvldbEMcJbiD23kIU3ki
 YYLBrZTUgzA4lphts92WxIcqjihGRX+3ZObm58uDnQ+y8SA+acqBpu62EO/nA2PW6+Ke5bJOT7yiK
 OFBejVej0o22v/z7nhH4ghJko1kF4zS3zJNoA7De9rmrD+sYhdT1xUpijCIOJBr/ppCV1Yo3rjzEH
 q20icyuGg5L5naKlHlLC9dSI9aX1qeAHX9xThkmz86g7ezNJoKA72om4BtouKGOT96h/KPlaxDKs0
 L4r+I36Tc732uJN4ThtnqugNOIqs2VTyqwT8gAZWc/LaXlAMCsI9e4DhA3Ys3eMVWWtKXj6iDsgsQ
 iOoHHlww==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l6-006Wbb-IU; Mon, 12 Apr 2021 20:02:09 +0000
Received: by mail-ej1-x629.google.com with SMTP id w3so22336262ejc.4;
 Mon, 12 Apr 2021 13:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=;
 b=qh59HB/hE/Y3AvIY5m10Mpyrf2atm3n/6KSctcZQ/2Z2aI8Pore38oGdJ+1w/B7tJQ
 wXUA5PsaIMlzN2cadddZ4YUAODXpafYVv9irLuvqV4xg1AeS3pTt/uZo9ryhtnvEtqxk
 xwTGiqSDmtbrvyymQqkSVs/0eQu5Y+qVs7kCs9KEtx4ll1FrpzNrqXK1xYjB2nXKkfQ5
 8pbkB3IREzs//DAE67l9ZtMB+bJ2jKc/YJiw+mE+vvf3NdtzhO49GqgsGXCfhQGEOyYi
 LoHq+HkOr8NOgBE/ImVdCU5iDomt5S9u7nDf2u2XtvqZLfyONTQiBGdR9wJtYbdWIHkt
 ZvDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+xTKglaTtBBnIwb4sWoIFa19QpsHo2j4/zd4VoY1yJc=;
 b=AgkoMZSK6lSs9afNKh2Q6kvTdhspKRwNqdk30Afn2XULoj36Oj1Wk0/7HctJCKvecP
 BRtcBq1O6mrjNn2Gm3xCw7pszVCVL7//0q2DckTg3bmI6daRQ3krAdA3wIHCbXUVevcY
 yychVcHU2i4YwNVXUuzFzFTmjRUnVAmt6wzMX4+1rCyRGvrTuq3x2STwAt0TOVgI6st0
 Rm6JP4ZSQpRAa1u7seIZh0KoEkxPKkdGINkwx4n0qGxpGPa083coL4CMFkreQ1cESxsN
 nrtvHxGBmWQHIPa9HpX1XyiokGO4WTrvaHdH/m3SaO/h2IMSdypmLIChDdpMj53dCY3y
 Ubiw==
X-Gm-Message-State: AOAM532AJlFXGxGEjMEy6Ai+TOf8f2wUFQcBjqilQyNJJby//y/yTXM0
 6+d11t+4gi+BygVB5Kn6HZk=
X-Google-Smtp-Source: ABdhPJxK1rEEbA5wGozTlAIcW69RHJgVqRiptIwmUce5/T0BP+VeY7DEnUHv/uZx5NPnilZcBolNyA==
X-Received: by 2002:a17:906:430f:: with SMTP id
 j15mr28964429ejm.543.1618257727215; 
 Mon, 12 Apr 2021 13:02:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x9sm7514531edv.22.2021.04.12.13.02.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 13:02:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] ARM: dts: rockchip: remove clock-names from pwm nodes
Date: Mon, 12 Apr 2021 22:01:54 +0200
Message-Id: <20210412200155.5316-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
References: <20210412200155.5316-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_130208_627587_F3A007DA 
X-CRM114-Status: GOOD (  12.48  )
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
