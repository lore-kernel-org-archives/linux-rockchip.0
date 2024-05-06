Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D966C25B5F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGeT2RCR3igxC/G29vUfNZOnqFaYEeQHQ2P1RM0PYvs=; b=ZMbZr+jdzBqATQ
	wxvXEqjBMqYqwrEXoFG9Ub3v2heCF0koIVVl/V5KgMOKYWuu6XoKQXdmfQ9AVJ7na+x4OLenhtgKC
	T44rzXPWPgBfRmHwyF3okleaCWelAaFmH6rOJxHYcmVJAAzk9AxE0drJvZ4BiUNosU92ZeQ1jQNR/
	ghXdIDD18qjHktO2hZrQR2cn7aE2dkE03bZJjZnYU9DMXiNffHqldmmVPkVm/XMnhUAOaSWxx3Ou6
	X7JxmDH4pR+YVMQ/o3WDufMiIpdhJhmcI6WwGKpdszEyQsn3jdUkJsV+Ean0IUHhqci+MAjd6W1Qh
	bOeMJJ4/W92ibTXn8AAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umn-00000006of8-2EIe;
	Mon, 06 May 2024 09:37:29 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umj-00000006oak-46hy;
	Mon, 06 May 2024 09:37:27 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a51f9ad7684so165782866b.2;
        Mon, 06 May 2024 02:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988243; x=1715593043; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IN8AzJhjBwWtAAosg/wWfPeK9DB1fotvNa0tcVkBcLc=;
        b=Xo/gnW6RIlu7AFU5ui1QgrdkA28K9c8GBdJ9vCo3qBXEP7Io4k4/LWm0yKQNcm4Qf4
         W+s2DH2NkvvUvU63ehuYw5KItAZScdGqCUOdW2qQjVm0ON07QwlSOuNecvVgZjQRVytA
         gRrk1hZIAREyjbCL0Cpkf9U7UwgZRmAEa7r2omhQ7xwJTriT4ZLpBY/fKX+bzkoNn+yo
         cGzoNUkD+1Yigpsiw9yCLqVr5AOoUF0FeV3QHsM8iTh7Z7/fRK8fZ2n+Uf3JMdoaAfs9
         RN14K8QmpmcCujE9EqamBzqJusbJgKQ75UWn2x+3RiA1g36lNWaVsOwHSUTiWOctLJ73
         lSNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988243; x=1715593043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IN8AzJhjBwWtAAosg/wWfPeK9DB1fotvNa0tcVkBcLc=;
        b=IdLhtvBvHtNULsjvWrQEL79GqAImP+3t0fdp8KVKr2kDkJdp2uirSmcO6yC3o5FrCa
         SzLvZ0pHq0STOMer6AJ4skvcVmYDvhZwahQ8JDWvKpzZQLdcYWkxE3GUeDIcaF8YFvMB
         nxE7MMO6KsjaO4KDBEAGj0Y+MjrOqm0mJZ+27Mfcpridj4/Jxo+nHC/gTAlRpSQ2g7iu
         CZH0MzEW0QJ7pTNYASS4qQyzAP0euChG7uTJX72i67JUQUUg/RNeJrFeHd6uidILO622
         2N0QSJQ8hSXkISdBlW+ustyW6THQZiLKMKQe9z4DnM46Cvkzk1wdghFsfbqDiNkblfMo
         lx7w==
X-Forwarded-Encrypted: i=1; AJvYcCVoK2+C0nrd1/EgzxAdr/YseK0sWikzuDyjEboQcqvk+W0zYJssv8/k4fzdA+kj0JRT4P++SQ/YERRIdI64mxYTyWerKY2rGxwT1omvI0RHQaX8h5KWXJKfZVBaqDcDvNmvCh2hdqUOhS8zIt7pdITB/bHd92b90Cw=
X-Gm-Message-State: AOJu0YwSFiGlt1Y1maSqqn4vjLJSExI+R335zUvSu2pfHvn+870U8s9Z
	rpSqRuUlwrBoZMnZWbJzBtRk3VfnPC6YsJJWRiyizUosAC60zVTc
X-Google-Smtp-Source: AGHT+IGcY5JPNQmvChpfcdsIQTFh32yMe02GUq9RVZ7zy32Rbqb4gkVD+R9OuRJFJ0k/WupnQcSi9g==
X-Received: by 2002:a05:6402:7cb:b0:572:d4fc:cc7 with SMTP id u11-20020a05640207cb00b00572d4fc0cc7mr6753577edy.12.1714988243075;
        Mon, 06 May 2024 02:37:23 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:22 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 May 2024 13:36:35 +0400
Subject: [PATCH v4 4/6] arm64: dts: rockchip: enable automatic fan control
 on Rock 5B
MIME-Version: 1.0
Message-Id: <20240506-rk-dts-additions-v4-4-271023ddfd40@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=1732;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=M2euxf6Q8SBg4Hukc8wh3jha9LlUxWfNoH85/fD9b74=;
 b=MahjJ0I2pQJ4AW3JzNQC9fccwUyhos/l9FLjyPDexr0mdVocKlMIJIoQ564q3b6hHPkFvMV06
 d43aMKeL9/xCskjRFLK+lSYGdbjw526FpglZ7y4rHmfArWI/C/9Otwf
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023726_093305_97D4AC05 
X-CRM114-Status: GOOD (  10.72  )
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

This links the PWM fan on Radxa Rock 5B as an active cooling device
managed automatically by the thermal subsystem, with a target SoC
temperature of 65C and a minimum-spin interval from 55C to 65C to
ensure airflow when the system gets warm

Helped-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 30 ++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 21e96c212dd8..b70313643af8 100644
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
@@ -279,6 +279,34 @@ i2s0_8ch_p0_0: endpoint {
 	};
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
+		map1 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+		map2 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie2x1l0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_0_rst>;

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
