Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1A3C5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ancSNIrRQC+VFScC+I2CNlb501P0pJO8ABfsNDEy4X0=; b=OznSXmANtWi3gl
	1X1+vD3EUVJXk4fHjc6GgotIjtPeUK9aNDqAUbt0wuuMHwtCnyaAW+0BjPj7wxe0U8G9OCSkyocVG
	ZExD06ShDhekf3BnmBtGKizKdYF5e5P8FiR4uIzSlw/kgCTWBIFp7ro6LefMwvhKu+RU6PhsL8gGb
	0Qdk4nqSCFAgKfcOgqTWR6AbWLaqlprBSn6AAxnV/AEQ9vQi4+KC7lTGVAQ5ig7xFJzxdDEwQTgHC
	FAFXFdnT5bAZ1kbpAEUnWrPN0hhHfumiDdIteZFkSVpx5y6F9X14JOghWRpMTy/bOQ/+0LGICdvWR
	vZHn4Q7JwIa9nBzv9DTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siED7-00000004USv-0TQN;
	Sun, 25 Aug 2024 14:27:17 +0000
Received: from mail-m9298.xmail.ntesmail.com ([103.126.92.98])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siED3-00000004URw-2pDn;
	Sun, 25 Aug 2024 14:27:15 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.165])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 9084A7E0183;
	Sun, 25 Aug 2024 22:25:12 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: detlev.casanova@collabora.com
Cc: airlied@gmail.com,
	alchark@gmail.com,
	amadeus@jmu.edu.cn,
	andi.shyti@kernel.org,
	andyshrk@163.com,
	broonie@kernel.org,
	cl@rock-chips.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	dsimic@manjaro.org,
	efectn@protonmail.com,
	finley.xiao@rock-chips.com,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	honyuenkwun@gmail.com,
	jagan@edgeble.ai,
	jamie@jamieiles.com,
	jic23@kernel.org,
	jirislaby@kernel.org,
	jonas@kwiboo.se,
	jszhang@kernel.org,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	lee@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	maarten.lankhorst@linux.intel.com,
	macromorgan@hotmail.com,
	megi@xff.cz,
	michael.riesch@wolfvision.net,
	mripard@kernel.org,
	robh@kernel.org,
	tim@feathertop.org,
	tzimmermann@suse.de,
	ulf.hansson@linaro.org,
	wim@linux-watchdog.org
Subject: Re: [PATCH v2 12/12] arm64: dts: rockchip: Add rk3576-armsom-sige5 board
Date: Sun, 25 Aug 2024 22:25:09 +0800
Message-Id: <20240825142509.201943-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <4367745.ejJDZkT8p0@trenzalore>
References: <4367745.ejJDZkT8p0@trenzalore>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGE5NVk1LGUwaSkMYSEweGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSk1OWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NNVUpLS1VLWQ
	Y+
X-HM-Tid: 0a9189ed442703a2kunm9084a7e0183
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M006Nio5SzI0GhkuCj5PLjo1
	QhVPCzNVSlVKTElPTkJOQkpPSUhOVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKTU5ZV1kIAVlBT09MSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_072714_001619_F3CF316A 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
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

Hi,

> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> ...
> +	leds: leds {
> +		compatible = "gpio-leds";

Maybe there should be a blank line.

> +		work_led: work-led {
> +			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};

Is the color missing?

> ...
> +	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_rtc_s5";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_5v0_sys>;
> +	};

Missing blank line.

> +	vcc_1v8_s0: regulator-vcc-1v8-s0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v8_s0";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_1v8_s3>;
> +	};
> ...
> +&gmac0 {
> +	phy-mode = "rgmii-rxid";

Can we use "rgmii-id" and remove tx_delay here?

> ...
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	max-frequency = <200000000>;
> +	no-sdio;
> +	no-mmc;
> +	non-removable;
> +	sd-uhs-sdr104;
> +        vmmc-supply = <&vcc_3v3_s3>;

Indentation error.

> +	vqmmc-supply = <&vccio_sd_s0>;
> +	status = "okay";
> +};
> ...

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
