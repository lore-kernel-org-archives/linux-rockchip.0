Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C2FCD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 15:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJp/JJyZTGWEZRucSohZ273fP2O6llUHHQOFII2r2JE=; b=NLoBsiv6k3Fiur
	kzWIu6PGaAekQd80ajAR7uJvjmXG5tzpB2jCfjZ/GnsvQeETF8iH0ebLQsC5yYWW0keGJdOh8SmbN
	oJfpsFkf5zD7UaMcVofPqF9Rm9mq9ZpqMm1SMlOeGE0aJHdE6KOe4dfDUTOqo6byBGWaO93Jbs4H5
	ruwueLjYQ4eCDnGa1PhVt6ieRUyqX4xZyJ1wARC80AyyPOR11GlObF1HbvzUe27irXj3Ei/we1/My
	9NuSTfBbNdYERop0PGj4a+e0rYIlKTNu1Tu0S4/stm38IhX4x5etmjPkNmoxR5Ngoo6poEhgrU84C
	KfaLNAVtguygsoSapHBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsOju-00000003B5i-1iKm;
	Thu, 04 Apr 2024 15:10:54 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsOjr-00000003B3w-0yhB;
	Thu, 04 Apr 2024 15:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=s98YOMLip/viIAxMH0MZuJz4Cxd3gdWcic10eltssBY=; b=ILKd5cbzcuFB5csUzEM688wtcZ
	gM85mlwHCTKiS1EtgUIeftyAozV/j2FYv6T0fDkWvjjMNrtiGCg6Yy0YEPZw9LnCX/LRaLAynjzDU
	ogZEG/XF4yVRPzx9pTZ0o5AhfYNSpNTAofzdWEyopqvGCOKD1cpfm2eDcYK6fwwBv2F8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rsOjh-00CC5o-Ue; Thu, 04 Apr 2024 17:10:41 +0200
Date: Thu, 4 Apr 2024 17:10:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Message-ID: <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_081051_324665_093B8772 
X-CRM114-Status: UNSURE (   9.06  )
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

> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii";
> +	clock_in_out = "output";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_clkinout
> +		     &gmac1m1_rgmii_bus>;
> +	status = "okay";
> +	tx_delay = <0x30>;
> +	rx_delay = <0x10>;
> +};

There was a discussion about phy-mode = "rgmii"; and these
tx/rx_delays last month. Please could you go read that discussion and
them make use of rgmii-id, and change the delays.

Also, where did you copy this from? If possible, it would be good to
fix the example everybody copies into new DT blobs.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
