Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A47B3CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xucwdEjwPoH8SN4CuHVoZUbSt8Lnscr3p1572tb0BGg=; b=tiVyEldHQkIwxo
	xQmiNRNToy2D6pMEJaTVAmA9JVSFUaTQYvrWEFBcL82sLzxGSdIPyyyCGPjhn+jrE+VTRK4vvdzrT
	XIA6reMHnUpbIyV60LYLFCOH0EgOTkswUItjnEIFqsLMFGxrZFcMULti8K0zYLZlq99dA1o1sXdl8
	t1EGrQZP70s1Vthyn4YqUeiwtf29Lk1bmCNmd8ssD1WSUrYOcex9VyYXgCnbgwq7aPxG8VoppOsqU
	WBn4wfqKHJKCHEKoRWQZtOL3isOWX6OZUiT55gB6y87c7IOBFdmP/XmpUvTLQCxI0V6HcgcdYVYLq
	ITIPpG6oxEV8RwgPOfZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4TFS-0000000BQYg-2iBv;
	Fri, 03 Oct 2025 00:02:10 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4TFP-0000000BQXy-22NH
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 00:02:08 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3f1aff41e7eso1346666f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Oct 2025 17:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759449725; x=1760054525; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=coXW5Vkb6CmpealAt1z5pb6dHocrXcBIL+HK5DdIDhI=;
        b=UJTC8gHGfFWmohWd8tmo+5jW/HPxYhux+rkT0SptGfBR2YiRbPTp/OKF5rSHYwkzk9
         R9n5zRXNq2jsSAEJn+n/8n5E9XgvHOgOCBwfynz9KqUUrHDqJLKCK4bVIaDkzaampIoi
         ZwaLJsN6RtADkuQx8viTxz6G9UcCpRCN0RxSSMNE4RfgBxkjQFD+82kxt1ylqqlcaXlk
         C4jPxe76b0fvxj3oaZIzHEP0XymiTOqoLqlQmwvQSHJayx5Yvl+m2yApzIzuzAA9O9i0
         Rmaz0kUdybsq6bFUqs5ClazAevS/Tz5dRiwzAxdr9O4ub1MIIpYJHFCxTwhrBPqOkbXt
         1TXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759449725; x=1760054525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=coXW5Vkb6CmpealAt1z5pb6dHocrXcBIL+HK5DdIDhI=;
        b=mQslLX/HJZMgUh49GnNvpWEykd6eA0ggViQBJza62A3tlT8nPgTuz/opKEx9Mujx0t
         OsFWfnv/QjoBn8t5XwnF+j1bsvwAEb00dyz/WokYOBHAWQSoZHuIWOvWwCqHPUAzJlYa
         I9pfuRkSRRLVJlyhFBp2r+37zv4rG3lIdj9u5VXgupDuU6HXn0zeJsyxPqs1HC6daTKt
         Z2X/5pQBcNw3eu4rfebwmWIJg1XTzq2K0HTG8ksSsqIn2aKq4SkAfS+R+XwkuDrUKAqy
         9gaTc+4I+dmOSfRoQ1B6bOkun6x8VsUfhr0bBJZ2Nj0dTq2Bqisu3LMVF8Gsxn76MTHi
         8mPg==
X-Forwarded-Encrypted: i=1; AJvYcCUEsEecrG+5x9a485jxYd54+uJD1ByOzaiU+3iKCW4Yjh6eTG+ZBl/9Qo8sLS6zYqHlb+0Wu2Zzl/Y9I6/EHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLu3lJ5fj0wOA/N4J9b4NKLDZ77T4mQCkvw5mx1xmegktFrBjC
	aKBNet4ptjNu+OtJT/KdBvnbA2m+0y2MitFTXkzwr7Uc3LJIEcdtZvpxEtbIx+V69qPTuGn/D8B
	R2OAGHb/3VukfHq+iUwTw8S5g/LlBPV/pu0oTUPs=
