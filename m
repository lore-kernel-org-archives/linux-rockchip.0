Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2790EC38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 14:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6wO4oRaCJjB0a/UnoizcFVvHKKrSZ1+R5WUTurLdeQ=; b=ajOpeWBV5evsD/
	oopdqK/AR8vPE90qX01mB1Kz56J9qyzm4Pg/PsmiLO1/kYYgfxOQBb+My9IwoS8LXrspukMEO+dq/
	Pw9rTkGRHS+b4Z2wh7t9JDiUATzBCGo9bBOhhPe+l9Apm3N+m8bpQqgNvT2jOhVP7RJmhjetcePko
	l39Kz0HmNLc1kWwd+fQBE4lNOY7KR/8+wPlHiHE3yh1oeOr7xT1J88T4rsOEN7lbsoQUCTnIeaRkh
	crkDayrseQSWCLrT6vwG88rftOOHBxZ4Qbz4cFFhbPiIuHhugmguV2GP/6RVew9y1BojgrTClbk04
	8qzkompqiNlBTOhuiTgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQZs-000CJO-N9; Fri, 28 Oct 2022 14:43:20 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQYh-000BDr-1R; Fri, 28 Oct 2022 14:42:08 +0000
Received: by mail-ed1-x532.google.com with SMTP id f7so2512883edc.6;
        Fri, 28 Oct 2022 07:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rdd3C6TN+Q7jAZQuqgCwSsa1Ij3JEPJSz4b5ZZhAUUs=;
        b=kLyhfxR7p36DQOpBZl9Xm1k1GIhdt6OshFZhitwORGQ4ER/NSqvUrwy0cariZW8PjV
         vFYdHyLIFACFRD1KV+wh8kL3/ZjXdYqz2pdqmP3635Byw/7Fj+x+dV4xVSGv0G3Do4lJ
         8qCN46HjeV+2NOY27mN4RIeeXmg7X+KmzRz50V522lgwncRkkA8dNxJ5X88A2MFRdoo0
         Lt+F3o57iXZ/dcrn77HCvh+lpNqTrkNHx6lbrmfKLX2WAdjQBY4N/OMZrQ1o78IESYdk
         KnAxF8nypDpLVU/UxAqHON/1IPzbDN+TzWRQYJw82pmC0H3sgIk1I4Q0B5m27FXMhKRW
         bndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rdd3C6TN+Q7jAZQuqgCwSsa1Ij3JEPJSz4b5ZZhAUUs=;
        b=R0lpkHprMe7eFIgEm1cbvSPSiJmXX8ayktEPEnmoeiHjPMLcNggAtzy1TgJ3Q+lJTV
         ScouX7cYUpbs+jlXEyrnYLiH8ZkhQXlCe7F2+VGGfcfAE+0C/1JNJNFcnluH8nPK32BZ
         ixhzkXoyztUEFCeMF31rDjOIZUzG8Bze3elonPAj7u/ED29rjRbiGcS7bkwkHk5U1uiF
         B7TgDrR2ybvOxO/fwtzYIYCOwJPs8erTWRhALWEUFg1eQRy75LevzA2G8fLRI9mLD8cW
         et3mNuMpdXCohiQdPEAKZJ89QHDCwfRgJRg4vfrpltiaqq6q48RKhhkEDRzd4PIpbJX8
         Rm6w==
X-Gm-Message-State: ACrzQf3uGHe/oxHOq9CV9jDSxOBGh5sliRthrYKABYMCPwjMPmnw2svP
	2fUUX4NkCcOVjKEh3NmF8Mg=
X-Google-Smtp-Source: AMsMyM7sw0vsxz8O0tx9YfPlNRv5qrozUBj34sERmHlZ8BKSV46Pt6oF9zRc8ChmME8VeYPRgBeJig==
X-Received: by 2002:a50:bb06:0:b0:461:4acc:4540 with SMTP id y6-20020a50bb06000000b004614acc4540mr37760091ede.307.1666968121365;
        Fri, 28 Oct 2022 07:42:01 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id x9-20020a056402414900b004589da5e5cesm2793607eda.41.2022.10.28.07.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:42:01 -0700 (PDT)
Message-ID: <56dbd2ab-dc2c-2f7d-0403-1d29dfd3c2e7@gmail.com>
Date: Fri, 28 Oct 2022 16:41:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 4/4] ARM: dts: rockchip: add rk3128-evb.dts
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
Content-Language: en-US
In-Reply-To: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_074207_121257_6EEC426E 
X-CRM114-Status: GOOD (  12.94  )
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

Add rk3128-evb.dts

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  use generic node names
  remove underscores in node names
  add more aliases
  sort
---
 arch/arm/boot/dts/Makefile       |   1 +
 arch/arm/boot/dts/rk3128-evb.dts | 110 +++++++++++++++++++++++++++++++
 2 files changed, 111 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3128-evb.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 68ac9b360..0f26539d2 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1127,6 +1127,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3066a-marsboard.dtb \
 	rk3066a-mk808.dtb \
 	rk3066a-rayeager.dtb \
+	rk3128-evb.dtb \
 	rk3188-bqedison2qc.dtb \
 	rk3188-px3-evb.dtb \
 	rk3188-radxarock.dtb \
diff --git a/arch/arm/boot/dts/rk3128-evb.dts b/arch/arm/boot/dts/rk3128-evb.dts
new file mode 100644
index 000000000..c529e7437
--- /dev/null
+++ b/arch/arm/boot/dts/rk3128-evb.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2017 Rockchip Electronics Co., Ltd
+ */
+
+/dts-v1/;
+
+#include "rk3128.dtsi"
+
+/ {
+	model = "Rockchip RK3128 Evaluation board";
+	compatible = "rockchip,rk3128-evb", "rockchip,rk3128";
+
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		i2c1 = &i2c1;
+		mmc0 = &emmc;
+	};
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	memory@60000000 {
+		device_type = "memory";
+		reg = <0x60000000 0x40000000>;
+	};
+
+	vcc5v0_otg: vcc5v0-otg-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 26 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		regulator-name = "vcc5v0_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio2 23 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_vbus_drv>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+	};
+};
+
+&usb2phy {
+	status = "okay";
+};
+
+&usb2phy_host {
+	status = "okay";
+};
+
+&usb2phy_otg {
+	status = "okay";
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci {
+	status = "okay";
+};
+
+&usb_otg {
+	vbus-supply = <&vcc5v0_otg>;
+	status = "okay";
+};
+
+&pinctrl {
+	usb-host {
+		host_vbus_drv: host-vbus-drv {
+			rockchip,pins = <2 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb-otg {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
