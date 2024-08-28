Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 388B0C5472D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 07:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LTAPmUGw+mXS/G+wSb/qlA1eaowrttZyRatvEFBiUWY=; b=DB68Z55elb7KRg
	C2bIB4pGcxpaWZE1CF/OZ/Y5vZxldpXbaP/OQb14G/X7tfKM/1Z8o+hnKp/insuSodQBqafz0yNzX
	ZVPEJs5wGtaVxPCHGyBUQyZawwhJ//rUU9FD12qcSuyd8c/MXXgqEOiZH/CaUDXr9kmt5t1EYSbMd
	97phzU5d1uQ8R1xGNjXr2GLydL72+RoLXyHv9CPbvXxrXnkjoUbpfBxo74uH4xImWvu8pcsvgDnxX
	a+gNQGea2K18JcGHnn7jG4+7rn5AYQh0DaBlYAqG4AGCWswze90+lxL/eB1MrqY6M7NyUM+DsNBGI
	m8hlehLf6IQMq8pquHvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDQI-0000000ENJJ-42nt;
	Wed, 28 Aug 2024 07:48:58 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDPN-0000000EMwN-2VJx;
	Wed, 28 Aug 2024 07:48:02 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-201e64607a5so45930465ad.2;
        Wed, 28 Aug 2024 00:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724831280; x=1725436080; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3OBjUgc9cFXkg83mO7IC2sZvH5LHYp7bAGQMEXhE0sI=;
        b=WchuAejGu0fWqZ2NifJDCe1Spq1JYa9ZVdYadHJXM7eWc7+uPFJj66pBRIDPGK3Yqg
         rXHMn3lB3SCOytBZA96QGUqbUwWGI30MNvHXo8ZXypl5X68rvnnsfzvJ2dOFr1tCSyPQ
         PwVZaqVtC9hbrw6LzKEas7qUfnw20irs292R7bD0ak0oHhAxOzwKvcvCSCGbj3B2rdCM
         o3o+YXYHIVsUVlkj8TfmRd/9dHp9sa2VSWDtDwNtAFD0yFSn+L0DZy9HBxAkgv9fNDKR
         UCcyS2PgYL8Hae+3cUIhB3Is5nxCUNc8KD7NRnYy0qMrdpVAOutVQzHApuVIzCdt7pP5
         zJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724831280; x=1725436080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3OBjUgc9cFXkg83mO7IC2sZvH5LHYp7bAGQMEXhE0sI=;
        b=NtCY0K8khKHZHCNCHWACoQk+RYhYalTcmCMdc1q8e/tzChEw1E2bH8+IcisEjq6pDj
         dOKQPDCJniNkNeBmH4sdUbzYtgSBaQJqxXrfwKzH1e+xwsChMqPaWB5fuQbL81435lB8
         +O8k3HmVdJVPRU6W8NfLHOTvH9Gy0uguJpp/xcnUtDjYP6tbXROr6MU+DD/ZSDuISTPM
         W1WFyO8NXICmVgl8YO8F3Xs5O57HzCmhzlipKj/ZaUgb9uYEzU0so8jd62V4LJ2Hiw+s
         MW4neh8eLTEEr5Hdob/LdnHd8Mjnl/zhQvqynPwBavIkE+k+my+Ux4kVi+kScgvVvImf
         MrHw==
X-Forwarded-Encrypted: i=1; AJvYcCVZuSMFtWIMJUDZ9kffj/SJvAxrvayuu2hfuPKzKkyvExdcDmEgMzyuNdZYCwfknBoROsDrZr47eylDlvjGPAE=@lists.infradead.org, AJvYcCXANgyxWJo9aocR/DFPhIMIe/KPNCb8hm9gZVXz0JTeolE9SGmySJ00f5Du7BHqsbaPlPSPW6y3nXyVwYhTxOJV@lists.infradead.org
X-Gm-Message-State: AOJu0Yzwk4WP35ByW8JdN3RjTkkNnDhMaimdujF+tfjxKqkHKl52TgCB
	WSVripRtbCWk1WZmYf3FtV74IQ5UGiJkSR++r7J3du3gpcgLeo2d
X-Google-Smtp-Source: AGHT+IH4XeViWXkMvG8J+jECU/21Cp/grJ7rcyxe62j91h8/4LmdvTzWeJPBzN3n0Nxnqnd+vHgcvw==
X-Received: by 2002:a17:902:fac3:b0:201:e65b:500b with SMTP id d9443c01a7336-2039e534282mr140849695ad.63.1724831280169;
        Wed, 28 Aug 2024 00:48:00 -0700 (PDT)
Received: from 167-179-157-192.a7b39d.syd.nbn.aussiebb.net (167-179-157-192.a7b39d.syd.nbn.aussiebb.net. [167.179.157.192])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2038557f59bsm94081575ad.97.2024.08.28.00.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 00:47:59 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Jonathan Liu <net147@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
Date: Wed, 28 Aug 2024 17:47:53 +1000
Message-ID: <20240828074755.1320692-1-net147@gmail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_004801_654290_AE1759E2 
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

This adds the necessary device tree changes to enable analog audio
output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
its RK809 audio codec.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 46 ++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index d4b4dced3e39..14453b286446 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -52,6 +52,21 @@ led-1 {
 		};
 	};
 
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk809 1>;
@@ -200,10 +215,13 @@ rk809: pmic@20 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_LOW>;
 		#clock-cells = <1>;
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s_8ch_mclk>;
 		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
@@ -445,6 +463,10 @@ &i2c3 {
 	status = "okay";
 };
 
+&i2s0 {
+	status = "okay";
+};
+
 &i2s2 {
 	status = "okay";
 };
@@ -472,6 +494,28 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	i2s0 {
+		i2s0_8ch_bus: i2s0-8ch-bus {
+			rockchip,pins =
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				<3 RK_PD7 1 &pcfg_pull_none>;
+		};
+
+		i2s0_8ch_bus_bclk_off: i2s0-8ch-bus-bclk-off {
+			rockchip,pins =
+				<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				<3 RK_PD7 1 &pcfg_pull_none>;
+		};
+
+		i2s_8ch_mclk: i2s-8ch-mclk {
+			rockchip,pins = <4 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		user_led1: user-led1 {
 			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
