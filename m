Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3AB606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 20:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MJqnhq2T;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=tb3t/Bu/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x0BlnnDcaw0gvaHxEIpdNtJcPoZKB5uwY2WY2wTRD80=; b=MJqnhq2TliFnxMb5agXQymnSA1
	NUY+3wgxKsTeMNvhL43/KMBjEGAz1X4dtFVHDomqqpYSEZUyiGPaMJUIV7r/eqzfKZuR1H+7Dyb9F
	3egcwfkr+uZa55J64UAbznME+TKk58F3fwj8mOe6viPHZwNA+/57CZwGpjnARDjLFR27uGVumfPXY
	+I/xjbbruQCi8RClzZp2b5XvXRYSQMorpyPEnUPE4yplCADqHcuu8sa7JKxDSRHD1FuEfCFT3S6TR
	GvXw3kOHc+qEOQ8lAlgglc4pfDYqj3O07a9cDjKbCZFqHuZPsFdK0hm5SpahxzunApm93LW9DF4JM
	HenEZDeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMtSs-0000000CZVk-0mwV;
	Fri, 30 Oct 2026 20:44:42 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMtSo-0000000CZTc-2McA
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 20:44:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C99F74E413A4;
	Fri, 30 Oct 2026 20:44:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7D523603C2;
	Fri, 30 Oct 2026 20:44:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 47E7E10329108;
	Fri, 30 Oct 2026 21:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1793393070; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=B733tl/iJgtUaIicfu4vyW4w+2Xm7tgzANdFaqcSk34=;
	b=tb3t/Bu/M5Y3a2J2moGNqoLGux7zYhIpongIoJi4Q1715/qm4t4PqfjDaJddm8DbUeRBPR
	oWg3VQDDZUgwK7BKYPNv3ToM0PhsQGYpcfKWLRhRB/HCO2alCA6PcB9Fj4DuDDBPH84hkL
	YqhxrhXO/zEyaIQLBbCI/VKGRrw4nLOD5pUTNKQMH0H70z1CzQnHLW6MOgcIZhbL8yQtpH
	EHXopXMf69F3vS9QyXbLnY+o/oV5kQj5dwzux0y5A4+BPnY7WBYB4bjgmHAEHFiINvOYyt
	jvh4i8KC/89PneQNc1P65+5Hxla0W6r9wDqE/mM1J4j2gKoewRit10c5Oc7+xg==
Message-ID: <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
Date: Fri, 30 Oct 2026 21:44:22 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
To: Coia Prant <coiaprant@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261029094916.3127193-2-coiaprant@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20261029094916.3127193-2-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_134438_751424_809BB531 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Coia,

On 10/29/26 10:49, Coia Prant wrote:
> The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII, but the RK3568
> GMAC only implements SGMII, so only SGMII is advertised in
> supported_interfaces.
> 
> The generic xpcs core fills the mask from the compat table, which
> includes 1000BASE-X, QSGMII and the higher-speed modes. Clearing it and
> setting only SGMII keeps phylink from validating interfaces that are
> not usable here.
> 
> 1000BASE-X and QSGMII can be enabled later when a board actually wires
> them up.

So the PCS supports them, but not the MAC ? The correct fix for that is
likely in the MAC then.

There's nothing board-specific when it comes to supporting 1000BaseX if you
already support SGMII, 2500BaseX may work (it's 1000BaseX but 2.5x faster).

Ii may just be that these modes aren't implemented in the MAC, so we should
keep them enabled at the PCS level.

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
