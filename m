Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E736C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 20:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIeDg2Az4cdYjADh7VKtB36o8mUuO79anxCm1rTs+14=; b=1Y0zZ2pzF7q9M4
	0yqJ4V5pPdzI8uNmxOdS8/FczNiQaxPS+JFYdo1HRbfThWmBaqH5oMc/2uwKjv4a5cTi4N7T/roVX
	NsFAdcNeMfsttiF7L6+ub819lrPniTtZOCnI/lylMDBPPw8J614c+7FTLxwCvwn9wYx4QHauaYjEa
	HcV7jFkWU963bGpAKwgNpYPh/hPd483wk0GPLXMzbfoqnP19rplc8nix1piC4g46n3lKfDXG6+3b8
	tm4nJwAsncyjf8h7A8JTHldc0C9wyWvUgZgTdUvJyv2IyU/pH0R23RFgqrtSQrX6DfNWkD4oT6pte
	aA5Jktowcmy2pe5s39bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjuA-0051ER-0M;
	Wed, 24 Jan 2024 20:31:26 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtT-0050vl-2p;
	Wed, 24 Jan 2024 20:30:45 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40eccccfce0so7069615e9.1;
        Wed, 24 Jan 2024 12:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706128240; x=1706733040; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ltvCgfghB12MtrfTdUe+z12yA+jwvK0290cBhszdhKI=;
        b=DBBlp3vCffpxrUaCulrb3bBNPAgDZL9vtrj0dVWOEyyIgxYgBPjBYjvQp5H3R90eJ2
         WEaKN/Gkuzn97sipjMWJzf1LGFyclpn/32SYlcsY73uVC3zqZ18IJyHCG8GfhWrq/xw7
         DonQIQf/VrozMP/7Bbt2v5lWCvPuQkdQHXe6J490SGONOtn+LLRyebByVUTAhc/mWewI
         928RwHKeM/9Du23UTh9NkCYbk9Cq+jE9jgaVjnzzH4wAZ/24cdl9Eu46seJQ4Z45Rkos
         3IV4vLe5Bc+xdCWzY15Net1ab6F9jFi25Kx2FwOAwtnOXxyo0ET83rwEnkii3WQWXWVN
         6GLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706128240; x=1706733040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ltvCgfghB12MtrfTdUe+z12yA+jwvK0290cBhszdhKI=;
        b=sngvgmZPeDfxZE5jj/+cuLwK0QWcUOpy8HLfAZ9zUr+naUSUDZ843zzeHct1OP/mB/
         IdWJWZit9NdgHpuIv5usXiDd0AlcNNND92dQZfQXGMBUnt5Obu9OmiSKdvNsHFA2QgaD
         y6AyPzVxSPBu710fXrg/SKF15Yx1VZT55Q7h8H57QSdMKmbEE/DXW+Y3YK5/sJeFuN5f
         B4aKy13hMvneNBQVj4IKeri/X4G5nv6aI/LiFJZqCXsJA50UFZ9rJeLVV1K9N4b70mu9
         X4zMND6sVkeoKKR43txIf0nKC4pRWOsF+VxlDgrsHcUZ8a33g8VERTb8203zbm8nKrZJ
         IWDQ==
X-Gm-Message-State: AOJu0Yxx2eCD7rxR99fV/2W3rSsjMRPos1WY9L28S99Yf7yAuGLm25oz
	URX2gpNL7cdths8OOOj6syWTr0mVYmUyjhSziFNzMV4iESAqZ7+Mxube0lfqhsPpyg==
X-Google-Smtp-Source: AGHT+IHZ/0Ki0OXu+Hh6+p5Oxqj8EWS6Ev7/qQSl6UWO72S02kfAs0Y0JWc+Idiposijy8URFA4EYg==
X-Received: by 2002:a05:600c:4f0e:b0:40e:66ee:2ba3 with SMTP id l14-20020a05600c4f0e00b0040e66ee2ba3mr1566084wmq.29.1706128240034;
        Wed, 24 Jan 2024 12:30:40 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id r15-20020a05600c458f00b0040d62f89381sm174073wmo.35.2024.01.24.12.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 12:30:39 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 25 Jan 2024 00:30:06 +0400
Subject: [PATCH 3/4] arm64: dts: rockchip: enable temperature driven fan
 control on Rock 5B
MIME-Version: 1.0
Message-Id: <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706128223; l=1551;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=u4l0RsRj4668NcOaxKO+LZ3qtMcTAwoAKZZ3yHzWIOk=;
 b=K97GzVwWsCS1pD9bcfThrRGqutRbFk4tSHd9NZbQ0Ca+7A4u8xqC6RR67X2kmk1+K9HW1Hdqk
 tHPNbAcztwbCANcKaBcaZPMlrOCQljO+X12q73wj75Tqwx/+f/IIn/3
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_123043_918177_033F651F 
X-CRM114-Status: GOOD (  11.34  )
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

This enables thermal monitoring on Radxa Rock 5B and links the PWM
fan as an active cooling device managed automatically by the thermal
subsystem, with a target SoC temperature of 55C

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 9b7bf6cec8bd..c4c94e0b6163 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -52,7 +52,7 @@ led_rgb_b {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
+		cooling-levels = <0 120 150 180 210 240 255>;
 		fan-supply = <&vcc5v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 		#cooling-cells = <2>;
@@ -180,6 +180,25 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan: package-fan {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map-fan {
+			trip = <&package_fan>;
+			cooling-device = <&fan THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -738,6 +757,10 @@ regulator-state-mem {
 	};
 };
 
+&tsadc {
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
