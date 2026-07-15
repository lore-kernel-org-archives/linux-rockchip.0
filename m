Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04528C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 16:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFjuFJDWDx6XP1mNUfB8nlN1Jw5LeAQwd3zk78yaI7s=; b=w3XC4m6/qOOCGm
	HMDqNNnMHcqPIRHdBBmyFB+fYHw017vK9LGZUGRo5D1UbNkuuosu8LhxppIan3iG9spt8yqtihi1F
	QM4mGaCexgJxwsL9ne6jcP8AGdMNM1iIHcsucwccfASgzj/c3tnOFJlRnWmXjiTXCHhAaEBALBAqa
	+y0FX0R78zTTydsOMDCXmHly4K987ApoRowC1OOH4sg7Ybt4AXrfhOn42HimKWJ6sZBFxQApeMC3G
	SOSpBnskUAX8NfiKpuFnZEEelu3GmZwBa3MEelNMQqu1RpN3MzS2Bt5EvRCsGiYzu/rh2o2HPds/+
	QM7OAguQ7P0QmclPYMfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk2K9-0000000FR9l-2muO;
	Wed, 15 Jul 2026 16:19:05 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk2K4-0000000FR7l-1aQi;
	Wed, 15 Jul 2026 16:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=aguL97Ql3yPQNpH1dBfOCcdYj1as7lHHUNdIAvpBQJ0=; b=4BFmktiXrOOH7w5eZ40k+3a2iH
	fAE73NbloJTaVWH2fbAL3pH/q/JtOz9wVwctZYEUf2kMCIVv0V0Cw9v4kmWZBCQAzshTvh1H+Xlxf
	ZTf0y6dcwz5ti6+bVTft2eiQ4h8IrjpPO3h/RfsGHv7r3CuIXNqR4mjJXtKDeRwNtpzw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wk2Js-00CNxG-LM; Wed, 15 Jul 2026 18:18:48 +0200
Date: Wed, 15 Jul 2026 18:18:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org,
	davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
	andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org,
	heiko@sntech.de, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
Message-ID: <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
 <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_091900_426351_24D5345F 
X-CRM114-Status: UNSURE (   7.68  )
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

> This is intentional. The SerDes is attached to the XPCS node because
> on RK3568, a single SerDes serves all four XPCS MII ports in QSGMII
> mode.

This is not the only device supporting QSGMII, and so the issues you
are addressing should be common to many QSGMII implementations.

Please take a step back. What would a generic solution look like?

Can the reference counting be placed into the core somewhere? The
common clock framework allows a clock to be enabled and disabled by
multiple consumers, and the core clock code does the reference
counting, only calling into the clock driver when state change is
actually needed. Maybe the generic PHY core needs something similar?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