X-Gm-Gg: ASbGncuFK6mo4HoTN9dAjMxvOS1iBUUfeOag/8kWEFnD4dfeCdNQU4JFH/Lc7+kJT1j
	wL8U13MqK9lDJed2Pl9vwkw0MC3u9VPerD5GWBPEVZ0GLTE+2W4RwwCo2GQ55KraWDXqfpgGz2k
	Hog4/zTSYXA8FlO9zS0Jjif8xseHjfEYbqQGC9gHQywsAaydcl76w/l5Afn7uNKSgP+Wk1tYBMR
	QiwUM30o3+M7EpA+teLyYylENihouf867EPovWmg96K48amlnRMecI+UsBjeOc=
X-Google-Smtp-Source: AGHT+IH8H5F4Rz+w2GRajaiqGwkVljBWP+xyTsDvXZ4pEnPtSor4uaMKN91VsYpn2mPiM9ga89tuX8JFeLCJpJ65RTI=
X-Received: by 2002:a5d:584c:0:b0:3ec:e152:e31c with SMTP id
 ffacd0b85a97d-4256713ad7fmr600729f8f.1.1759449724680; Thu, 02 Oct 2025
 17:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com> <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 2 Oct 2025 19:01:53 -0500
X-Gm-Features: AS18NWDlylDf3oN5sbP_UNB28JThANAGdlYlt-3ts0m7FoUFxTbSDWexI2F-454
Message-ID: <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_170207_530698_CAE78EE4 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A few nitpicks below

[ snip ]
> +
> +#include "rk3588s-orangepi-cm5.dtsi"
> +
> +/ {
> +       model = "Xunlong Orange Pi CM5 Base";
> +       compatible = "xunlong,orangepi-cm5-base", "xunlong,orangepi-cm5", "rockchip,rk3588s";
> +
> +       aliases {
> +               ethernet0 = &gmac1;
> +               mmc0 = &sdhci;
Since sdhci is enabled in the SoM.dtsi, this alias should probably go
there instead.

> +               mmc1 = &sdmmc;
> +       };
> +

[ snip ]

> +
> +       vbus_5v0: vbus-5v0 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vbus_5v0";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               enable-active-high;
> +               gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> +               vin-supply = <&vcc5v0_sys>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vbus_5v0_en_pin>;
The property names in these regulators are not as organized as the
regulators for the CPU/NPU.

> +       };
> +
> +       vcc_3v3: regulator-vcc-3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               startup-delay-us = <50000>;
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> +               vin-supply = <&vcc5v0_sys>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc_3v3_en_pin>;
> +       };
> +
> +       vcc5v0_sys: regulator-vcc-5v0 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc5v0_sys";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +};

[ snip ]

> +
> +&gmac1 {
> +       clock_in_out = "output";
> +       phy-handle = <&rgmii_phy>;
> +       phy-mode = "rgmii-id";
> +       phy-supply = <&vcc_3v3>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&gmac1_miim
> +                    &gmac1_rx_bus2
> +                    &gmac1_tx_bus2
> +                    &gmac1_rgmii_clk
> +                    &gmac1_rgmii_bus>;
> +       tx_delay = <0x42>;
When using "rgmii-id", tx_delay will be ignored. Does the ethernet
work without this property?

See the comment by Jonas in another review.
https://lore.kernel.org/linux-rockchip/da752790-da17-4d26-b9b2-8240b38b3276@kwiboo.se/

> +       status = "okay";
> +};
> +
> +&gpu {
> +       mali-supply = <&vdd_gpu_s0>;
> +       status = "okay";
> +};
This is a feature in the SoC itself, so it's not board specific and
can be put into the SoM.dtsi.

[ snip ]

> +
> +&pd_gpu {
> +       domain-supply = <&vdd_gpu_s0>;
> +};
Same comment regarding moving to the SoM.dtsi

> --
> Regards,
>
> Laurent Pinchart
>
Jimmy Hon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
