Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B6AC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 13:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baSwohen+u+1fTgFhpJbre4ItNIhnw2JHdXniwo92tU=; b=Dovlg4eB97UWGw
	sKjFtROYjHmqaItLvSBH8ZdSfEZ2vjTADbYj+h1WJegx+Z8VO49ePpZZE85HjwyUalq1sCtbGeHG0
	IAnqB0Y8tWN5pb84X0/5GG/qoDiua+j/aciOE6znAwNLkcniU6t5nSfmvSPy5DobbGv1fygvEEiwn
	87qgQPyDCs3VgcZfk+tqDvQSfp50pp27xRZ9CyJr3sxu/naFIqYHPvsl+DKDP8vyU0QtmVJk96X9N
	h+GJFEL3xyLpmg0+c/hPKEoBGU4Z+H9JQdehiIp22cEqfN7urwxXgndaDFuKQPr9w5QdD3GtKrVEP
	6Jyl/d/yBjIJEfSiMJVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1T4f-00EhaW-7c; Wed, 15 Jun 2022 13:28:45 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1T4S-00EhUt-8i; Wed, 15 Jun 2022 13:28:33 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id F25FC1C0BC8; Wed, 15 Jun 2022 15:28:30 +0200 (CEST)
Date: Wed, 15 Jun 2022 15:28:27 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>, Ondrej Jirman <x@xff.cz>,
	Martijn Braam <martijn@brixit.nl>,
	Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
Message-ID: <20220615132827.GB1429@bug>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_062832_507099_A90F4A89 
X-CRM114-Status: GOOD (  11.02  )
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

Hi!

> +	// Per "RK 3399 SARADC", page 8.
> +	adc-keys {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1600000>;
> +		poll-interval = <100>;
> +
> +		button-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			press-threshold-microvolt = <100000>;
> +		};
> +
> +		button-down {
> +			label = "Volume Down";
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			press-threshold-microvolt = <300000>;
> +		};
> +	};

Wow. Quite a hack...


> +	// Per "RK3399 GPIO", page 11.
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&red_led_pin &green_led_pin &blue_led_pin>;


> + led-standby { + color = <LED_COLOR_ID_RED>; + default-state = "off"; + function = 

I wish LED was connected to PWM, not to simple GPIO...

Plus, it is really one RGB LED, right? It should be handled as such.

Best regards,
								Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
