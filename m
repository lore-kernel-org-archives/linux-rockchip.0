Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF056C54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 13:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp/uS1P1zXWcvNZ9JfCkPLxBtV7cT5EqptCBZWeUdWk=; b=u0CumyEWa4K+sN
	03fkmC9m8xvHWS7GIwd8PrRpaFzDmD+ORocmZbOHrTTGiC550154xDG54cX/fM/tntnBFrq2NWSGa
	pb6B41UjgOaxs/rOWDlt1hDBYkW6JUpfX2zrfLvPxuddvo3xbZfgZFaMXpA2qY2Wsa1vEK3KW7+kU
	nIIJ+fgZpPAYxOSPA1Sn20BzQq9saW9D6q5bw1B8tSYyboTTRrdfQbeSRxiLBIa+GwwwLhbk5941v
	fHsYO+k4S0Zqbkr0BBbEDg+jk4wS0MAjsXtWvZErmpucA16I5Cb93OuotF1f5StlS6aWDjMVTtoZp
	zHc1ZaR8qe4OCtYTKJiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIJQ-0000000FRl5-1Lqp;
	Wed, 28 Aug 2024 13:02:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIH0-0000000FR7K-2k46;
	Wed, 28 Aug 2024 12:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FJB8kqxvEm2TG1FvDWYg7p79qtRb7PR5dNg6chIXUPg=; b=WhMkgT+ozZUJARpn4Hnh7CnYbZ
	4zaPyvWd9DHlGFeyyWBp59bS+8rEpDTCJHnE3tUBhUw5m3+MjQPKu9iwje5dz/ZgFFnSuaEq/EsnG
	lbcDPCCEEW6m2s+2IseCD3i5XPcMLB3rHct68y4Q8o4q7ExAGSBUUrpJzue++N7tKWxEbABLuxeip
	QSKbpFOVe41PVRPGKoGP3VmpRTmOQ6qpw0v2tnvsuPeU1YzZIEA2zEDISn4Zw/sIfl7c74ic7X2h4
	sFD9vEAaLhtlXvVf/FUXofXWAeaneyaAqUXzK97J8QJXB/GZ3yEz+/GaLaoX/etV1B/xSmwNpsgw4
	7ZqNPXrw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjIGv-0005Ox-Tl; Wed, 28 Aug 2024 14:59:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Liu <net147@gmail.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Jonathan Liu <net147@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK
 4C+
Date: Wed, 28 Aug 2024 15:00:49 +0200
Message-ID: <2502361.uoxibFcf9D@diego>
In-Reply-To: <20240828074755.1320692-1-net147@gmail.com>
References: <20240828074755.1320692-1-net147@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_055942_731339_77AA26F3 
X-CRM114-Status: GOOD (  11.69  )
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

Hi Jonathan,

Am Mittwoch, 28. August 2024, 09:47:53 CEST schrieb Jonathan Liu:
> This adds the necessary device tree changes to enable analog audio
> output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
> its RK809 audio codec.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>

as it looks like you have one of those boards, could I possibly as you
to take a look at the vdd_cpu_b and vdd_gpu nodes?

I see (and devicetree check reports it too) a pinctrl-0 for the vsel-gpio
without accompanying pinctrl-names.

Could you check if things fail if you either add pinctrl-names or remove
the pinctrl-0 entry?


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
