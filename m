Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45003CCA476
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 15:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNNLDRsARKTWdBJfEOJNscUT1TL1CFl6uDFGsYZsHmY=; b=qGFpACj/eim0Hf
	8a/Vu5moJWHxO4atfWpKBi/T5ZpVbGJHJTowiYzIAqaCK7ozmSucjJFkhy7u2XfR3eYc0FHRuQNS1
	3DNv1poLsh1TJqZNKR8RNt9yklXst1YMsvpBw908V+GZjxES2Xy+YxK5MsfrztEk7Cc8dp8udyzcy
	WuhKU91UBomacev4qUROcFpCJ87UXvwC686HEyXWhgR1gyE6DkINxIplt/6fLcha5CJSEa4z8cQ1l
	gTWV8jtZag+3Mr12wmsRtCg243ptcDnM7lOqZKqTRUyThwHhcwUKConYJ8GTtXSmqCahudoeykuC6
	wXtpeTR7TVRp1cZuaMLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nUq-00000000K1B-2KVR;
	Mon, 06 Oct 2025 15:51:32 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nUn-00000000Jzf-1ne6;
	Mon, 06 Oct 2025 15:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Wdd5c/PHXgFX18ZoE3M5BpB+K9x9piTq/ykZtbdV/vs=; b=0cKSouln3fYahi+dyaR8+Yz9uV
	CXgXVf4HWqLJUlmoB648heg2O1fZ8rgmGn/F1ne3hILrCyD+TNQDDxzvVj4iO2hZRTVllVKlo1KMr
	aL+Zu3WYEcwCWPuQFBCDH4LpLnis/cxt9Ouv1iFnXC3unxAxAN+cMED+PYx2faXsGgFA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v5nUZ-00AIzL-PJ; Mon, 06 Oct 2025 17:51:15 +0200
Date: Mon, 6 Oct 2025 17:51:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Liangbin Lian <jjm2473@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Message-ID: <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-4-jjm2473@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250929065714.27741-4-jjm2473@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_085129_464134_BF344A9E 
X-CRM114-Status: UNSURE (   9.96  )
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

> +&gmac0 {
> +	phy-mode = "rgmii";

Did i really miss this patch series in its earlier version, or did you
ignore me?

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

> +	tx_delay = <0x3c>;
> +	rx_delay = <0x2f>;

Please change it to rgmii-id, and smaller tx/rx_delay values. Or show
us the schematics which clearly show extra long clock lines.

> +/* Micro SD card slot is not mounted */
> +&sdmmc0 {
> +	max-frequency = <150000000>;
> +	no-sdio;
> +	no-mmc;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	vmmc-supply = <&vcc3v3_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "disabled";
> +};
> +
> +/* Wifi module is not mounted */
> +&sdmmc2 {

What do you mean by "not mounted"?

Often you would say "not populated", to indicate the PCB has all the
tracks in place, but the chip has simply not been soldered in place.

Or is there a connector here, and nothing plugged into the connector?

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
