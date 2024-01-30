Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01AB7C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 18:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FBAOT0JrT5z8NR3pRg8RoAWs0vkc2rxCSC0xh/+lxI=; b=xYYYUZCLD7Ki6i
	HbZiZPYRtNGpv6tv+oJoSQkBXT3X2R88Yxy9y5Qb45BEF0KbNXOf3KycnC7G3mEU9BbEWQoxqLuOT
	tcIuDLwLUuUGJIT9gvf+UckzeVoSi0APP4aistgyAFHVSF3Ubs/BCGsjHwmHHGViEWq3izn0fcP9P
	PtbgbNmkdhYIFjJtEXDFxUfHixBY3skpchzti2Y3uU1yqxDbh6r3PcvTOD+ycYoXX0QRbytYYZCpZ
	YkYNrZRPrArGT+VL3MnmKMF3uRe1qiUb0rRLI8IAyLkAIwfPxKxx67nFbkPgoUXEnB32wIN/ITrop
	ceggWa9FWjEeNtlHY/Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUskA-000000007Ip-02HQ;
	Tue, 30 Jan 2024 18:21:58 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsjs-0000000076A-42vo;
	Tue, 30 Jan 2024 18:21:42 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40eccf4a91dso45720045e9.2;
        Tue, 30 Jan 2024 10:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706638898; x=1707243698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2U4TAbafybXjGIReik+c+16abvnMXxD9lt1dnQ2x+0=;
        b=S5Xcgm+cWlJHleJGH56eg9CI7rGhsmDCuFHJGqGUz07JunllJrrwgtreM/nlHDSAmk
         Yb5txxt7m3R/z+xvyr/Pbdq1tAH6kZ0IznrdqloardRrrwxfpGaI5oD9bLIbRuId48Wq
         L/beGlqzytu/dQGZP0U/yAfz/hnW0L0gfukRg9kokLGehCouOhXBD0cCptcaoLItRivA
         Ty2TrvtlkNlAQp4pAfinzjvBsUmQS70F0cj+A2iDkqwKgemR6tPHTnyr7awbFRJl49rD
         bjSu2ouxyklUeuNZn+6fXhnPxlVahPoXMOV7nP0BOkiWlQu0s1f6KsUPztc6u/cNfF33
         00pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706638898; x=1707243698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q2U4TAbafybXjGIReik+c+16abvnMXxD9lt1dnQ2x+0=;
        b=uTC6P/uEnmWsNnB4nZpUForhubYk9pV/xHPqs+LmwJ0cjMntkvsV+a3U+wuoGZm+fb
         vlK1x31pEe9dO2KNOc6T5Srxnntb3EWqL0ZYs7JcgRLUK76EYyXQkJoCoSFOPVok7N6A
         6OWLwYI5M1pvckN4W5DVKy8+/4LRTdEGDRJZ/V4q6jiui2hCwbvk8xn4gz3Wu2F3Tlal
         5Cz/2LzCudiH+ijLTVtiQo8KOTHZ0gBncgD2keMrq8OevG2eYYiSCx4hkqPg8+XK84j5
         wxHLJ76dvswt8lvFjgl20UbI6fboINnyt7Tqjdlc8ckxKAhO9KHTlitO3aii5NZvyGh2
         dGoA==
X-Gm-Message-State: AOJu0YwONPgr0/l/r5+SZqyuxosqoAiPTUuP6LVkLaYUvqW9awt6c9Jl
	KqFghEWG05Wuq7NKpYK1XXC7ykgeb+N8X7HfvWkU9ziGYLJy8sPc
X-Google-Smtp-Source: AGHT+IHBQCMkepKWAeKxDUBpAUlEm/TcMlAb0frcezMSAbReG028bhaOw7guEcR7uXYxNnjS1D6e1g==
X-Received: by 2002:a5d:648e:0:b0:33a:f0cf:3d5d with SMTP id o14-20020a5d648e000000b0033af0cf3d5dmr4379648wri.23.1706638897973;
        Tue, 30 Jan 2024 10:21:37 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id u18-20020a5d4352000000b003392b1ebf5csm11374254wrr.59.2024.01.30.10.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 10:21:37 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 30 Jan 2024 22:21:14 +0400
Subject: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven fan
 control on Rock 5B
MIME-Version: 1.0
Message-Id: <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
In-Reply-To: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706638888; l=1891;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=HGDpyfKI2RDyGPXzCZEZxUOoyZ5xEWyQzEQkIW49rB8=;
 b=SYlXApX3kBczLS+c6uzRjnh8soVjqGOy2sCKbiM9vFvUCq7QzrBgjPc4X6RD1zHn7x6nI6c5T
 NphLweK5PuFB48PdHMzbxOCZQm/mH4l0jyf+QEWD/Ieb4W7jpHn3xIr
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_102141_148938_446EE871 
X-CRM114-Status: GOOD (  11.44  )
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
subsystem, with a target SoC temperature of 65C and a minimum-spin
interval from 55C to 65C to ensure airflow when the system gets warm

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 34 ++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a0e303c3a1dc..b485edeef876 100644
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
@@ -173,6 +173,34 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+		package_fan1: package-fan1 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 1 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -731,6 +759,10 @@ regulator-state-mem {
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
