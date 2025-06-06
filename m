Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6B5C5B555
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 00:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI4TR8aQpzil7jAuze7lmTqTSbaJNU/cVXRE+8ap1rs=; b=MEXXePlulM0hLg
	+v7lXJ8FxgWl4hlcqcb2D0UWpO04vFCp0xQzbQ3sphs61vGsFEK66uaYdT8/2AkyHpSECf+z4cEmD
	pSMAUwQhbRE3Y9u+q9/HZgRu5dw4KW3KLvB6gEiIxzGh24qj7Xx7oYtlPpcE/jwEbVk0riR195bWg
	6JkxLBhzwupD69qbNgxER+5SNl7DdzeX5mdCO9JJ5/eyUys+sK0b//+MxpwrIwiB1blZXSxrAivxU
	N3+GYKPoHnRZksP/WX5nR2a4NeYMvCrmGEjgkVyXau3XP5DxRh/6iMGBqIBGH33kGvHJfN+RZZEJM
	kUlrA6d8dOlew8xwNfiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNLJL-0000000Grki-46fa;
	Fri, 06 Jun 2025 00:51:55 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNLJJ-0000000GrkJ-06dq
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Jun 2025 00:51:54 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so17837945e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 17:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749171111; x=1749775911; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pDd/em4BnTremoHZ4ljFwRuxK1c22ANbjaIWqYoupN4=;
        b=KCGjTWGqRBqgOvZikBHef9DSTiC3+5BIaqvS9cEn0nIqoe+Wa/wYNYaI5z6uW8ELYa
         GDsAkEJweRYNfIlMzYn1Zg8LTbjxS4eia+HMJ2UwN/FCcXqoZpYiG4v3wQhpWzE0p5QK
         FWfJY+IhvSWf6ptcOY8AGNUHjNzVYZTiWjT4KiFZy5BwFnvKicOvBxp56W2twndn/LFi
         3R8b+IfwHvZQ79cS2E2Po7dGmQZgdJRCVtje1hT8EDKe9ftCMnzDIwn8qBzJyWRscf4E
         YTVkw78UGbuNZ8KKV/GDSdNwlPeBb7mzP8kO4S/p38gByCL2mwNxrPAiogBK530pNTbC
         hMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749171111; x=1749775911;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pDd/em4BnTremoHZ4ljFwRuxK1c22ANbjaIWqYoupN4=;
        b=BJlcTuiSyD2jglMzXk1DdLA/DCwWylMisvy8GeEQYQmr53IJO3gz5SJ+isKT2sWDu3
         3x9CHxw9dYWogA3TKU5N7NnZKwtAF9lJ2syJxPkYxfQt7ePFpTxzjqIpEhM+8q2awh/J
         t8w9amEFK9o9K7/AlCooZ3rlMuZqMdolJang903gKjO51bXuGRKpDrcICJbe6TrjFXtZ
         /saoeeZgPsxWO0pPbWSG2+S/FXCd4VjBA/Ffk869r2O4Kfq64BYcVqCE/i8049IWOvpZ
         7C07h2mX6Gyf5MzbZZaoeFJK1OI7z3TbZ1C7+9WlAm1A6kSNug8cNbtnT9Gv2YkdB2mL
         abxg==
X-Forwarded-Encrypted: i=1; AJvYcCV09W9CjGihkLG27f47CAlQWtzMsI5mEV+MnLRvnoJU3vwad4SQXHJiE5J1Gi9Mg2dko4HmQqC92ABdbXcUGA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc+KOwf6h6yQWYVbpqUCujNpbsmhGxwkYxgqn0ATwyBpLghH3v
	Q256RSXa5Cxr4tXs1Kf2qz8m0bczw1IswgRMRdDyn3ixEGlYh5pQJuL67n+7MTNEB4WX0pTI0bY
	2M+T1h/kG/FcDbfS625cTNbUg+oGsafQ=
X-Gm-Gg: ASbGncvgVsnV4hwNfYRitwGkN1/9C9x8j31m+6WBs5Oae5ltD3oYpeHs3N2JlJo7Bau
	CFum3wKQgFWch7niOh68+/jy2uVuKkXA+my+ll8F9yNni6uIpRvGhNf7t68aBFGWFpjppGg50mG
	cDBpSzPG0kEl8bMtufyaA5niXczQ0SD/phZR57vVtZrbmTC8yU36DQ28sSO5luaLywXe8XyVp/L
	Q==
