Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7942ED116F1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 15:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNUCDPA0RAllpLLQMJjW4KksFeth0D2CJCZ+pn4xM94=; b=H8P/zmJ2+xZuPl
	Yxk4nqw/HmeUJ5cA9ZcV6PGBDpbqPgD4WGIDyMq43XD+pkqJG9lZyw0IJWB+Z+OGN2lkQqrGGLU0T
	TZdO8xiJ4QeR+3bh263DMbjIPHCRhWdBL5lb99u61Wmp5ByQ0Spew6ovckMe+2vlkPycowIMjZuNV
	1RA7gormX0i5od01pxinHsxYXlcTLe0Ao1uT9SAdMSj8ZLD6+tFe1Svg19JZZ9jfuCwZ0wYSiKjcU
	SveY9Y8X0zB74+UG9TVe1CCvoz5QZvKL2pj62RU+alHe9HnnSkXIxv0h1zpTfN7g9mtc2Zjrm4Fbr
	VJo9nqx7qYt2NU+FdV6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ6FU-00000004DtF-3sUV;
	Mon, 01 Dec 2025 15:55:36 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ6FS-00000004Drn-1eDp;
	Mon, 01 Dec 2025 15:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=VTEiKyqnmpUyfKxvjtjoMwds4d2cP+VOremdDYjxN14=; b=MJqNBU9jtl/amP4JSRy7O4++9+
	btazn7HSDXfN6POHrEsydPVxIK8vtRn/pcrN5i/818rW83TX8lk8E4U7PI0sIvcEm+rQzYvw6Mwfm
	eQj6EEWt9c7s0tnSNbBwr7BFCqAFh6VewGz7n7AFmAYjD6dhZGwPGL+J+PVN2UiqT1Vw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vQ6FF-00FaUH-DN; Mon, 01 Dec 2025 16:55:21 +0100
Date: Mon, 1 Dec 2025 16:55:21 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH RFC net-next 00/15] net: stmmac: rk: cleanups galore
Message-ID: <05db9d3e-88fa-42db-8731-b77039c60efa@lunn.ch>
References: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aS2rFBlz1jdwXaS8@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_075534_433421_643B894F 
X-CRM114-Status: GOOD (  14.82  )
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

> One of the interesting things is that this appears to deal with RGMII
> delays at the MAC end of the link, but there's no way to tell phylib
> that's the case. I've not looked deeply into what is going on there,
> but it is surprising that the driver insists that the delays (in
> register values?) are provided, but then ignores them depending on the
> exact RGMII mode selected.

Yes, many Rockchip .dts files use phy-mode = 'rgmii', and then do the
delays in the MAC. I've been pushing back on this for a while now, and
in most cases, it is possible to set the delays to 0, and use
'rgmii-id'.

Unfortunately, the vendor version of the driver comes with a debugfs
interface which puts the PHY into loopback, and then steps through the
different delay values to find the range of values which result in no
packet loss. The vendor documentation then recommends
phy-mode='rgmii', and set the delays to the middle value for this
range. So the vendor is leading developers up the garden path.

These delay values also appear to be magical. There has been at least
one attempt to reverse engineer the values back to ns, but it was not
possible to get consistent results across a collection of boards.

       Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
