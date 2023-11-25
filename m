Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84AC8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbqr/iPD9Iw8XDmWegqiRIIRBKNwTCBaoPEIv1HsMDM=; b=J6iktJ1RmZBdBA
	dmMYpqkEW6+6boewxZNMBayprWDpKZNnXR1fgTtwvmGLvLwirHhks0olQrg7oDZI0rJLJY1jl98h3
	KDYEy9UvlyuZO387biJsdl0vktr6ECtFX9+FJB7TgB+/wAN3ZZheQ7cvroftqnVhznWxp+Qy1DOuU
	cdhpfYVVTnwf+oRzy462GrNV/TK5h5iLi6aFK1gnp5SM8vF09dLs96x7VFCd71uY2dpu7/wayY+lu
	lUzI9oYRerjImr49sJzf5y4hbZh89jXasPEguxJyKUWN3uDja2kCZ+3ckEXGqXC6DjffPaa4jOxe4
	YGEI/jgc42dE0cwJlXng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqY-009Mzh-0o;
	Sat, 25 Nov 2023 14:41:26 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tq4-009Me0-37
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:58 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-28555b0c7afso2389683a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923256; x=1701528056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WiWiAkdokMCbWDAO7LHRzcKx4s1zIRVN4htgSNI19S0=;
        b=0yywkWeBYmeElRhb82A0phK5E9pGBVu2rOsFXa8XEI2yMEMuVC7U1Rh5+uvNvQHKK0
         FlNtyzxjrAGEV0skfBP8CeEhbdy9uVelVLOjiMTFqg5ZvIYuBb0/pr4y9qE81zryaFKs
         ugfnE1peYx+TRsh7OqTca9Clqd7JIdazMYyrc5ZEwYTtfxeoxbYXOv55DBDwQbzMQKIu
         yfgjWeklQ9PRRSM1CANYL+x/Wm43c+JLpqkwGhGidWmWB6EQHy6dPBlVW/pzYiHsdrGs
         8kHcjA0+vssN4dHQIhO7wPU/4rahtkily8IDGlc0fY5MVKebHgwmYN0AVVl036BJNJxK
         4IQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923256; x=1701528056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WiWiAkdokMCbWDAO7LHRzcKx4s1zIRVN4htgSNI19S0=;
        b=E+1blUZDCGVGoqFeSuKVH3ACPg5KDbfYkXXXyjd9gU7lf0/XFU+LjwKge/o2PI77gg
         iOEgSO4o+fz8WlfE601+APC6ppG3G64K7jgpQQ5RtpVmLn7Fqg5xlcEf1+YoH0l9Ri+h
         obJZDi04IxPj+HB8RbBxMO+CYMrikd7pwEEE5ngAtDzCM0oAK5ZCi0C/4zM11E5AZrPx
         wWFVXRE0GTFBz/tW2LzLlPDaLXjxc4ZYF48knAui43yUP0EBV2qRUrvZQolEPu1j2S3e
         oUbVQHqlsuRhrgtr/e6b5qD6aTqvT+tUFPfHhpxgTpop3rs0RCY2amXNjsCVP7/xWfRl
         zfFg==
X-Gm-Message-State: AOJu0Yyv0GwsC7nOw6mqrYhfkKW4cJJCVbO0EiwQF6uzyrSmgJZeNFGg
	xegd7SmaoUQtxkevHN87ST7IHA==
X-Google-Smtp-Source: AGHT+IHWEex2FGS7az9RQq5AKcMfJhSJIdyZsreQ9X02NhZ1wTViWvta8bDzuzp8qJ0IRahGYHoiZA==
X-Received: by 2002:a17:90b:1a8d:b0:280:c9a1:861e with SMTP id ng13-20020a17090b1a8d00b00280c9a1861emr7085666pjb.13.1700923256390;
        Sat, 25 Nov 2023 06:40:56 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:56 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
Date: Sat, 25 Nov 2023 20:10:12 +0530
Message-Id: <20231125144012.58668-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064057_032558_9DCBBBF9 
X-CRM114-Status: GOOD (  10.81  )
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
