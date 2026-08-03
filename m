Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BF7FC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 13:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U19pUR5c7XGCUNrv07uyhiYTiNtKUY7IP7Z7j73H4M8=; b=Ir3foycnPKg54j
	IwaJAv8Pk4ZiReKBJc9KulQDboATWG7s9HiGXeWh/cl39gP6yyBf8V/FsENF0+sE8Au7A06FYlQnQ
	cZ4e8fOlvCSZbmejD4WYg6g8uu9jMOFpKxAEdsnR4cWwEzfxAmnNC3NLUxs+Fy2LbU2vP44+THNyG
	bhE8ssOGDXVJ9MsAEcm73PPYGWwo5IMckeev8/YYEhV4c6fUemGYBuTQj7LUDgkCktWV5prgUg02e
	LjXMxOVfuRrGuiCLvaIMr1KBXVVcCj7EegaB/MD2CcMNBBWpxJFNNnlny5os0UDKdxmuNEX6kmHCj
	dRW9GOLHNk3RhGJ/VzJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtAl-0000000HHPJ-2RZ5;
	Mon, 03 Aug 2026 13:57:43 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtAi-0000000HHOY-3f3N;
	Mon, 03 Aug 2026 13:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=jWLoWn7qIYHBGm7cM6GD67txwG0TCsUk3yorRsLCI5A=; b=IbtjU+qwFlfMTj4xfnlEm9TsFv
	uXSXRaQfrC/wfjDQHtkVt0e5Lnaa2LQW/9Xd1HspaWjIXcKabDFmUONZgYPczRaemhmWbwVCN72Fk
	xi75AjxT+ohCdHxnh4tvbxm/c1doFzINfNyj0OJUcehrflcqCKKNU6uRZkoX/2ECAzmM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wqtAI-00Fje7-QE; Mon, 03 Aug 2026 15:57:14 +0200
Date: Mon, 3 Aug 2026 15:57:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andre Przywara <andre.przywara@arm.com>
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Richard Genoud <richard.genoud@bootlin.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, mfd@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/21] net: phy: add X-Powers AC200/AC300 EPHY support
Message-ID: <f4697868-4ed3-4980-8c20-6262122dfee5@lunn.ch>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <d2a1f26b-a97f-4cd9-993c-5dbca530abdc@lunn.ch>
 <ae236186-e984-4fa0-ac70-f321068576f1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae236186-e984-4fa0-ac70-f321068576f1@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_065740_909411_A50EF972 
X-CRM114-Status: GOOD (  14.12  )
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

On Mon, Aug 03, 2026 at 03:54:26PM +0200, Andre Przywara wrote:
> Hi Andrew,
> 
> On 8/3/26 15:52, Andrew Lunn wrote:
> > On Sun, Aug 02, 2026 at 11:14:10PM -0600, James Hilliard wrote:
> > > The Allwinner H616/H618 secondary EMAC is commonly connected to a Fast
> > > Ethernet PHY in an X-Powers AC200 or AC300 companion package.
> > 
> > Is there an open data sheet for these devices?
> 
> Find the datasheets at the end of this Wiki page:
> https://linux-sunxi.org/AC200

Thanks.

It would be useful to add that to patch 0/X.

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