X-Google-Smtp-Source: AGHT+IFmJe8yFH3mtq1Z6Tv7efTynx3Rh7g1ZDY0N3/XsC7tUoceZKE++OJZinpMI9oi2tnQpCU05SbiAGXhzc5oB+w=
X-Received: by 2002:a05:6000:310e:b0:3a4:e480:b5df with SMTP id
 ffacd0b85a97d-3a531cdcf1bmr1029174f8f.44.1749171110901; Thu, 05 Jun 2025
 17:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com> <20250605-rk3588s-cm5-io-dts-upstream-v4-2-8445db5ca6b0@gmail.com>
In-Reply-To: <20250605-rk3588s-cm5-io-dts-upstream-v4-2-8445db5ca6b0@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 5 Jun 2025 19:51:39 -0500
X-Gm-Features: AX0GCFsRkfO5vf9GbjFEfVPfc0GUX68k1KXUdvbKCGuPNLJHp2VacWfI4Po_q7M
Message-ID: <CALWfF7J-Lygg+N3oH+p7XkPvH_6ZbvTRY6CaZzFqDixzSgDHBA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_175153_067882_062EA2D5 
X-CRM114-Status: GOOD (  15.34  )
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

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..d7946fe2bb4e721689e3eb4d60d8e9783402f05e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
> + */
> +
> +/*
> + * CM5 data sheet
> + * https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +/ {
> +       compatible = "radxa,cm5", "rockchip,rk3588s";
> +
> +       aliases {
> +               mmc0 = &sdmmc;
Since the microSD card is on the carrier board, this alias should be
moved to the board DTS.

> +               mmc1 = &sdhci;
Most of the other Radxa rk3588 boards have the eMMC alias to mmc0. Why
does this use another convention?

> +               mmc2 = &sdio;
The sdio is not enabled. This alias won't be used.

> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               led_sys: led-0 {
> +                       color = <LED_COLOR_ID_BLUE>;
> +                       default-state = "on";
> +                       function = LED_FUNCTION_HEARTBEAT;
> +                       gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger = "heartbeat";
> +               };
> +       };
> +};
> +
> +&cpu_b0 {
> +       cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b1 {
> +       cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b2 {
> +       cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_b3 {
> +       cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_l0 {
> +       cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l1 {
> +       cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l2 {
> +       cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l3 {
> +       cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&gmac1 {
> +       clock_in_out = "output";
> +       phy-handle = <&rgmii_phy1>;
> +       phy-mode = "rgmii-id";
> +       phy-supply = <&vcc_3v3_s0>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&gmac1_miim
> +                    &gmac1_tx_bus2
> +                    &gmac1_rx_bus2
> +                    &gmac1_rgmii_clk
> +                    &gmac1_rgmii_bus
> +                    &gmac1_clkinout>;
> +       status = "okay";
> +};
Should this be left disabled on the SoM dtsi? And only enabled on the
carrier board, if the carrier board has the RJ45 jack?
i.e. a handheld using the CM5 may not have ethernet
https://github.com/StonedEdge/Retro-Lite-CM5

> +
> +&gpu {
> +       mali-supply = <&vdd_gpu_s0>;
> +       status = "okay";
> +};
> +
> +&hdmi0 {
> +       status = "okay";
> +};
This should be moved to the carrier board DTS where all the other
HDMI0 nodes are.

> +
> +&i2c0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&i2c0m2_xfer>;
> +       status = "okay";
> +
> +       vdd_cpu_big0_s0: regulator@42 {
> +               compatible = "rockchip,rk8602";
> +               reg = <0x42>;
> +               fcs,suspend-voltage-selector = <1>;
> +               regulator-name = "vdd_cpu_big0_s0";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <550000>;
> +               regulator-max-microvolt = <1050000>;
> +               regulator-ramp-delay = <2300>;
> +               vin-supply = <&vcc5v0_sys>;
> +
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +
> +       vdd_cpu_big1_s0: regulator@43 {
> +               compatible = "rockchip,rk8602";
> +               reg = <0x43>;
> +               fcs,suspend-voltage-selector = <1>;
> +               regulator-name = "vdd_cpu_big1_s0";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <550000>;
> +               regulator-max-microvolt = <1050000>;
> +               regulator-ramp-delay = <2300>;
> +               vin-supply = <&vcc5v0_sys>;
> +
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +};
> +
> +&mdio1 {
> +       rgmii_phy1: phy@1 {
> +               compatible = "ethernet-phy-ieee802.3-c22";
> +               reg = <0x1>;
> +       };
> +};
> +
> +&pd_gpu {
> +       domain-supply = <&vdd_gpu_s0>;
> +};
> +
> +&sdhci {
> +       bus-width = <8>;
> +       no-sdio;
> +       no-sd;
> +       non-removable;
> +       max-frequency = <200000000>;
> +       mmc-hs400-1_8v;
> +       mmc-hs400-enhanced-strobe;
> +       mmc-hs200-1_8v;
> +       status = "okay";
> +};
> +

Jimmy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
