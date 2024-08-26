Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41238C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 19:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vs991fuun251bjKKWpQHsgPQkdjEHBMi1y17kWSSkm8=; b=NB+v0Ek7rcsQxp
	xwJ++8H5+r3YOef1cz5FVL9VL5S8xNAxcmxuFLIjWxwu+iJAFibqEluok9qDUsDtKJXV98s8QoOsE
	oQfzJYlD/tur3y5s9ySgqotYgwyKnx08u+oQXxzM2sd0fHOtu+PLB6dTNE/ydbx7G8ixxIkyA8hzc
	hxkzkegzQkBGyPvJzLN/DySuwGIhLLcJHmCVCCO9TXHMIUoaZZCDtYWJQzaHaac4Gej3iR5h1Koi7
	LnxRyYFicGHFEsWWorH7jMz2fbYXNwgc+TdJ0MDU6xt+IJNNAIb7/YLUcqvMWnIVowSed6xNq/Jd4
	D9malEzo6EMLyX7CRMhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sifYm-00000008WLg-3FbQ;
	Mon, 26 Aug 2024 19:39:28 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sifYk-00000008WKq-1R6w;
	Mon, 26 Aug 2024 19:39:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724701104; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y8CvhF/MJMpIU8xUcXwDaR/0I/ZSweEEmXPq80aazFOnaFJYtKwl4bAoircq8YmuV6hXbjY/LG7ggwynibvQhGHfnA3ZxeJcjwFUFCvznyYbFk7aW61rIiOqUerkxcHHMLSrs42ET9t8PNTNaKsv5xPHKyWqwnZ6a6qTKIkYIe0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724701104; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=o/g/+7cY7f/H3JMgXb+3Ce2wa+YsyQzpWO4kehk64OE=; 
	b=MUqYc1cFentcZXmMJg9AdlCdo8ojnSpq+vXAcb2Dy54wHiwWIOuJtTW6vVH4gpcV7uwcxMqELFKzkobFHCCb5EQOSXAiE16kMmMVa2SpQ7ZwzZfhgDdL75k4Q6T+BeMWw6EJYM/LEBPkdYRHZYc9FRT7i9Z7tpBAymCig84p9kg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724701104;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=o/g/+7cY7f/H3JMgXb+3Ce2wa+YsyQzpWO4kehk64OE=;
	b=ca0roMD4CCh2C6YxOlrU6DoQDhY/6r1S4aQEcvOV4tFUBCMSGleXec7uvWP4kkRv
	3tCHEJS1EM6ENk3vDrDuiM8rdiwTt9v6/9xC9v7IICGYmXiIINAfTSOzJBk3Dql+Dvd
	Cuvg2in63RexEjBhe2pp9MOB8TUQpI9kWJ45Y4VQ=
Received: by mx.zohomail.com with SMTPS id 1724701102774210.66353128633466;
	Mon, 26 Aug 2024 12:38:22 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: airlied@gmail.com, alchark@gmail.com, amadeus@jmu.edu.cn,
 andi.shyti@kernel.org, andyshrk@163.com, broonie@kernel.org,
 cl@rock-chips.com, conor+dt@kernel.org, daniel@ffwll.ch,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 dsimic@manjaro.org, efectn@protonmail.com, finley.xiao@rock-chips.com,
 gregkh@linuxfoundation.org, heiko@sntech.de, honyuenkwun@gmail.com,
 jagan@edgeble.ai, jamie@jamieiles.com, jic23@kernel.org,
 jirislaby@kernel.org, jonas@kwiboo.se, jszhang@kernel.org,
 kernel@collabora.com, krzk+dt@kernel.org, lars@metafoo.de, lee@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux@roeck-us.net,
 maarten.lankhorst@linux.intel.com, macromorgan@hotmail.com, megi@xff.cz,
 michael.riesch@wolfvision.net, mripard@kernel.org, robh@kernel.org,
 tim@feathertop.org, tzimmermann@suse.de, ulf.hansson@linaro.org,
 wim@linux-watchdog.org
Subject: Re: [PATCH v2 12/12] arm64: dts: rockchip: Add rk3576-armsom-sige5 board
Date: Mon, 26 Aug 2024 15:38:18 -0400
Message-ID: <2622447.Lt9SDvczpP@bootstrap>
In-Reply-To: <20240825142509.201943-1-amadeus@jmu.edu.cn>
References: <4367745.ejJDZkT8p0@trenzalore> <20240825142509.201943-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_123926_443380_71EC5F6C 
X-CRM114-Status: GOOD (  11.84  )
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

Hi Chukun,

On Sunday, 25 August 2024 10:25:09 EDT Chukun Pan wrote:
> Hi,
> 
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> > ...
> > +	leds: leds {
> > +		compatible = "gpio-leds";
> 
> Maybe there should be a blank line.
> 
> > +		work_led: work-led {
> > +			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger = "heartbeat";
> > +		};
> > +	};
> 
> Is the color missing?

Actually, after rechecking, this is wrong. There are 2 LEDs on &gpio4:
 - PB2: Green
 - PB1: Red

I can set the green one as heartbeat and the red one as default-on.

> > ...
> > +	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_3v3_rtc_s5";
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_5v0_sys>;
> > +	};
> 
> Missing blank line.
> 
> > +	vcc_1v8_s0: regulator-vcc-1v8-s0 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_1v8_s0";
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		vin-supply = <&vcc_1v8_s3>;
> > +	};
> > ...
> > +&gmac0 {
> > +	phy-mode = "rgmii-rxid";
> 
> Can we use "rgmii-id" and remove tx_delay here?

Indeed, that's better.

> > ...
> > +&sdmmc {
> > +	bus-width = <4>;
> > +	cap-mmc-highspeed;
> > +	cap-sd-highspeed;
> > +	disable-wp;
> > +	max-frequency = <200000000>;
> > +	no-sdio;
> > +	no-mmc;
> > +	non-removable;
> > +	sd-uhs-sdr104;
> > +        vmmc-supply = <&vcc_3v3_s3>;
> 
> Indentation error.
> 
> > +	vqmmc-supply = <&vccio_sd_s0>;
> > +	status = "okay";
> > +};
> > ...
> 
> Thanks,
> Chukun





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
