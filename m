Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1396C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 14:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2rcjpNxPqG+T/OlL/ZUZsa+iUHbUZeevZYcbZGH2W4=; b=s8uvuJyOYoOt7m
	4/eXjpJmJ3xaMB3AVlCBdkQWmgXfSCnoH8XZ0hOb5r/9ZZLWy6kBIJSyKT8iZFBj2DCMFlzwBBVLp
	cc7F+esfJq8X9mZEYxI1hVC2cvpCz4AbV+RMruwREOIrQdsFw/4+cW7lvZ4TroRsXVxOZBtb+vHdN
	2GIyfFWUqOmpv+ErSgy61zWwmR5hnWBKpI9+d+Km2wX/qDLCbOfx5OXIRLoSfJm/YSJDBuiIlZgqr
	b2CNJeyO4H2lN4oPnxPqK6lDKMm66vnDthvD4acvTFELCGg0vPeyi2NSoGpNH4ouTL6s45r3aPE0g
	bFaj8U1kwBJnJS/VUbiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgklS-0000000CoZG-1ZsH;
	Mon, 06 Jul 2026 14:57:42 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgklP-0000000CoXp-3IC6;
	Mon, 06 Jul 2026 14:57:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ADaEzG5k+SdavN1eHzHBe+2hNmvFIXHsmoacs5qvmYM=; b=SDjUcqLQVM9+ct2Tl1Dpp6lmbL
	r+rH8J3EJnI1wsdMkIvrWsN6Hd84jsKsX82Di6Dltnfoi44kSgm2E+6LZDs4pui2lepL0ljcUQEbo
	Ul4664ULpjAbaZIUX28xkaPTqUiYo7MtfhFIxPjdRANKyyjAyLVsB8ssBN/viQm9bN1E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wgklE-00B0Wp-Ny; Mon, 06 Jul 2026 16:57:28 +0200
Date: Mon, 6 Jul 2026 16:57:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yanan He <grumpycat921013@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Frank <Frank.Sae@motor-comm.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2 3/5] net: phy: motorcomm: Enable optional clock for
 YT8531
Message-ID: <e73a58e4-f9d2-46ea-8124-730f67936aee@lunn.ch>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
 <20260706-rv1126-alientek-dlrv1126-v2-3-ff3176ca362b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-3-ff3176ca362b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_075739_823585_CC4E5739 
X-CRM114-Status: GOOD (  12.05  )
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

On Mon, Jul 06, 2026 at 05:14:43PM +0800, Yanan He wrote:
> Some boards feed the YT8531 PHY from an SoC-provided external
> reference clock described by the common ethernet-phy "clocks" property.
> 
> Enable the optional PHY clock during probe so boards can model this
> clock as a PHY input instead of keeping the clock alive from the MAC
> driver.
> 
> This is needed on the Alientek DLRV1126, where the PHY reference clock
> is provided by CLK_GMAC_ETHERNET_OUT.
> 
> Signed-off-by: Yanan He <grumpycat921013@gmail.com>

Please separate this out and post to netdev.

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
