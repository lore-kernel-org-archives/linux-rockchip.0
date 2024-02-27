Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0C7C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 21:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5O/s5v2/6zjVNGo5pP1cZVpiExP9M8VUkh1o8/UvyBY=; b=AnHq9jDAzjRMbK
	ZEpLMowP7YLoA+Ks61CEgACKVuEjHZ18apXfI1fGi46mm9Ir2xPAt4lHT8ZLz1b03TqBJ1kcCJnKg
	Q/Sxni1mUqR/7iEABzXFpRjppnrdhTxBXmIeI+9d1lyzrXR8am3wGJp8fmr+NyiAwl0kuEbXSH4x7
	6lda/SGOrPs1DDIuGTAo9a/a/cxKMgOEQ/CaZjx785x3mhcaqcL4H5xl7JKLP7B7THX5Y/8108lCL
	mRbz6IXJlwTlD7FUsYaMdvMVpLLKdB/PymRjTCHvKCqSmeLd7pevyHKEUQaizEB0a3/wXyRPi9DYJ
	pJ+Vwsl4HdlnNpZKB1wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4ZD-00000006q6w-0qBi;
	Tue, 27 Feb 2024 21:00:47 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4Z9-00000006q4o-39h0;
	Tue, 27 Feb 2024 21:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Rk9Vo0mBfgVKHqc4fUhHA256f+oW4rOARrZgd+9glVE=; b=B2NMJlbvJ6T41+c4sj3UExauga
	5MQf7AvV1VrT99Hii+DiDMtxwseRhjT5BjxfMH/knu4QYblQlN7hJMep9Apz4Nt6lQBHp7pL2bRHr
	ajp3Ep7YdsbmPOaL5ZNr3UCxEai31hBYSQH/oGCq3gV6D5XvpgBXZeZC7QQHMmAKp9ew=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rf4ZE-008t9w-TL; Tue, 27 Feb 2024 22:00:48 +0100
Date: Tue, 27 Feb 2024 22:00:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
Message-ID: <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_130043_819694_DED3FF16 
X-CRM114-Status: UNSURE (   7.97  )
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
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy0>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +	rx_delay = <0x2f>;
> +	tx_delay = <0x3c>;

Have you tried phy-mode = "rgmii-id"; and not have these two _delay
settings?

In general, we try to have the PHY do the delay, not the MAC, so that
all devices work the same.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
