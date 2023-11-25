Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF1DC07D59
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk0XxQMx6dR2u5gZvIWZ2LhKIS060pGlf024WnqRjwo=; b=zIjRwrRT4Bs5EG
	cSgerlvzKdgnWt/l5tlMasG+UHCf0DIapnQNhrm1kSz/8d3smdO23cqUWs63bSsm3fYSoX56SzInl
	I37LmoVR61PAdntl++um6//8UfuK8KSy+7LV8Eb8ZUi0nxTwSqLUo6qPuvBz7V9hzBdlyuq5jrb1f
	cqhxwVL68+tE1PdY5s8HO8uThyGBeb8la5MBDYJclMcNOfuY4cFDM+6p52hj9LH7N5rWL6/NvqdAt
	Y86IVb+oyOOSkWoFuIV95KHu/xZ9hBSOL4GnQks/WHBAi2NzW0cC3jqE+qXiTuU1t6grO8n4Jsa09
	d7PSStd4DPszeI3a7sPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyk-009foT-0K;
	Sat, 25 Nov 2023 19:06:10 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyN-009fYJ-1u
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:49 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so2773136b3a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939147; x=1701543947; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qx9QA1qHqG0GAtg9pbqHFF4GYx+AxtRnDdtAZHISiVs=;
        b=3ZopAj0KuGHyXBxyZo3GX3Kiu4HADpEuKyWWMBICf1CAwrv7x6KFa+QlqaoAJv35o9
         ZpF2mQS0745PUO+KAgutlALNCnHAw20qGfGVucRonryMidaFr0reBuUJRBfUxP2zyzz/
         VZlZTaSrl/KkMM28/n42nzuzD/3izEolLleaoylpfytPrhQw2ORkXZihsdjzrZNhMQXS
         VWmGvE0Geesyax8Eeftnox+neLy578jctMDMjZDkAWL39YL6YpL1A3nGLfTmpBRV95DK
         pWFTJ1hjcZImLmZhgQUYqRTo3RgbFLloIfZ/LGTmwX/2vvCck9LBIQJ4x9FR78pN74Au
         4WeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939147; x=1701543947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qx9QA1qHqG0GAtg9pbqHFF4GYx+AxtRnDdtAZHISiVs=;
        b=iYgawndr3JM/Lz4BGgk2eglwpLFtL8dOqdTmtzZ8GymbDmnoFnpNZYS97Nwa4+v6EO
         rXm2vvR3udsgj1PRWjYGHUgHL1huaqs3lYrxdXfbabwDlToChyQ0B3WI7DIrPQlEUvkj
         mm4/lumYCaWSmXrzWmTu3pJ/VMzaZ9GgMBdTDVcKLfoOfyucoC5zrSfoZitrNa9Q3Ux5
         3IX4bEzgE4llbD8JqkCY5Kp1wCEDjlIfUIfxWzhMfo8kIUIgrO5GKDPAK0oCRFiEkWCm
         +JdAFXGkB2YIttI08uDeK1dBys4Cd0Ah+254IiT8lfXtxQXzp17NdJKJGgFlkApadbKc
         r6GA==
X-Gm-Message-State: AOJu0YwGTUqrfJeHth+D7sunfQ6/F8o0Yscs0vx+kcIhTm8w5HFQFBY6
	cO19AmLRFAfm2e3mm9muJnYFmA==
X-Google-Smtp-Source: AGHT+IGMr6ScCDfcCsInMnKQ2BThBRh4zgWD4WXoYM4YXwi74aUnXa8ZVwOyJcYknomWwVIj2Kalrg==
X-Received: by 2002:a05:6a00:22d2:b0:6cb:a434:b58f with SMTP id f18-20020a056a0022d200b006cba434b58fmr8768270pfj.33.1700939147097;
        Sat, 25 Nov 2023 11:05:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:46 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
Date: Sun, 26 Nov 2023 00:35:18 +0530
Message-Id: <20231125190522.87607-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110547_638635_9934AA3C 
X-CRM114-Status: GOOD (  10.92  )
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

Edgeble NCM6A-IO board has 2.5Gbps Ethernet via PCI2_0.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 845f90c302ca..7e838d76fa73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	aliases {
 		serial2 = &uart2;
@@ -11,12 +13,25 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -33,7 +48,22 @@ hym8563: rtc@51 {
 	};
 };
 
+/* ETH */
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>; /* PCIE20_1_PERST_L */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
 &pinctrl {
+	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
