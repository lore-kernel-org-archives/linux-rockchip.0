Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B5ACCFA1A
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 19:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mDCPjOH/ANFQBpQhWOQc0oq1XtjbhC4Os2VpFXjWcQ=; b=ePPiR5roQbrnd2
	b3mP7HXO8oxDGkCOlJbtz8QszQAvOytWw2xGkmuSyFDWw0d7lbkxl5fL/KOQcwcaC16Bdq8PCPZeQ
	8UPW01KkpzyhrvBv2VTwmma6FHrJcKmdxyEHekRBuTHxzBlY2R/U6iCx4Qce7tCMCVZ7YdkZ36bR2
	N+J8Ni4vZAbQzMtFGq+gmK+DWh1o9oc/5qTjKjwOH14lxrJuEvnycv7+s7S6h5Jgwa/V9K1g9rQ6u
	vs+IgODqDuNsRnLjEDnbes/ipTKnYQMd4XsH8yAtZXmBdieZrI4AwSVDkGjJqkGlyZgavmsM69ufU
	j4qzZYAUMhFhMa33bWnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIAyt-00000004KRz-1h9b;
	Sun, 09 Nov 2025 19:21:43 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIAyp-00000004KRH-3b3y
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 19:21:41 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-47755de027eso16124815e9.0
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Nov 2025 11:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762716098; x=1763320898; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6vH5fXGe4VkkrWElN9kTcP4/mFYhBdwL1V1ZVaN0zdo=;
        b=RVWQhc/McxQnJKSlDwDuAPM5YhKY6WK5zcDX7ZYjMZqsRDq9QmdqsvteaVoo6JrwEf
         d3Dc7IIPeBw0qX8VQR4wu9bo89eEKNJ+mCeV5vcVq526+RXzZ+KXgCYnGmz37m7beuNH
         ux7RziDbng0Ler6wLl9YRFeubd+Y49LEP9+NJqxQxpsxGqsjmK/AVbgEPkc/5WW8sTRJ
         F391fPLnaHy6tHDDPk+6r2tGPZqQi1nr2oA3768M1tBsFiwFKseMkCeo8hKmAUTR9UvH
         TjtAM/IRVKc0vKZ7YV6+TGwC53PhgUoQgQjvrh6YtW5eJbMCBPMFBeLpOS8QEDwTzqCT
         hazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762716098; x=1763320898;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vH5fXGe4VkkrWElN9kTcP4/mFYhBdwL1V1ZVaN0zdo=;
        b=wR59Mcqs3sfKISxiI9IZjCCoT3xAvWxpi3mFNXYHP8bKb44jTaVl4vtZdN62LYqCLH
         DFfMH8F29YU37Ghey+Ke93Ui96RZmmrBBhkrkx25735nP0sulgY6M6ys9vQbckfh8468
         0HUV+3o782UVrSdXfpUyti5c/doBrJERdSGClP64gXJAKc1y6NG0Pj1rHzgwrmqZ5apC
         lZMebNd0eR6ElNVXwFDHyTqYumqGY4UNGuRlN4pynDP4liodwDiku38Kq/Ig6jZPqvcK
         fOlGsR76bAB+24n3KAOND/jOYy6UWbmohdVGbVXfP9yi12i5ZKbtt79waa8sJ2bPyX6H
         PEdQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8GQvwEMkTadb3IupNb5g38E4CP1AS8WvIFD/w0M1Zn7dBUaj9BeU9j0STFRHe2/Y1BFN9yGBrHFjoAGclLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxN+bp0C7drEa/m84PeFrmpuqkv/sdbLhm1A8cha29XVJBoaKJG
	i/zPOpttuyyw3JQt0sqMzcUzPXe/LWW0WVgCwjTap4fzfAWwvyUiMKHdCPVF70gH7Gg=
X-Gm-Gg: ASbGncuXh7Yrqf/DplNKca45JVQDSQbDCPQ7TGRJSipkDuxMJCHqdRHi4Z//TtxrCJI
	QuXID9LXlc4ZzLHtdt4qxcMklYtoeoJqfD5kCUtoTUjwGrSaUln9NS5fVut3Qt+5oRo6egj/74J
	j5ovZ1jKwj991ekssTKJjaUmQgfkFfSXKAHpWxaIK33fKjKM36H9SN9YZBgG/T1FZYAqLjSInnT
	QS2eNF516IYoINYXmnkHO5y8r2HcIqkTCiBYqN//lLBbtHZ0CjzrKbkCJ/ILw6DMYsm0fSYbCgM
	BLYSFJWpfPXsYcsHNoQDhZ00CECcFvKuaoPAa2b4pbDpJK4/vtBqBYv29kgcLNDoqP1HESCj+yE
	QJ0z/SeAVH+jnrBFpsp53FQuWvH9vrYiByUQiZ4vD3d1HUQ3Dz9aSIPeXklaRMwbgpY/Jp3ejSx
	/iHRb9AUsSD7jCO7WpjVUTnRrTNOK8NZ7y8BR6rCiQpg==
X-Google-Smtp-Source: AGHT+IHEGGaPojLqJnQJyx/eRJbJgTm2GWxMz4aHcXLzOtk0tX2JbG/6GFj/8DCLl3D0UN/5mSd4Yw==
X-Received: by 2002:a05:600c:3554:b0:477:557b:6917 with SMTP id 5b1f17b1804b1-4777323ae5bmr54155475e9.18.1762716097419;
        Sun, 09 Nov 2025 11:21:37 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:d132:d099:e4e7:cb00])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47763e7a6desm91150875e9.8.2025.11.09.11.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 11:21:35 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
Date: Sun,  9 Nov 2025 19:20:51 +0000
Message-ID: <20251109192128.72527-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_112139_901883_F3E83324 
X-CRM114-Status: GOOD (  11.67  )
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

FriendlyELEC offers an optional heatsink and fan addon for the NanoPC-T6
and T6 LTS, which plugs in to the fan connector on the board driven by
pwm1. Add the fan as an active cooling device for the SoC package.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
Changes from v1: https://lore.kernel.org/linux-rockchip/20251026194858.92461-1-sigmaris@gmail.com/
* add the fan to the base board dtsi instead of overlay (Heiko)
* just use 2 trip points for warm and hot temperatures (Dragan, Alexey)

References:
FriendlyELEC heatsink with fan addon:
https://www.friendlyelec.com/index.php?route=product/product&product_id=305
Vendor DT with trip points and PWM duty cycle values:
https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L75-L90

 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9e..9164a0ee6228e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588.dtsi"
 
@@ -89,6 +90,14 @@ usr_led: led-1 {
 		};
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 35 64 100 150 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
@@ -591,6 +600,36 @@ &i2s6_8ch {
 	status = "okay";
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_warm: package-warm {
+			temperature = <50000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_hot: package-hot {
+			temperature = <60000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie2x1l0 {
 	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_pcie20>;
-- 
2.50.1 (Apple Git-155)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
