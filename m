Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9F3606A330
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 02:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Oh8IW7UR;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=FYu2Qtdz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2wehIOKMeZniFzs3jTLoTpZIx9WS9yjPiJwxdLGd7D8=; b=Oh8IW7URwIlOGDQAqF5LBzhbq5
	MD8IRYxMwctSTYD4oAmrC1ATCVETQKmYwlS7WJmfrvfHUp4x8Rgjdiy4DjT9huJAO5b5uZX6k85bx
	Fqq16fytqqlLPMaaiW848WbS6/lZrXcVBXRPt5g6/ugg+SVs+Uxz3ZidvaR75UTxq3bJj3MdmYaV3
	yrUS5OltZw+mFqrfysz1Yo+EPKPAzhCjNWfR2MAP4nHsAaH3X6coNuoEAHf99PTp4VMfGTGnYoiD+
	defjCrUvrMtkIj8eNG6EK724U3KMKGeU3eXc3vzUKBbB+kOUPKcCRp0IaPN5n3ybza5Fn4j2karPi
	WO7IVQYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO4g9-00000000uAA-21sz;
	Tue, 03 Nov 2026 02:55:17 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO4g6-00000000u9L-1cT0
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 02:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=M4IsPAVHTXvNhsayZrPE1EGmAc2003EPnpM+czZUcl4=; b=FYu2QtdzFEaA+ec/ojb84UyEp+
	WS6yJQohOv0GfKGDl/6dDbX6yHLTk3aSt0BJAL6gfK0O9wg6uV4bTbPosNceYft1tzzDHPJIzGLcr
	ZMjCKcYKDjBryxvFFUAR4AnxVZMHoHNXsdA3HoNKWHps+fdTqtPfffwWXqvJC+gVMkmM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xO4fp-00DwWH-71; Tue, 03 Nov 2026 03:54:57 +0100
Date: Tue, 3 Nov 2026 03:54:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
Message-ID: <48cb8a9d-622f-497c-a13e-bc679c764ce0@lunn.ch>
References: <20261029094916.3127193-2-coiaprant@gmail.com>
 <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
 <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_185514_429602_22E9C2E6 
X-CRM114-Status: GOOD (  14.85  )
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

> Hi Maxime,
> 
> You're right that for modes the PCS does implement, the limit belongs
> on the MAC side. The complication is that the compat table describes
> the whole Synopsys IP set, while a given XPCS instance only implements
> a subset of it. That is a historical design issue in pcs-xpcs: the
> table mixes C73, C37, 2500BASE-X and 10GBASE-X entries, but different
> integrations implement different subsets.
> 
> On RK3568 the XPCS instance is wired up for the C37 SGMII path only.
> 1000BASE-X is part of the same C37 core, but I don't have a PHY to test
> it against. QSGMII is not implemented in this core. 2500BASE-X and
> 10GBASE-X are separate modes the shared table carries, and neither is
> implemented on this SoC. C73 is not wired up either.
> 
> Trimming the mask is not limiting the PCS, it is cutting the shared
> table down to what this instance actually implements. A
> platform-specific glue is the right place to do that.

Are there any registers which describe how the PCS was configured at
syntheses time?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
