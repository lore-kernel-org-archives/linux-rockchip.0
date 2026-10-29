Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1F4606A326
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ylAmFhWw;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=zvTybEo+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=31XkGCMbwCo1hhXsOcfQ5DlAiFl/ZO/OgZnfQb8NY/k=; b=ylAmFhWwYg2bXVLoXw3T1eN/ZB
	03kbD25Iqwvaypk1DM2mxu9XAd0mJKs0vDVNRGHdxNFHTFNTcCKmBN1nSlhOk+TIcFkANJvMRwHHs
	FhHmN2apavpv4qQJKzO53/5zfnCmyFYvBU/snNoWhYmIycwb7+QA74tJVf5yD37Au4SfANHF2PxqU
	psgZBMJk3u7LZyA3lIqjUAOwBLlzOyd/zRL1qgxR+1JcNqyb++gK0t/pYC2a1tJMft9V6dfJ87RzB
	LPuGu1PzCX/zgXQBnBhApsAD2vWVh6/nLR2Y/NfXRcKBhMkk7WlprN7JS/TBldpIYNp/VnD++8aBZ
	c11LpauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMPu6-00000009Hsz-0XZs;
	Thu, 29 Oct 2026 13:10:50 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMPu4-00000009HqY-1LeU
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 13:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=xEX+VUkqLlTdDV/lONb3Jp5n3X29i+nwYbi6eZJH5mk=; b=zvTybEo+UjTGt38a18tRwnzwB6
	DT+YhzzZZEIj0vutoFd5RI6qXLSpj8+uihrnXiC0eJ/NZ8zIYnMtTK/kDCVH4ucYGyfNmyILmQXdU
	lMCwewguiTZQ5TawgNEq3m5vAs+B0KKRhshzrxD12zSzxca2vV7Y/NhM7kChKW+ljhCs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xMPtn-00DFME-83; Thu, 29 Oct 2026 14:10:31 +0100
Date: Thu, 29 Oct 2026 14:10:31 +0100
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
Message-ID: <8cd7eb4a-84ba-487a-b1f2-226d6fa02af0@lunn.ch>
References: <20261029102728.3189359-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261029102728.3189359-2-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_061048_357787_92DC38AA 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
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

> +	/*
> +	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
> +	 */
> +	phy_interface_zero(xpcs->pcs.supported_interfaces);
> +	__set_bit(PHY_INTERFACE_MODE_SGMII, xpcs->pcs.supported_interfaces);

The comment and the code does not really match. Why not set the other
two interface modes as well?

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
