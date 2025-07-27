Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80B2C87FCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 22:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxGASPwDV/yrGfGzaWoUt6IR8GLa4SKG63U3N+K8qj0=; b=xFGi6a4cwyX9/4
	dNku9uLxrrNCWVNEkNcTB7oYfIFE4ipAS+rqC5CnIpUs/5tl17472PTecx92+2pmkgRvXy0ACsUKd
	SQFFswLH3+VGYgdF9iLQhoFuoccLTcmSJVRJB2u40rN8KB7oG4hb6/Ws5hJvokZxswt8Np56Mqi6a
	Y3WBMnBX19WY9O9ViZjy9uSJ9yBuFo0jxD0eoJzAErWMAcH2ITYW14TxstEmHs9ZvKuORNXGd3GdG
	gX7aqfH//Rl01/z61jY2bzdNiQ8/DJZLPQXHkfaRIG0dyzYYJeAPVPrhbV/gS4NVV5d46fLgIQ4B/
	xkQxF81lXpgHmeFpHcTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug9ZN-0000000DHxN-2TIf;
	Sun, 27 Jul 2025 22:10:13 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug9ZK-0000000DHwq-21HH;
	Sun, 27 Jul 2025 22:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=t/jnNvXwMwP/wlxBr4uBLC+uY9MAFOThnol22yK/3c8=; b=a3JWWBbg9YFowWswUBsk6pUvX3
	Rh4dPuNeU9H5G40l+UPMxX00OBxVa3l9v4CiBzUGLb93SYCbfPUecKsarml8MMQT9W7QZxzC+KgCv
	Ab9aWaBJCc8YLWUEXDhdfAIQuMwCNpV+U7Q/RvZ+q52cuWMKzmOFh9HsSZAG1JAUGlwk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1ug9Yw-0031rJ-Aq; Mon, 28 Jul 2025 00:09:46 +0200
Date: Mon, 28 Jul 2025 00:09:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 2/3] net: dsa: realtek: Add support for use of
 an optional mdio node
Message-ID: <9702f3da-f755-4392-bf2b-28814ee0a8c7@lunn.ch>
References: <20250727180305.381483-1-jonas@kwiboo.se>
 <20250727180305.381483-3-jonas@kwiboo.se>
 <2504b605-24e7-4573-bec0-78f55688a482@lunn.ch>
 <badef015-22ff-4232-a4d0-80d2034113ca@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <badef015-22ff-4232-a4d0-80d2034113ca@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_151010_523836_CCA8C867 
X-CRM114-Status: GOOD (  14.65  )
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

> Something like above does not seem to work, I get following:
> 
>   mdio_bus stmmac-0: MDIO device at address 0 is missing.
>   mdio_bus stmmac-0: MDIO device at address 1 is missing.
>   mdio_bus stmmac-0: MDIO device at address 2 is missing.
>   mdio_bus stmmac-0: MDIO device at address 3 is missing.

O.K, So i was wrong.

> And without an explicit 'mdio' child node the driver currently fails to
> load and the switch is never registered:
> 
>   rtl8365mb-mdio stmmac-0:1d: found an RTL8367RB-VB switch
>   rtl8365mb-mdio stmmac-0:1d: no MDIO bus node
>   rtl8365mb-mdio stmmac-0:1d: could not set up MDIO bus
>   rtl8365mb-mdio stmmac-0:1d: error -ENODEV: unable to register switch

So, not having an MDIO node was a long time ago seen as a short cut
for when there was a clear 1:1 mapping between port number and PHY bus
address. It still works, but it is somewhat deprecated. It also seems
like it is become more normal to need additional properties, like what
interrupt the PHY is using, the LEDs it has, etc.

> 
> With a 'mdio' child node 'make CHECK_DTBS=y' report something like:
> 
>   rockchip/rk3528-radxa-e24c.dtb: ethernet-switch@1d (realtek,rtl8365mb): mdio: False schema does not allow { [snip] }
>         from schema $id: http://devicetree.org/schemas/net/dsa/realtek.yaml#
> 
> So something should probably be changed, the driver, dt-bindings or
> possible both.

I think you should allow an MDIO node in DT. This is the only DSA
driver that i know of which does not allow it.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
