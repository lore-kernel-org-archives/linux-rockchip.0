Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B0EC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EYsPV7mJH2OO2zW4nU9HaxIrTnr7REHa1DIsYm4o6M=; b=E9vvFlEpF98e8H
	XfpCc3UI6UQZ6XWz+lWYP60WJgzpXqw3+FgI5eZHn75vX43tawVgEXLUOvbloezfcoxBxSFgE0DGR
	8SXlCx/AZURn060LLsk6ipW4hKM6uDHdIg/JsIWOrBcp3rFDla/stoya75eVifgO8BGJ9H5VNSnLi
	4hVcsQcLdUElp6wFF34VcKKs8gDXn3bZsUQ8OOczFJAYBuSdbiQgmIRPum6h/zkxD8dljEX48st+p
	ZWcCsyqChQIRyFu8BMLbENfrz05km4ryYq3ZKEoFDeaqxOJydkqfFTL/4CXQy68gPIX+rGlq6e+aC
	wofbiahLzNkUa/oGja8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xz0-009fzA-1A;
	Sat, 25 Nov 2023 19:06:26 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyZ-009fhJ-2e
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:06:01 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6bd32d1a040so2839610b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939159; x=1701543959; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcjLpxBgTLpZy7bjkIUQIc+N1SeHj/wmMY9+mRqYfUg=;
        b=J3A8S+ThdD0aZ08XPK78QMKXKQTK3pNzxY1ez/+ofdlDHtFij4LmOHgFz7GyTs8wRa
         g9BKRGiMQ+MvmbhfEYMR7bivKgewp1uEDyT6jttnq2/AO/s3ZQh0EpCPqJzQrBQzzwon
         j91TZ5JZS3z6xBsiIFuFfPM0nmonTwSc3vyAT174WKdRflS70izUYhZ8/vDBi7ucakn+
         JbPaAeXaQgr+OdjdslDNOd3k5S2ZXXPZRSDOiqgBrKCQQJ4UCQGR6sqUYGLfHfiXcKR2
         A++b+DvAqr4RMG8WO9TgonU0VL8/Ueg4opxBDDjrFmZu8enfYNgOAID9UJFNSfAGT3Rv
         dFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939159; x=1701543959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DcjLpxBgTLpZy7bjkIUQIc+N1SeHj/wmMY9+mRqYfUg=;
        b=ed2Dn4h09aMda5aE7JnlquT6czwx9Rf26wheIL1fLHrqEoMTM88GxZEREkXedmdu1R
         qp4oXjAi+U6QfIbmoPjEjP53rug1d0S32mr2LsFLLtNA0MpmZnsQfR0C7E7uASlUNxSD
         6m7DFDHEU04K9Chw5DvmZoQxZOAcu7wTmh6UC4d9m9WXf5jVTMr9gb1ECjwCEqTaLIoY
         6mytjGBtj2H5N29M89Monvx5NQNl/oAPo8h2sD9HOjctEI28OFLQw690aNi0wJzUfC55
         rdPwKDbqf+NMiQvVjTDDe3Lxg0izWZ4jQjtdOIl7S4mNhGCyjv7+yJ1t+ijgmsL0X8Dv
         QWWw==
X-Gm-Message-State: AOJu0YxNVizJLjKqUjZk9Udijn3hrLESEpnlNQRSar2fksEczDrf4CYl
	q5qCRMMvppvwbuEdi1Tp5UkUAA==
X-Google-Smtp-Source: AGHT+IFm8P0G/zZxdYDbQKNcjuNb8oNZsCNX36D6fENZW7p0r4jCQKNYuLwmZGNAgPbY1dZfrhkFvw==
X-Received: by 2002:a05:6a00:e0f:b0:6cb:d2cb:5234 with SMTP id bq15-20020a056a000e0f00b006cbd2cb5234mr7997241pfb.32.1700939159304;
        Sat, 25 Nov 2023 11:05:59 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:59 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
Date: Sun, 26 Nov 2023 00:35:22 +0530
Message-Id: <20231125190522.87607-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110559_865496_509BA566 
X-CRM114-Status: GOOD (  10.77  )
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

Edgeble NCM6A, NCM6B SoM has Green LED on the module.

Enable them with heartbeat function.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index 961a80014686..003887fbf996 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -3,11 +3,27 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
 / {
 	aliases {
 		mmc0 = &sdhci;
 	};
 
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_user: led-0 {
+			gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_user_en>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -110,6 +126,14 @@ regulator-state-mem {
 	};
 };
 
+&pinctrl {
+	leds {
+		led_user_en: led_user_en {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
