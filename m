Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A66C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeZcu5mcu6+W4/bsBnfkTubPXdsPi8MKJ9ax4ZhVPi0=; b=Fu3uuMIHImkat8
	YujjiyPgrAYfuqmIIMhWdfD1FKQ2hOWUn+PzvP6sNf0sQA0HeT1GDUHBIYJmmYN6DGxqsKuiaNA+v
	cKFQEIh3DuGcgUjMHUXVyGtn07hFJQYzJZ7UxDzEFJtvj0eqdq/nls9tk/dG61KzyHcltTdt1yFCN
	CSTBdjqMZ/GXvPWHienBti5lkIHDWFgtBHqbXqeyerQARdR1MJ2JCNWs6oKn7YbmdV79LK9LXOw3h
	/oUXp5NbebJM7OnvV2imTunU+Yfm9tDUSF8jNdLg+deSCwvFWesUEs0DB9Kptu2PzZqZ+0z+Aycf8
	3M4CNN3i4OoMxRddB5Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpoj-0000000Fszu-3aUR;
	Tue, 30 Jul 2024 16:35:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpoG-0000000FstX-3vSi;
	Tue, 30 Jul 2024 16:34:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 83769CE111F;
	Tue, 30 Jul 2024 16:34:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B117FC4AF0E;
	Tue, 30 Jul 2024 16:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357285;
	bh=G9ikuJcjOM6lRnDGx2+KjEI9uk3Qo6wAMBrn7JW8/PE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M/dYvO4Rak/GvwbHbP3XBA2GKvEbVfxJ5RPGDOdkIptWPRqt3iXNcrh4/pzOuizhj
	 T/po1HWUoYEFqatwSb4TNjEVkwb16i5vYihnYXumXfzZnsfH/tStBUThLD3OCa2oH/
	 8mv6OI2HBE04g0m5sKGSHGT57781NMXDLaQMVxf2CoejN+TLqq6HETcXUcp5wGmnBs
	 3bZQbn+e8reB6gXe1c6snRkM2dkYJL/T5bPyi3zGMLIuvjRoULxjDaRAnfYq4P9yaq
	 sq5Y/DmiqWiE9PoKLTWh86ZACxEYtc05gt5a3rWf28ReYCkRHabDs5kVQ0JhwWC3mQ
	 uu/l97QrByyXQ==
Date: Tue, 30 Jul 2024 17:34:39 +0100
From: Simon Horman <horms@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	David Jander <david.jander@protonic.nl>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 04/21] can: rockchip_canfd: add driver for
 Rockchip CAN-FD controller
Message-ID: <20240730163439.GA1967603@kernel.org>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-4-fa1250fd6be3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729-rockchip-canfd-v1-4-fa1250fd6be3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_093449_178087_8358DADC 
X-CRM114-Status: GOOD (  15.58  )
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

On Mon, Jul 29, 2024 at 03:05:35PM +0200, Marc Kleine-Budde wrote:
> Add driver for the Rockchip CAN-FD controller.
> 
> The IP core on the rk3568v2 SoC has 12 documented errata. Corrections
> for these errata will be added in the upcoming patches.
> 
> Since several workarounds are required for the TX path, only add the
> base driver that only implements the RX path.
> 
> Although the RX path implements CAN-FD support, it's not activated in
> ctrlmode_supported, as the IP core in the rk3568v2 has problems with
> receiving or sending certain CAN-FD frames.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

...

> +static void rkcanfd_get_berr_counter_raw(struct rkcanfd_priv *priv,
> +					 struct can_berr_counter *bec)
> +{
> +	struct can_berr_counter bec_raw;
> +
> +	bec->rxerr = rkcanfd_read(priv, RKCANFD_REG_RXERRORCNT);
> +	bec->txerr = rkcanfd_read(priv, RKCANFD_REG_TXERRORCNT);
> +	bec_raw = *bec;

nit: bec_raw is assigned but otherwise unused
     although this is addressed in patch 15 of this series.

> +}

...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
