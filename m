Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4409C072A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xlwpDw97cpFgVHuMH16Jpc6U6MrWEPHms/kNf89N+8=; b=WPPaJeqL60Mkta
	PxFs2hKfrnV9vT27H6DI96XloFKPWjqqLTRMd0vjyU2hkVERevnto/9CmIeOuf5uNldspeukv2y2f
	zywphBMpVMco8SVlK7QWCcZYLTcqry4CkxRRfHsaK8YOIcrngdiqdQWDpN7SnJuhKFja6vMmeNFxO
	dPLeHK12UfQ3BoAB86bt8WE6etECeT1UD/3dT1ZFt5HQyg9lz3JiL64phoyapucc4lyBnI79pQ92U
	bgaFnTu+in+gwKkwhznON8I9t7teRr6f1mUmnUQI/FNdzt9AwhK4Kvppnb5oyUWXi3D+cFzBW6Wv5
	AiSDwr/QAuum7RqRJpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4y-0023cT-0t;
	Thu, 16 Nov 2023 00:17:56 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4u-0023aM-1s
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:17:54 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6ce2ee17cb5so122583a34.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 16:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093872; x=1700698672; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=aHBZj8Q19cyNBKB3RiSm0dzyNaUSbjMlJBzZZxU7RSljEFF/As182WGaF9mN0SH0CG
         AG0xFt22Z7xh7RrwpfnL2LG0aAi3DRrZRK0bYPYEkqqfzANY/KueZ3MgGt8eqAraeTqp
         uQAhtHWOSXjKa+iNsYiWumMrOmlIWX3STW/BO/G7/PE7XIvoQdogmZzLsvNQpdJoc0A4
         k69Px3eDkFmukMxbCNBI2SJfHZIuNwVdSfgW7ak2ArTzq48vr6mCyz/oGWJ/va1Ezzwk
         hysucPghrg6ssIyZSlz2k8wCSCpFiGOekuypr5LPfmEW+Jc1UjbCBtiRA1j2PkQCweSL
         r0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093872; x=1700698672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=K3pnlSDKLCQo3SfV0xKl+xH6tN/ZUrSDhWMMnPvRNYucIo9lUgFXUfYCWa11VWrKps
         6AkbOw99jfoLpqXlqaZa1qWZ/p7zhPOidnM0jvLOBTTjLC+KMk+NpK1EO/v22UHxjb18
         +emGTXYlnxouBo/7wEPaUvC5QPc5gMklLxlKgbj4onlOtzN7j5nnUd9tgQluxg3WPtb5
         2X+raz/lamWuuUZp0T1wEMVGxlPGi4S94VzSHzJqkAwjVK1GvPM/ck/CHlm2oua/ceRh
         Npv7IIVhw4HSzasUbodbhgCYQ22Ill33d9FmwZhl/pbp7MGoCMVrBTJCE5Ctoyy5GW9J
         pM1A==
X-Gm-Message-State: AOJu0Yy1EXkNl1W6YN6I9wp0pr9E6gMVY9zj+9i2V1Gmz5D0f82PHIwx
	2wtS/URDYg5ePMQJAF9pusJ9SDlJM6s=
X-Google-Smtp-Source: AGHT+IFgW6c7qYUuH54nf6HOWx8QDa/CnQp5Ih8Am7cVXsTlWykB1rknOmnEGKWlpgCmzukCr7Kivw==
X-Received: by 2002:a05:6870:cd0e:b0:1e9:dae7:f58a with SMTP id qk14-20020a056870cd0e00b001e9dae7f58amr16617397oab.22.1700093871792;
        Wed, 15 Nov 2023 16:17:51 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:51 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 6/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:42 -0600
Message-Id: <20231116001742.2340646-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_161752_619448_1152A62F 
X-CRM114-Status: GOOD (  12.86  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
gaming device with a 3.5 inch screen powered by the Rockchip RK3566
SoC. The device looks physically different from the Powkiddy RGB30,
but is functionally identical except for the panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a18f33bf0c0e..f969618da352 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
new file mode 100644
index 000000000000..ba32d0793dca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "RK2023";
+	compatible = "powkiddy,rk2023", "rockchip,rk3566";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			  <200000000>, <115200000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rk2023-panel", "newvision,nv3051d";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
