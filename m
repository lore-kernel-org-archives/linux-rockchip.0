Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E8DC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 09:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXh/p1UqGA2GWU6krwzs3AI8EeXjuZfxBOzFyOGg/fo=; b=RLr06PMpDSwgPe
	EXVeRPArl5PEcphCRui/HLszWlrrd8eRi0m1OwRNqboy9M0V+0WZGWCibnzHKIQK3Hatu8cMH+sAN
	mo/y5cNxUPqk6uOod6Z2ME6atPnYlLRfuBGC5g7qZ52sg76wvBaS1gNICOK0+O5pgAOfSYP1nrtxk
	5n5YM5ThFbhqVnS0SMxCw7YVTcYwUDpRM3wJFubtip0xphMBs/yN+UqzNv9slFoN6APWnLXJ8xfPi
	qfm2OnTWBNQnXmQiZNC60PRidaX/urFSnD0hofoCIBcrKfkv4IxexBvAQAQmUGoMy6E2Q58czq6Z7
	Xp/UxONvIuRQS9njUAPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKxmG-00AGZQ-0E;
	Wed, 03 Jan 2024 09:43:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKxmA-00AGYH-2u;
	Wed, 03 Jan 2024 09:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1704274974; bh=+FuXJj2iKg82sXCjmgWQQwQpfkrjPVRuS95BkQPHOsw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=DWllvzcsi439e2+YBGopYhr7/9P4TW/n11basEqxa5WmGOsOuP9HnwC1kXB4B2o1+
	 SbiCHP4a0BGb1mZFtaJjf3sSm54STGsn0NSLu5ZpzdrxDb3+tuGLSgdyPZpmbBYqrL
	 7VHgotempQviHZ7yLqhZT+zg9JoMETqwqz2oaZt8=
Date: Wed, 3 Jan 2024 10:42:54 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Mark Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Manuel Traut <manut@mecka.net>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Mark Yao <markyao0591@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_014303_691197_67670DA8 
X-CRM114-Status: GOOD (  12.95  )
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

Hello Manuel,

a few more things I noticed:

On Tue, Jan 02, 2024 at 05:15:47PM +0100, Manuel Traut wrote:
> From: Alexander Warnecke <awarnecke002@hotmail.com>
> 
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&flash_led_en_h>;
> +
> +		led-0 {
> +			gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> +			color = <LED_COLOR_ID_WHITE>;
> +			function = LED_FUNCTION_FLASH;
> +		};

This LED is supplied by VCC5V_MIDU, so maybe this should be a regulator-led
supplied by gpio (FLASH_LED_EN_H) controlled regulator-fixed named f_led which
is in turn supplied by VCC5V_MIDU.

https://megous.com/dl/tmp/9bf0d85d78946b5e.png

> +	};
> +
> [...]
>
> +
> +	speaker_amp: speaker-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&spk_ctl>;
> +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "Speaker Amplifier";
> +		VCC-supply = <&vcc_bat>;
> +	};
> +
> +	vcc_3v3: vcc-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc3v3_minipcie: vcc3v3-minipcie {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_pwren_h>;
> +		regulator-name = "vcc3v3_minipcie";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_sys>;

This regulator is supplied by vcc_bat: https://megous.com/dl/tmp/4ec71a4a2aea9498.png

> +	};
> +
> +	vcc3v3_sd: vcc3v3-sd {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc_pwren_l>;
> +		regulator-name = "vcc3v3_sd";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc5v0_usb_host0: vcc5v0-usb-host0 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_host_pwren1_h>;
> +		regulator-name = "vcc5v0_usb_host0";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v_midu>;
> +	};
> +
> +	vcc5v0_usb_host2: vcc5v0-usb-host2 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_host_pwren2_h>;
> +		regulator-name = "vcc5v0_usb_host2";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v_midu>;
> +	};
> +
> +	vcc_bat: vcc-bat {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_bat";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc_sys: vcc-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_bat>;
> +	};
> +
> +	vdd1v2_dvp: vdd1v2-dvp {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd1v2_dvp";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		vin-supply = <&vcc_3v3>;
> +		/*enable-supply = <&vcc2v8_dvp>;*/
> +	};

There's no vdd1v2_dvp in the schematic on the camera sensor connector, or elsewhere:

  https://megous.com/dl/tmp/fd95f003d8f3fbfb.png

So I guess, you can drop this, entirely. Maybe it's VDD1V5_DVP but I don't think
it needs to be described in DT, since it's pretty local to this camera sensor,
and nothing else uses it.

  https://megous.com/dl/tmp/7fc384e196c5428f.png

regards,
	o.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
