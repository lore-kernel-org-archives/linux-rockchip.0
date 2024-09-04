Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2361CD4853
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 16:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRbyOcHe2HwymfBKHUpTuYTbHbPEuvei58E589f3dGk=; b=ZS/oAscpukY9HK
	MMsXQ3hXwME6pE2pZN2vQmjs+GVARMVr0liisaiz4Gv0hzkBoEBBRVDu/83IEFHJdXTv+qc5f/GGP
	4Yd0aQGOAyaDoF99nEZDye7/l2q4EBk/IV6aTrQLnJD5Ghc26cXVJJtZR/DHmY5FuqclX73dCHGEx
	lGl0mpteTqdXnLrGpozPRYi9FOFdJeIlpv8m4VRR3Wtoaebv6jh8TXIrdlZziwtbbuqXMhRtengt8
	6IYmCJr5oHfBtj6mV99qv1vG69gdWmSINxuAfj2U1v9QWglc/igLyg14WhLwWgUsd+HWMMlwVMu0e
	7pDmnPUY56ks2AQVlLMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slt6F-00000005JGK-2omp;
	Wed, 04 Sep 2024 16:43:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slt5H-00000005J7m-3bhy;
	Wed, 04 Sep 2024 16:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sORX5VEgoe509ZQr0SKamAFfSHB60pe6cyvvjB5IGZs=; b=GurltbUt/g0trnYK49OGBqD1RI
	STz36H4cL4V5IouRnNPrCGcVHJHwewfTFwcX+EVl/4fOFJ5SlxOR8/sX5eC5bYaauRQGRHglFo9Op
	4ShSM5z4ku0O7FzwpYrBqXN9st0mk5yGJf3sT5YvJVpYoIvI04UUETbPnNnkR5DV9imQNtVoJ3m3h
	xUx6V9hWgtzaR0O1wirONGoxagQa3RdXhAZm43FQu1reRp3ZtJNLH8GxnGtv9RhF01gnDDMY2ndZa
	iQpm79kW5XUoJdi8adciOrPWrn8PMtXuERXqPOY0Rpwfjs1gwc8drkm/HWqEA3CFlB0MvCAQ8Vjm8
	mUjTGtZg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slt52-0001UH-Nt; Wed, 04 Sep 2024 18:42:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 David Jander <david.jander@protonic.nl>, Simon Horman <horms@kernel.org>,
 linux-can@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 00/20] can: rockchip_canfd: add support for CAN-FD IP
 core found on Rockchip RK3568
Date: Wed, 04 Sep 2024 18:43:52 +0200
Message-ID: <4091366.iTQEcLzFEP@diego>
In-Reply-To: <20240904-imposing-determined-mayfly-ba6402-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <86274585.BzKH3j3Lxt@diego>
 <20240904-imposing-determined-mayfly-ba6402-mkl@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_094219_937665_C5B9AF74 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 4. September 2024, 17:10:08 CEST schrieb Marc Kleine-Budde:
> On 04.09.2024 10:55:21, Heiko St=FCbner wrote:
> [...]
> > How/when are you planning on applying stuff?
> > =

> > I.e. if you're going to apply things still for 6.12, you could simply t=
ake
> > the whole series if the dts patches still apply to your tree ;-)
> =

> The DTS changes should not go via any driver subsystem upstream, so
> here's a dedicated PR:
> =

> https://patch.msgid.link/20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutro=
nix.de

I wasn't on Cc for the pull-request so I'll probably not get a notification
when it gets merged?

So if you see your PR with the binding and driver getting merged to
next-next, can you provide a ping please?

Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
