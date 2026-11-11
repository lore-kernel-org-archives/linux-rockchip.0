Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90849606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 23:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HNB4dorW;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=Pz3rDZ4L
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2nsxOpoewPeo3KYeZ/IC9QL0mifrBcSa/toxiA3ALnw=; b=HNB4dorWSV50zuQuMPxFzzMOCs
	9n5JNS+aBLpx+TRjoFjqAdOrlr8SrYnIgviRnrEaJaw0fGHT1GBHkyBwhfwAShWo0yRyk97PGD/Gj
	nuP1jqYCjZHnD/K+ID/opfTPyflx9K1gl+QF+GpyAwUa3sGl7pIaVW+ugXMLeaNoasY42u+l0KggK
	6bOqbFGCdXhdaEjlYafUlsY89dGMJxVNnSpv/df5nOxHiJD3WDD+H/N7J5Yb0E0glu79Lctjin8dE
	ffieYJxX4yFSbI+WyB+olMQOGcs8Y3Qe00Nz4p1TqZzP/GePa7dPLNNu0GQg48s2c1D2FXWjNz2ji
	NZKPOJ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIAK-00000008CDy-0HTW;
	Wed, 11 Nov 2026 23:55:44 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIAG-00000008CDP-2nEC;
	Wed, 11 Nov 2026 23:55:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794441320; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=ecw07BGZKig+hHYaxEa6FJ8SrhLr1BXunrg4zJDI5UR4ueQeMS3hIiKop851+dcvaLOreMwFczW1ybNocDfrAbgGa0UppQebo/2HgTGQQNjKdFaODnr5ajuqd1r+mPjBZKM2EHCOk9R8HKx4YrjozeMD46oeIkjKzF8UU39YhPI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1794441320; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UhreHyS4L+Nan5+fJHgUbgRcOVCYQWIlXqVmK2Kq9Ys=; 
	b=SMiDIpyirLHiON/tNSj/gCbV0b2xLaLKx7gOwVBNJl9tc2cfzPhccVLuzPDc2tGCrWCBfPD03+wd1BK4/Hc5J2/vr3qIMuq+/IItL1QN084q75cuTnCgwbrErMXYJv3aJeoXHBZBGFeQnM0p7EfP9SoO8EqfFLPPxELeaoXGhnE=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=Pz3rDZ4LDKxJLtz/utET9e+wrgAen8mWzh8hsmY+JOwgy/ocPywIvgE7ahx534du8V8ZPrJaJWH71LuZD4HSn5p8ByhucFTbBm+8oyHsTEYZS8awUG7Nyc8MaFdl6bgeHzAJdvz46iDNcEg7aQySHRwDopewYoizdzUCMohabR8=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=UhreHyS4L+Nan5+fJHgUbgRcOVCYQWIlXqVmK2Kq9Ys=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1794441318160361.78507131001663;
	Thu, 12 Nov 2026 00:55:18 +0100 (CET)
Date: Thu, 12 Nov 2026 01:55:16 +0200
From: Igor Velkov <iav@iav.lv>
To: netdev-bot+sinfo@kernel.org
Cc: Igor Velkov <iav@iav.lv>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Lukas Wunner <lukas@wunner.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Wei Fang <wei.fang@nxp.com>,
 Niklas =?utf-8?q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Paul Barker <paul@pbarker.dev>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Doug Berger <opendmb@gmail.com>,
 Thangaraj Samynathan <Thangaraj.S@microchip.com>,
 Shenwei Wang <shenwei.wang@nxp.com>,
 Haoning Cheng <Haoning.CHENG@cn.bosch.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net v5 0/4] net: phy: postpone PHY interrupts during sleep
 with MAC-managed PM
In-Reply-To: <179444109487.2168702.10631162542543162252@kernel.org>
References: <20261111-b4-phylib-mac-pm-irq-v3-v5-0-bbfdb5afb7d3@iav.lv>
 <179444109487.2168702.10631162542543162252@kernel.org>
Message-ID: <20261112-phylib-v5-sinfo-reply-1@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_155540_976748_23A93222 
X-CRM114-Status: UNSURE (   6.80  )
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

> - Whether the issue was actually triggered, or is only theoretical

Patch 4 fixes a hang seen on Helios64 (dwmac-rk, RTL8211F): in s2idle
without WoL the board hung or reset 10 of 10 times without the series.
The PHY IRQ thread stalls its CPU on an MDIO read while the GMAC clocks
are off, so that CPU never answers the NMI:

  watchdog: CPU0: Watchdog detected hard LOCKUP on cpu 1
  After 10 seconds, these CPUS still haven't responded to the NMI: 1

Patches 1-3 fix defects found by code inspection and Sashiko review;
they were not triggered.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
