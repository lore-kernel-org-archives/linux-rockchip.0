Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEEF606A329
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 14:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1pbajsUg;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=VQp/2GAu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xdJG+Y5xrXz6bhelSUFa0MekuKDVfNTrD9vU3R3+SkY=; b=1pbajsUgCpC9FaSa16GFAL0LgS
	qgh09Qt1hG/ah8NmQgjzDXb/d6eZp5jOT9E9AUlMzW2Sa25xvM+eh9J3wsb1rTkJEJj3dniGaOGRV
	i1tVlBIub4NmXgcvlI9e9bPKXWd39kgIt1Vs75hXVU4IRx9QXJchunlt9R52VcdYS9wkunNByO3Wi
	gjtjYgbwB09U0ifDifMl7wlwUVUf16+IB9NC6lNW1qykQAhAgCQiSFs3g/mTRYb2ejf9dkBcLLHFy
	k/HHjgRbZebHwnbeNiUJKrJZR259Oflfmx+3oFe/UWfgWdQdjfJ84WMHOHQDlLH4Y9SKHASLLLq5x
	/RAWY5Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTJnS-000000062pL-2ctL;
	Tue, 17 Nov 2026 14:04:30 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTJnQ-000000062oi-0JnZ;
	Tue, 17 Nov 2026 14:04:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=9ammhtwy9K590KTiGuFRN9TiLwSY3ErK147SvQ2LZpc=; b=VQp/2GAugCh6U8BjJBR2NURYTx
	4wBg5YZIZUjRVRmHsptsQ+NJ5DwvHgOmov8GesBSEqbjAzFsfCODuI0UrioOSMU5J3PY/B0t5+nbB
	JD1/lKnuopmhJN1FIGlGWWR5xShBob2ACFCt8TlzzJVpyQLQviO1rUVqOQJOD46I9yqs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xTJn5-00HAGJ-QD; Tue, 17 Nov 2026 15:04:07 +0100
Date: Tue, 17 Nov 2026 15:04:07 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	Paolo Abeni <pabeni@redhat.com>,
	Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Fabio Baltieri <fabio.baltieri@gmail.com>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v4 1/2] net: phy: move
 DECLARE_PHY_INTERFACE_MASK_ZERO to core
Message-ID: <e3c5f034-1b05-4fcf-bbe1-8b473a8d2a0f@lunn.ch>
References: <20261110160554.918652-1-coiaprant@gmail.com>
 <20261110160554.918652-2-coiaprant@gmail.com>
 <20261116183012.11a7ba72@kernel.org>
 <CALj3r0gTuJEDd==WzAQ+cK3Og-2zMqvmBrhrd2ARbKJctG5ZAQ@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gTuJEDd==WzAQ+cK3Og-2zMqvmBrhrd2ARbKJctG5ZAQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_060428_116794_2C119F01 
X-CRM114-Status: GOOD (  10.07  )
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

> I understand your concern that hiding the init inside the macro seems
> subjective. Since you mentioned an Andrew ack is needed, and he is the
> net PHY maintainer (who also looks after the WX driver),

I don't look after the WX driver. I comment on it, as i comment on
lots of drivers.

> If Andrew also feels this doesn't belong in the core, I will drop the
> macro entirely and switch to explicit manual initialization using
> phy_interface_zero() in both drivers.

Using phy_interface_zero() is what current code does. I would also say
using explicate = {0, } is O.K, but i would not hide it in the macro.

      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
