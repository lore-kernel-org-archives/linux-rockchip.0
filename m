Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F98606A322
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 13:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KJFcDwv6;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=leGq8Tf0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Pv3QTmRWArinLESYPN8yRxE5S4HmzQlRoxI58NEfjLk=; b=KJFcDwv67QJtjjzfDDc4ObgUOg
	fTea1CVBJKIYzW6nCZ0RihA9jdTMF8wmOXKaFygZfiMPJVCwYAzKfke5t5ciGtwHNVoQ79DkROz8g
	N0ZDZBVbk4NVh9DzvQjKi+x8Sc5auALx5PYocmaQ+TiwA42Ppayt48oGalK1+0i2z6LQNe9k3YvUW
	P0ScqyIZAuDVdrX8Pmza1qtOXXRkTVRHPfu2m7TnG3frDcWfDNkHXSurEe3KU+MoHDpYiBvuuXJcP
	UeY5hvEXiWhnoscOuhWHTXr9ntKRfeg+/C9AVRR7EceSUUy3+iNQs9UTqipL6dNBE4ucpJc5chQh/
	dJGltdtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMQ46-00000009KW7-2b2t;
	Thu, 29 Oct 2026 13:21:10 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMQ44-00000009KV9-38kb
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 13:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Lp2fs7ZbOlVXklezlvUcMAOoy4OS8c7SUAwJ7l9dS4U=; b=leGq8Tf09kTUwEEAi91ZrEPch7
	ZGhH+SiiG9cZe30J9nFJiyUGEnHOhLDZiKuXiGXNCsGhCaWcU4hS9NvsmfXu0xmaLUWnU40ivacZ8
	zwoV3cId8aLBbJw3aqyTZ7gMKBUne4RLvf29dC74W0MJi8VOITEiXubvKfgG+EXmu9Bw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xMQ3s-00DFRE-7P; Thu, 29 Oct 2026 14:20:56 +0100
Date: Thu, 29 Oct 2026 14:20:56 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net v2] net: pcs: xpcs: make supported_interfaces
 authoritative
Message-ID: <20fb8d2d-a20e-472b-8f32-3fe2fec9a425@lunn.ch>
References: <20261029102728.3189359-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261029102728.3189359-2-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_062108_790568_DE1CCF30 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Oct 29, 2026 at 06:27:29PM +0800, Coia Prant wrote:
> pcs.supported_interfaces is the mask of interfaces a given xpcs
> instance actually supports. The compat table describes what the
> Synopsys IP can do in general, but a specific integration may support
> a different subset: the RK3568 XPCS supports 1000BASE-X, SGMII and
> QSGMII in hardware, but does not implement the C73 10G or 2500BASE-X
> modes that the Synopsys compat table advertises.
> 
> The Rockchip glue currently advertises only SGMII, since that is what
> the RK3568 MAC side supports today. 1000BASE-X and QSGMII can be added
> later when the MAC side gains support.
> 
> Without narrowing the mask, stmmac_phylink_setup() merges the PCS
> supported_interfaces into the MAC mask with phy_interface_or(), so the
> XPCS would contribute 1000BASE-X, 2500BASE-X, USXGMII and the 10G/25G
> modes to the combined set. The MAC side forces the phy modes and
> phylink start passes the mode explicitly, so this does not currently
> make phylink switch to an unsupported mode, but the combined mask still
> advertises interfaces the SoC cannot use.

I don't know this code too well, but something does not feel right
here. It might be due to the way stmmac does PCS with phylink, which
is often considered broken.

What i would expect to happen is that each piece of hardware indicates
what it can do, and then phylink finds the common modes.

So maybe stmmac_phylink_setup() is wrong when it ORs them together?

Maybe look at other MAC drivers using pcs and phylink.

      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
