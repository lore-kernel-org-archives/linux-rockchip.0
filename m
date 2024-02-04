Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6235BC48286
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 23:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZoRHAlDwdJXYcPsxLStBch0ZOaoIB5mL573lUHSgls=; b=E6gsxA+RD/bIbt
	uTRCC26g03edNcTgyzYB/OAJePidf47CkCjYoqdR7tlqWFBpRJPLqTB3bTf+ziDA0/t8a8o7iZxIA
	UCS9JDLCmW7icTp3zh78OwexFP4filkaPnMttY59D1kR+RQy8zEEdwZ3WnmaVzOZdA5jKwSUkQa3F
	6CcbG1hQI2XHAIrKUFV1BwZlgzyslbtdhQ/QYYNt/ASLi+dTMedesKRJqs6d81wXiuGjcKkvZy8Uy
	apzmUg3Q1TyJus6qLwgXgpXW2MCmap0+MCSL8JlW7IB74c1nINDwuC8rlAouaFGzp9kpzN67oNIZi
	Nn3iXhggj6LyQwTN0MEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWljG-00000001apD-1x0h;
	Sun, 04 Feb 2024 23:16:50 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWljD-00000001anS-1sHX;
	Sun, 04 Feb 2024 23:16:48 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2d094bc2244so18330251fa.1;
        Sun, 04 Feb 2024 15:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707088605; x=1707693405; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y5VGuwU7sRb6X3OaRcDA234b6ozpGj7s2IWLXVXNdas=;
        b=KeicTN07QwlRG2GEdy+Z6A9oKGIh2RNXGkrVuUCMWw94k4kSo5ZOWSqZuKTbu2YjnG
         7QAFm44NdX1NGjcRwWE2EsrZFUYpv093EoiCxUHRr0OlFMWon0DTnBUOEYWkOZo+z4RT
         mYPYjnuFsancq2mmdISRHP/hfkavl0FRbfcQnSGKcW9hORc3E7g1V0t1iXEUISAlBjz/
         5GuX+kJ102XYesO213TSajhPUNl6THFVwP4AiTYSEAU6mPaQI4JUwtAZNid7ZwsojLxW
         69CUxqur/Ez61OgKShHirlIJNvOOf44f0fqAVsbi9AYza5+FTiYcUf1yqhpF23pIrjpw
         suJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707088605; x=1707693405;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y5VGuwU7sRb6X3OaRcDA234b6ozpGj7s2IWLXVXNdas=;
        b=rmqeXSBjUWw04fu/d4Tr8ydgLKp7NqxjeGNpJO2xlUbEXIM6PEbz1dF6ruZTf/n3VV
         SJ9oh/Nm6SNs0KvC+dHiPmNVqqsnkIYobfvb6YvR8SHYMqvhZOC00TJhbXISc6iVOc4n
         PW8oUOpNwIK+wr27vgLWeD/c5qwTOkMJ4diMUh7dBQUfIPOXudqXv1PiP//8o+iWnbrU
         B7flVEUzRbE/msVvzg72uuFs2P48Y0MFWQTGqzcuEO/M4Y6rEaYZP0pDr2alPvkIP1At
         OPnf4BWbxlWSryzd0jlkYG+8zKove+bf4WKco8VG3OYCIwsBqwhizIPhgOqKbqcXZT9k
         w12w==
X-Gm-Message-State: AOJu0YwlsodDVVPepzchFCsuH4RqLq8TGN6MOOLome8TYLS2/o8xnOfm
	PiIDn2arHfQZdIczLsC/xqr2JRbeTSD/bTRTg4POCwYzHdRFJPgz
X-Google-Smtp-Source: AGHT+IGuXT9bYE9gMIH7LN//FJs3Z0wankWaxPRTI9OA2HPcm1HgjgSW6SbdfyCYKAsb0V5zFMcl9Q==
X-Received: by 2002:a05:6512:481e:b0:511:495b:f83d with SMTP id eo30-20020a056512481e00b00511495bf83dmr2311389lfb.38.1707088604840;
        Sun, 04 Feb 2024 15:16:44 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWy4xJNlOKG8NbSFb7Ic0yPYvabi8Skm5y+9UnF0KSKE0YUXDNHcSkgSNIx5u5LMJlr8MiocdZ095wRYCBsd8p7C2nG6iK+wQUrsM+dtWU/UkP/szJN0P7UF7ICBJ36ZTa8e24kY5EpnXoW5OiU1A2jhBVms1wj0I2nLmXt2nH85BX58zvAZIzrwWt/k1OTpVBIWwOMxgxDjoxvP3DUBV4Q2kHEB4wt/Ei1rmEP4MZVvgGBNaiWzcH/H4zvBLa1//oFx6DvTrgiOVYx+dge69iHpHUE7xjP8e0fMY+wWpSDneaI83HJWGbDZj0=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id vb9-20020a170907d04900b00a36814670cbsm3624216ejc.62.2024.02.04.15.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Feb 2024 15:16:44 -0800 (PST)
Message-ID: <5551846d-62cd-4b72-94f4-07541e726c37@gmail.com>
Date: Mon, 5 Feb 2024 00:16:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm64: dts: rockchip: rk3328: Drop interrupts property
 from pwm-rockchip nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_151647_517051_97D77991 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
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

The binding doesn't define interrupts and adding such a definition was
refused because it's unclear how they should ever be used and the
relevant registers are outside the PWM range. So drop them fixing
several dtbs_check warnings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index a73234b11ff1..b6f045069ee2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -488,7 +488,6 @@ pwm2: pwm@ff1b0020 {
 	pwm3: pwm@ff1b0030 {
 		compatible = "rockchip,rk3328-pwm";
 		reg = <0x0 0xff1b0030 0x0 0x10>;
-		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
