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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EDCC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:17:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6317A64F59
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:17:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6317A64F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2LOBQQp+orjSRB6LliMjoTIq2l6IC0Agx7MVX+4hGTs=; b=hBtNEV3pT2Xh+hgrq41tTq8Rk
	liDgJ2IL55Cx7eMxKghupfxAOh4gflT5XLeorced5YP0k2i4+Ov1Oyx79r4JXopXStrFq5VwK8536
	ktFcFjikIC0Rx5JMELmKCbyUJo/ynxPD0To6o+ZX2g+SPxt6iqLxhaje4YjiSafbad0WfuK56tMlm
	mvvwar8yB0xSyQYqbGpIIFhUsfndP0rYj+XeZfk6L+v5xVSLiV1LbbzprHIFNzkSAdf4E3IfKSIfL
	URchqnjKfnP2XigeCN7bTNcvtSFLtuMpLor0p1ZsTWxgxzn4RrN7Q9HWbY7P5pvlAScl9Iof2Sesa
	M8oG8qVBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN7VT-006YG5-8Q; Fri, 19 Mar 2021 05:17:07 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN7V1-006Y9G-44; Fri, 19 Mar 2021 05:16:41 +0000
Received: by mail-il1-x134.google.com with SMTP id c17so6995288ilj.7;
 Thu, 18 Mar 2021 22:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=feqvIIX1TyTgejukNexbzWLQI+ZY/SioJBhvwi9VmOc=;
 b=j731lBK8+E1sW462zd2Do7Vcb90OfF2lm7mk0QFy4w2GzwBdECF+BNXHWYRSZs4kIw
 c0waax9P8T/XvbPMspHf8Pz6L5qnqVtXI82iYAsmN4qziou4/lEyYn9Bo3h/E3jh7NRM
 6masbUpakyFV5NSxX0A1TxdsF6aLUuhG5bsdv5HgwOIbbds7NWVpSyTfq3d7HeqBd3uB
 JcmYaziX1X451mWbQLtDXM51wHZaWa8/yQ6Nwcd5KAYIWpilkdg8w7SMNtFxrfaWsquD
 XSRZKKBvvPN47Wk1aKMuLJeURd9kQI2+98eu3pLWDxoU/D3n4+Lkg8c9ntGqu+XV575S
 5MIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=feqvIIX1TyTgejukNexbzWLQI+ZY/SioJBhvwi9VmOc=;
 b=lYlupQI8Th1tthT35rlmFqoDl83MDyqJW7uvyZtxBCfUD9BZxZtTLl0sBnphTFm771
 7Lw6hOHakOMqBMsEgJ9WjnrLS2oyFaeDVa+0Khmzp2C9oprOemk7EMRk0ngfan1JGS8a
 35jjK3ZS2qe/HWsY1fJgwVP67QyiNAjdBiBud4EZLtBC31TpGwJ0aa0+17NvuOYpO7Uu
 RslqqZFzSIzLvS+TjFIknQhcdn0jKsaJGMhUg8SbyLCMFBrK2cODrpDesGKTc/sm3CQA
 MEEl92qFuNO7BZGP/smJ2vkcRqrHHysf7ePdb82awD8ONVquKBWnZEOBVEX1mJnPqwQ4
 QVcw==
X-Gm-Message-State: AOAM532YvxmU+tGU8lVDbNIefRbZ6sdpc+pZ2RJyvb6p9ukiiOxdM2if
 qGY3o5U3WlA1/WjqMqBFvic=
X-Google-Smtp-Source: ABdhPJySz2XJNdtoXQp352xVCg4bHdiq9G832iqxzRtph3xUdA32+zbgXAnzkNGO9JZpDmuFvp2W/Q==
X-Received: by 2002:a92:dc03:: with SMTP id t3mr1510646iln.76.1616130997899;
 Thu, 18 Mar 2021 22:16:37 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id s16sm2013154ioe.44.2021.03.18.22.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 22:16:37 -0700 (PDT)
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
Subject: [PATCH v6 2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi
 R4S
Date: Fri, 19 Mar 2021 13:16:27 +0800
Message-Id: <20210319051627.814-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210319051627.814-1-cnsztl@gmail.com>
References: <20210319051627.814-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_051639_226957_85892A3D 
X-CRM114-Status: GOOD (  15.31  )
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
index 000000000000..fa5809887643
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
+		lan_led: led-lan {
+			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+			label = "green:lan";
+		};
+
+		sys_led: led-sys {
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			label = "red:sys";
+			default-state = "on";
+		};
+
+		wan_led: led-wan {
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+			label = "green:wan";
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
