Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACCF606A31E
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2026 08:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VyXmyMMK;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=KMvX8Nkp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wpllhR8szQ10AeU0Ia0Mpm+4s8jKR8gxKTAbuYDVhFw=; b=VyXmyMMKbOKupa9uYpFQkEad9g
	tIoSlMxaMXVftj2trYz56g5u4Kk7EzIDPJ6hMl+BP2GpvdvyLfOAmBacLI6oQX3V2xNQWF5LI5sI9
	K1vjKJbCCOGWMi/KIctUjMt83k0leap26MTkjxn2I9Q/KMut0m+y3KpN3qdTItDEZQIYOCRLsIwp/
	EDLZEMZrrfPNuK456WoA02tqoMpkaYBSoeIC6Y7/4Cf0FijFMAajzklpQn8eMfkncGUhWGnkllfkZ
	eK65t7SyGTUqeahgWT+oiauUTu6H/8u/mw5adbrCTM6PGEQ4qy4VqdVSHWGMN9JyrTvbRZhP1XiXd
	GjNHNAdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN4Et-0000000D2v9-40Ba;
	Sat, 31 Oct 2026 08:14:59 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN4Er-0000000D2uj-0YAL;
	Sat, 31 Oct 2026 08:14:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793434452; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=Yify8tmgdYSbVopsJlydWtpeI2UXkOOfXuiazwE1AvrvVzXAFnRZj6gTSwZ5cUlnyC4GRDcnZ2iKJF53NHeN+1pDWW/oHjNk6XGJ9BRarminH1Haz/dYyl9rVvtGCUTvdHfMAxcbGVMse9Bm5G+dXjcc+HvMpHI84qEP+stJFMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793434452; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uT6v4Xn0ekRQ/dccyYyJtT8xDye8PelpFDuIVEmaRz0=; 
	b=eDaI+n91ZLzQa3uHrnFlgx3omj5Ba1M6q4Tk9Ai5/y4nl+Wr7TzscOOvcfT6Q/RlKamKhCv1ZlxIs7kn+ZXWVmEDiwgXYNuOXU0FyaX+V53iyFg0b87Ob/4YWHODTBFTqlaP6jkpT+RQ1QycGiimdvo3612WG/HBu+56l9Dq5vQ=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=KMvX8NkpogJBvnAgF++pM8jAAuNhJUUBIYMvuBPLaVSzjLK2Kgbnk4WvjXszmUrbl7SFAU4ytlQjw9UzxncCFIoUOAUjZk0G2xETrbwZe/FkqTpE1pPw1rqbW3wRDTs6Z6AUjil6+wGc4xXUQ8lD1iyASjW4vsTG2v42onGy004=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=uT6v4Xn0ekRQ/dccyYyJtT8xDye8PelpFDuIVEmaRz0=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1793434451622317.1807577626872;
	Sat, 31 Oct 2026 09:14:11 +0100 (CET)
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
 Shenwei Wang <shenwei.wang@nxp.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net v4 0/5] net: phy: postpone PHY interrupts during sleep
 with MAC-managed PM
Date: Sat, 31 Oct 2026 08:13:51 +0000
Message-ID: <179343443172.2895107.13605713175307417010.phylib-v4-sinfo@iav.lv>
In-Reply-To: <179343389984.3286.809839136574794731@kernel.org>
References: <20261031-b4-phylib-mac-pm-irq-v3-v4-0-5ba23b3ff9a4@iav.lv>
 <179343389984.3286.809839136574794731@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_011457_481462_BE82C797 
X-CRM114-Status: UNSURE (   6.53  )
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

Patch 5 fixes a hang seen on Helios64 (dwmac-rk, RTL8211F): in s2idle
without WoL the board hung or reset 10 of 10 times without the series.
The PHY IRQ thread stalls its CPU on an MDIO read while the GMAC clocks
are off, so that CPU never answers the NMI:

  watchdog: CPU0: Watchdog detected hard LOCKUP on cpu 1
  After 10 seconds, these CPUS still haven't responded to the NMI: 1

Patches 1-4 fix defects found by code inspection and Sashiko review;
they were not triggered.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
