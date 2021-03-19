Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07864C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:11:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E78C64F53
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:11:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7E78C64F53
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v/1BMAy5tzDGInaGlpXcZxMxDzLlgGS1bcsiqJ1C3sQ=; b=mFApJ+XKT8BzBVGK0kub+E7K3
	spI2oRNpoEonnJ58+uTVjipOexNF++s9qKWtZMLJ3TjSIbSwOyIwjTzwF3iWH5WQ8Y+VVDLSvpV5A
	8kzjxK4LK+Bh1OXY6v/mZUONVylb4NBbTcXW3Xq07BS4WSdFaHi4eKR2G5YQ1jWUhMUBCG/uCJ709
	yy/UH157EttT81wavcQEIUBhVDLDx3ij/L39KorXFDe3VSM6v1MAxnPrXOEdhkcHB7UW8YsX6v57C
	VtVyBvTjtxsQJ3yLJ+MnmMYC7uoX3Uqgo+ULBjkNBH4Rr8ckmJxn6Mlp7FkuGneBZe+UdX91eVAWP
	lg9U/7EfQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN7Q8-006XIZ-7d; Fri, 19 Mar 2021 05:11:36 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN7PX-006XER-Hg; Fri, 19 Mar 2021 05:11:03 +0000
Received: by mail-il1-x12b.google.com with SMTP id d2so6972409ilm.10;
 Thu, 18 Mar 2021 22:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Zd+XTZouVbzcjnD7Z7QwLMQuTWKysIKXQk2OdVX3sk=;
 b=t/9gwwanOyNa0ikRYC+ZZZ+cfpi6B7V9wD1Xphty1EjgdNFaVsOkA1ySI3IOmognmF
 nPtF4JtcT3e12w6QKa6sVxMRSHEjApSEIWCE+izZpXwKREsG4QOR5UDCoPxRUE9queZZ
 HZXldZOkaPOQv4EX0YMf78LvMW4iq8rPSCf2MWqd07o78wClfekohLyIPR/fWiVHMWN2
 YhwfMW6PE5Zy5GVarJLThtAtRHB6Ag2QUt4UTrir0KdHESWRWZr891nk1XV8sSzXBFhm
 4zTVsZYff162HUmrapjnWn0PjlVAthnXEszN0dp9FZoOznnVLEzoIaoHMv2RgP0nzwLA
 6J5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Zd+XTZouVbzcjnD7Z7QwLMQuTWKysIKXQk2OdVX3sk=;
 b=YjIKp/7fRzvNGHBG2ZzeqqbrMl5vCv1IQ7BY2WwMZvs6OQpTo9pdVM6cXGTUPrgyiN
 P2XJh2Z5ALxzQncq/yi0f3tEKotKtHO2C+hg/ij6k6qoPK+v8twY15cHwNsqFS36WJGy
 fmRvh0FrkuUVpZ0bozgfOo1sAMGAEYsTgfzW4bnxaVXjndj0fV7GUUMsyW2UhftByp3C
 2DU5FR2qwKMyYr9UFtG8Kd5Q1KohfT0b1hwoI5AkysRIP2LYlf/dQYwRBWyoqRh5f5i8
 Ja56SvKwzXBOr3BIUME7BAaY4jxe1SkPbiWKGwh6A+W+RQVMh+KXrwszej3ScNgTYv10
 qw3g==
X-Gm-Message-State: AOAM532ZvphjCLMyO44yWA+4O6l49NUz2H6XotrmDQo07Mww80tyP9Nz
 QWyNQ0cu+V/cfyoLjt56A9A=
X-Google-Smtp-Source: ABdhPJz9zJ6hVXrBdoKqOKyE9LZwNfbpgVSrqkr20YB/KzIymPQmXQMfYc+l2z3LuZZeJVdhPfSMQQ==
X-Received: by 2002:a92:b002:: with SMTP id x2mr1477277ilh.248.1616130658410; 
 Thu, 18 Mar 2021 22:10:58 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id y20sm2025112ioy.10.2021.03.18.22.10.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 22:10:58 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Johan Jonker <jbx6244@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi
 R4S
Date: Fri, 19 Mar 2021 13:10:47 +0800
Message-Id: <20210319051047.27619-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210319051047.27619-1-cnsztl@gmail.com>
References: <20210319051047.27619-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_051101_589898_B1019C15 
X-CRM114-Status: GOOD (  15.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This adds support for the NanoPi R4S from FriendlyArm.

Rockchip RK3399 SoC
1GB DDR3 or 4GB LPDDR4 RAM
Gigabit Ethernet (WAN)
Gigabit Ethernet (PCIe) (LAN)
USB 3.0 Port x 2
MicroSD slot
Reset button
WAN - LAN - SYS LED

[initial DTS file]
Co-developed-by: Jensen Huang <jensenhuang@friendlyarm.com>
Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
[minor adjustments]
Co-developed-by: Marty Jones <mj8263788@gmail.com>
Signed-off-by: Marty Jones <mj8263788@gmail.com>
[further adjustments, fixed format issues]
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 133 ++++++++++++++++++
 2 files changed, 134 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 62d3abc17a24..c3e00c0e2db7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -36,6 +36,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
new file mode 100644
index 000000000000..0aa19c06908d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * FriendlyElec NanoPC-T4 board device tree source
+ *
+ * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2018 Collabora Ltd.
+ *
+ * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
+ * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
+ * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3399-nanopi4.dtsi"
+
+/ {
+	model = "FriendlyElec NanoPi R4S";
+	compatible = "friendlyarm,nanopi-r4s", "rockchip,rk3399";
+
+	/delete-node/ display-subsystem;
+
+	gpio-leds {
+		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
+
+		/delete-node/ led-0;
+
+		lan_led: lan-led {
+			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r4s:green:lan";
+		};
+
+		sys_led: sys-led {
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r4s:red:sys";
+			default-state = "on";
+		};
+
+		wan_led: wan-led {
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+			label = "nanopi-r4s:green:wan";
+		};
+	};
+
+	gpio-keys {
+		pinctrl-0 = <&reset_button_pin>;
+
+		/delete-node/ power;
+
+		reset {
+			debounce-interval = <50>;
+			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	vdd_5v: vdd-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&emmc_phy {
+	status = "disabled";
+};
+
+&i2c4 {
+	status = "disabled";
+};
+
+&pcie0 {
+	max-link-speed = <1>;
+	num-lanes = <1>;
+	vpcie3v3-supply = <&vcc3v3_sys>;
+};
+
+&pinctrl {
+	gpio-leds {
+		/delete-node/ status-led-pin;
+
+		lan_led_pin: lan-led-pin {
+			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		sys_led_pin: sys-led-pin {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led_pin: wan-led-pin {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	rockchip-key {
+		/delete-node/ power-key;
+
+		reset_button_pin: reset-button-pin {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&sdhci {
+	status = "disabled";
+};
+
+&sdio0 {
+	status = "disabled";
+};
+
+&u2phy0_host {
+	phy-supply = <&vdd_5v>;
+};
+
+&u2phy1_host {
+	status = "disabled";
+};
+
+&uart0 {
+	status = "disabled";
+};
+
+&usbdrd_dwc3_0 {
+	dr_mode = "host";
+};
+
+&vcc3v3_sys {
+	vin-supply = <&vcc5v0_sys>;
+};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
