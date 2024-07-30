Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54291C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1EX5+kZa/Rs+akviXu1fxTijXkUV1MkdN77D3oYvLI=; b=MySzh63O/fs/UC
	Srq9ZbDi+SR2NhSOSG0mbQ/3eOJhNgf5qt1Ieg4noZ8xaiQrNpEM8swrQ88ANRxaPQh03F7l5KYHk
	1TbeRF/2ti+KpxCNIy3UEOMKmVf9hTyxPUvwWOxRVWMlrZLyu/0rC+lprnQhO870orH7aXVHTHC8W
	6BG/PMOxT/mC5KQJd6dq1ik6DzDSRD0JYGxpmKWsc4nV1I4kZMVBiUQdGsKZlOY/W9NsNzBPnEby1
	apW0n0J0YZLzS9oMDy6HcvIumGvW8GnHCyS6VJsOW4JxLf7+ePTP65e11dSTFtcuBbXjY8KcWUsXZ
	axbTqi373wgbOcPRnb0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkEc-0000000Ekxp-3ZpU;
	Tue, 30 Jul 2024 10:37:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkE5-0000000EknE-097L;
	Tue, 30 Jul 2024 10:37:06 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYkDk-0007C3-Qa; Tue, 30 Jul 2024 12:36:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Daniel Golle <daniel@makrotopia.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 30 Jul 2024 12:36:43 +0200
Message-ID: <17577153.5WZRyvrzyv@diego>
In-Reply-To: <6690040.iosknibmi9@bagend>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <ZqgjTQMgWZO2FjaC@makrotopia.org> <6690040.iosknibmi9@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_033705_111703_0DDE8881 
X-CRM114-Status: GOOD (  29.77  )
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

Am Dienstag, 30. Juli 2024, 11:03:06 CEST schrieb Diederik de Haas:
> On Tuesday, 30 July 2024 01:18:37 CEST Daniel Golle wrote:
> > On Wed, Jul 24, 2024 at 08:07:51AM +0200, Dragan Simic wrote:
> > > Thanks a lot for the testing.  Though, such wildly different test results
> > > can, regrettably, lead to only one conclusion:  the HWRNG found in RK3566
> > > is unusable. :/
> 
> FTR: I agree with Dragan, unfortunately.
> 
> > The results on RK3568 look much better and the series right now also
> > only enabled the RNG on RK3568 systems. However, we have only seen few
> > boards with RK3568 up to now, and I only got a couple of NanoPi R5C
> > here to test, all with good hwrng results.
> > 
> > Do you think it would be agreeable to only enable the HWRNG for RK3568
> > as suggested in this series? Or are we expecting quality to also vary
> > as much as it (sadly) does for RK3566?
> 
> Unless we get *evidence* to the contrary, we should assume that the HWRNG on 
> RK3568 is fine as the currently available test results are fine.
> So I think enabling it only for RK3568 is the right thing to do.
> 
> So a 'revert' to v7 variant seems appropriate, but with the following changes:
> - Add `status = "disabled";` property to the definition in rk356x.dtsi
> - Add a new commit where you enable it only for rk3568 and document in the 
> commit message why it's not enabled on rk3566 with a possible link to the v7 
> thread for clarification on why that is

I was going to protest about the "disable" until reading the 2nd part :-D .

And yeah that makes a lot of sense, "add" it to rk356x.dtsi, as the IP is
part of both variants, but only enable it in rk3568.dtsi because of the
seemingly faulty implementation on the rk3566.


> You could probably also integrate that into 1 commit, but make sure that the 
> commit summary and description match the implementation.
> IMO that wasn't 'technically' the case in v8 as the rng node was added to 
> rk356x, but it was only enabled on rk3568.
> 
> My 0.02





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
