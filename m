Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89DE9C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 14:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lr2oL4/WSDzmSFeOb5j33TyqDGgjIhMHT3b/HxJfqUU=; b=PVwEhK1tn59e5R
	oTbNppUvaUUcmFUdeTz70SNIGscU7X158b6EG4sUgfd3Qzwyg4EOrDrMro7bVsR+chFHI51nBIF1c
	H3QfngLSw5ZztpUWGESSj0np8Si6USsOIAx+L67lOz+lJtev4BYN0MhuP4y5XEq/41VCWjdYZuCWo
	IKZq0J87Vdiq6u0VpOUuBRB3GDA63eIyU8HwfaZ9Gkk1iB89EyeVnhIcNJajz/udZ2dmxIVs11Ukj
	gE4ds2KJPc9Jo4WCjw/4j19IGxRnGeBSEwRYUoXZDxudgDTkjiXbrUYZo2ddLnRxpwW9SQKwnePTj
	E82o+wg/8Itk3QfB8OaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odu9L-003RVC-Pg; Thu, 29 Sep 2022 14:04:27 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odu94-003RPh-TJ; Thu, 29 Sep 2022 14:04:12 +0000
Received: by mail-ej1-x632.google.com with SMTP id hy2so3005063ejc.8;
        Thu, 29 Sep 2022 07:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=aaTqeDdRO+djhzLgpWsYFsBYnZe7c1ZyDlDKq9kjNlM=;
        b=AsbbTHW/qkgPUXo6+GibyYTqC/UvT11BzBBoZ7djQe4SKUDh8YwZbXI89PHugMfbNm
         1egcxR39HYIKiFXIrgH7hhOa6nkR1mMQcU3nYCkmyFLoecJxsKcajd/3Z7aqKOUB1XLg
         7hcQua+I953Nx/QUnjkWlCQFKpbpMFFYEgvhesUy7OrLMYzXpxdXGWdNkiv1lOPSmfa5
         JwZYI/h4SzIcgPDHa3nVqak44JL+CQj1bmURpsV0KnEGzOD2SGnXuZFBtrs2IDxyvXA4
         0SiPs4WMCvmeCL/jH63Wk3DxAwZHVj/FpnIPrbrjCYhquvEePHqmYkBpmxkhtAl7AfXi
         +ObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=aaTqeDdRO+djhzLgpWsYFsBYnZe7c1ZyDlDKq9kjNlM=;
        b=ah4EqlTUz8WLmMU6+GXu5qmF8cKDN6ifQv+XEIX7DtiNQG4KxRVT0Hb3676st6VdAS
         Z75/B9Uh13LSjk03wmPChhu7AEQLGYlDYQ4gk4RgaI3oTRwwu4ESx1p2P16QPa1yi7mm
         ktskQP8MorwY6N3026NyJPOKTN8v6YxfmoJOj9oyyg3dAzJ5dNm2EshYlPNJiQPvsIeZ
         NqsCpMy5Biwo1pDNvudcnC9JJbOXtchJ8zm2KDAIA5vAFZSXBcSZI2IR4YLTyNn7vN2A
         uXcy7fzNZIf2byzsxOIxisXMZApKkNbfJbcBCPl3N6JGCeq4KgonJgv58OOq/Uwrli2j
         XKFg==
X-Gm-Message-State: ACrzQf0tT3WuGfxjkOixZOEf1YTuv0/6bbjGX2a9lAMNVyN1XfTPltt/
	LLjLB0Ap2GbdceQsJzeTtMs=
X-Google-Smtp-Source: AMsMyM6J1MsnlGw55LN2xdQKGrcd4z5IXbVJSVMbllTOO4YiYid0p3lSXe8daZsBKfE9a5aoQ6rRWw==
X-Received: by 2002:a17:907:808:b0:730:54cc:b597 with SMTP id wv8-20020a170907080800b0073054ccb597mr2831906ejb.434.1664460247776;
        Thu, 29 Sep 2022 07:04:07 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id d7-20020aa7c1c7000000b0045726e8a22bsm5554595edp.46.2022.09.29.07.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 07:04:07 -0700 (PDT)
Message-ID: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com>
Date: Thu, 29 Sep 2022 16:04:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v1 2/2] ARM: dts: rk3288: add the interrupts property for
 PWM
To: heiko@sntech.de
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, wxt@rock-chips.com,
 kever.yang@rock-chips.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_070410_987636_A741DC9F 
X-CRM114-Status: GOOD (  10.31  )
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

The Rockchip rk3288 SoC has 4-built-in PWM channels.

Configurable to operate in capture mode.
Measures the high/low polarity effective cycles of this input waveform
Generates a single interrupt at the transition of input waveform polarity

Configurable to operate in continuous mode or one-shot mode.
One-shot operation will produce N + 1 periods of the waveform,
where N is the repeat counter value, and generates a single interrupt at
the end of operation.
Continuous mode generates the waveform continuously and
do not generates any interrupts.

Add interrupts property to rk3288 PWM nodes.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>

---

Original patch location:
  ARM: dts: rk3288: add the interrupts property for PWM
  https://github.com/rockchip-linux/kernel/commit/16b7b284618d1652e694f6286f575ce82f5f03e5

---

"rockchip,rk3288-pwm" is in use as fall back string for Rockchip SoCs with combined
PWM interrupt.
---
 arch/arm/boot/dts/rk3288.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d..1223aa369 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -675,6 +675,7 @@
 	pwm0: pwm@ff680000 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680000 0x0 0x10>;
+		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
@@ -685,6 +686,7 @@
 	pwm1: pwm@ff680010 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680010 0x0 0x10>;
+		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
@@ -695,6 +697,7 @@
 	pwm2: pwm@ff680020 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680020 0x0 0x10>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
 		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
@@ -705,6 +708,7 @@
 	pwm3: pwm@ff680030 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680030 0x0 0x10>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
 		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
