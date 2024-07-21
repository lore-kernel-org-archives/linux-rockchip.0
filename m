Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0913C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 13:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcL4Qbj4mStudP0iVQjQEmto3I8kUHCFqB+zpoq6SFg=; b=T+1QK9vKO+CY4D
	VgeJ2CmvJpx+SlakuF5ldwBf7XUQ3sjneVyBvea9G8WExFk0Ig3ibPLnF4KDN/yFknD+clu3wagJn
	d5K2FAJIELbui7IMUTS+S2oqWLnB/QPIANuuDp2DAo08AfyiujUb0WiGwl+uesXXftJ5TU1t2c+DA
	l9GHNHhvD4PiNcHfCoaolnuYzJtdPYKx2/9Ax544SaOOOI7ZD4kHiGMBu4GaG0DUUhCuYv776ebCt
	d7HYkdMVouBQjPVBeaJwI2ZoKCuRkqfuRQ+YzH+1krVtJ0NDJRdi2pkyj81JtF+g384ideyyno83X
	l8tsprWJJMgc1dJeCQsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVWx1-00000006vpo-0QCR;
	Sun, 21 Jul 2024 13:50:11 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVWwd-00000006vlY-2Hpl;
	Sun, 21 Jul 2024 13:49:48 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98)
	(envelope-from <daniel@makrotopia.org>)
	id 1sVWwH-000000001Qr-1EaD;
	Sun, 21 Jul 2024 13:49:25 +0000
Date: Sun, 21 Jul 2024 14:49:17 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH v8 3/3] arm64: dts: rockchip: add DT entry for RNG to
 RK356x
Message-ID: <Zp0R3YtzDoi02P1K@makrotopia.org>
References: <cover.1721522430.git.daniel@makrotopia.org>
 <c28cb9ad04062b6da66d9cac8adefa0edc0046ea.1721522430.git.daniel@makrotopia.org>
 <Zpz5-2q-C0oQBqoa@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zpz5-2q-C0oQBqoa@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_064947_603291_C247A956 
X-CRM114-Status: GOOD (  23.84  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jul 21, 2024 at 02:07:23PM +0200, Jason A. Donenfeld wrote:
> On Sun, Jul 21, 2024 at 01:48:38AM +0100, Daniel Golle wrote:
> > From: Aurelien Jarno <aurelien@aurel32.net>
> > 
> > Enable the just added Rockchip RNG driver for RK356x SoCs.
> > 
> > Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  7 +++++++
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > index f1be76a54ceb..b9c6b2dc87fa 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > @@ -257,6 +257,13 @@ power-domain@RK3568_PD_PIPE {
> >  	};
> >  };
> >  
> > +&rng {
> > +	rockchip,sample-count = <1000>;
> > +	quality = <900>;
> 
> As I already wrote you for v7, quality is out of 1024, not 1000, so this
> won't hit 90% as you intend.

It's not actually 90%. Around 125 out of 1000 test runs are failing on
the R5C boards I got here, so that makes it 87.5% which is pretty close
to the 87.9% of the 900/1024 figure there, hence I kept it 900 despite
your comment.

> 
> But also, I think putting this in the DT is a mistake. Other drivers
> don't generally do this, and if the hardware is actually the same piece
> to piece (it is...), then there's not per-manufactured unit tweaking
> needed. So keep this in the actual driver C like other drivers.

So quality should be assigned using the DT compatible, right?
And if needed we should have several of them, one for each SoC (if
testing now turns out to show that the results are specific for the SoC
rather than for the board).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
