Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D000BC61D85
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 19:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0A3YkLabSn+xJiyuktSow1Tnf7qkPXHjFvYDIxHPZVQ=; b=sF66ekQQE5Os9H
	zwb13DxCfNrs9UrddJQhFd2PxfT0voa7UQtM0w2zVon0Iq0D2SN8txDcVXA3+e1FXuIv78apoxy4V
	ZhPVHqJaaPa8zJ+UfngPruYLl2g9K6zxKAIFY0mndzMg5glltfBvGvTfwXEwWXy+3HOrXmSBjbMc2
	FPewDIehba9t7dc+QIJ5XUI1NFHy6pY+OkJmrmPqugx4Bv7D/pmDrEtVIaNSx862aPs3OgJgzTIwh
	KLFigsVOfaiNJgMokCJ/pFNCUNDcfU9C6qMbK7kxijccYG1wjKn+LK1jwFH3KO8wolAWD7K2L8MHZ
	+oSNu28jCyuki3ykQLnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6F07-005Z7g-2m;
	Thu, 23 Nov 2023 19:04:35 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6F04-005Z7E-2z;
	Thu, 23 Nov 2023 19:04:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=/SDYqZIXsdOyj0vjbWI2ClkLE18Ka/bdOsdj54i7Dpw=; b=k73At0T74i/QGx6XSEriGiSqoX
	CilR8xNuoSc2MzKB3RIYMR10jhHrPgI7P72TWzf6UC+JcW1g798XIbibFF9pmGYzY4dEp7FAdsllE
	ruQfBOaBDtPtrqQRf7xn1+mCuZrwuHPbqPo5mxFkSBQ8poR9wzcOtGWJ97qwxsCDI6lg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r6Ezp-0011Zk-3s; Thu, 23 Nov 2023 20:04:17 +0100
Date: Thu, 23 Nov 2023 20:04:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH RFC WIP 0/2] net: stmmac: dwmac-rk: add support for PHY
 wake on LAN
Message-ID: <f023fbf0-3669-4617-bb60-77fde3255dc0@lunn.ch>
References: <20231123-dwmac-rk_phy_wol-v1-0-bf4e718081b9@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231123-dwmac-rk_phy_wol-v1-0-bf4e718081b9@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_110432_983922_D835169A 
X-CRM114-Status: GOOD (  14.29  )
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

> Setting the USE_PHY_WOL flag configures the PHY as expected (its driver
> writes the MAC address and the interrupt configuration into the PHY
> registers) and an interrupt is generated with every magic packet,
> but only during normal operation i.e. there is no interrupt generation
> in suspend-to-RAM.

Do you have a logic analyser connected? Can you see if the PHY is
toggling its output pin? We then know if its a PHY problem, or a SoC
problem.

> A (probably naive) wakeup-source property in the dt node does not help.
> So now I am trying to find out why the PHY does not react in suspend and
> why its interrupt is ignored in freeze mode, but I might be overlooking
> some other important point to consider.

What is the clock setup? Sometimes the MAC gives a clock to the
PHY. Sometimes the PHY gives a lock to the MAC. If its MAC->PHY, and
this clock is getting turned off, that might cause a problem.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
