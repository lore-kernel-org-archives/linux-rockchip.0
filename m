Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24917C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 16:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7EhRx99XVFAN3UIAuIoXPp/h8ki6RUoB4KhC+OAAPfU=; b=luFliMAlVQFWn6STXrICIGJWDV
	mQ0lp7H1j4H85/MTONTS6KbcSufowpDpt70lEMPIoGdEjyqY+AYqh4tGoMJXF5V542yx0g51VtTYG
	Bilje/0Dalljfr4BUyIA65IAmduCnuZAIUbphu0s+gSgSXe3BUD72I/SLuYq754OyBIFgwkZeAwLl
	oyeYbO7zRFXAFe9MzIEDtzzYb1YDx718wKxaIR5zU5r5zdF5w+eaZuM37tGTtWhfsffLpikfQqpRv
	PTbTRENHQsbnl95+32cLQynb7Iw86F+tz60U6lc/1jYuPhWKr00HKmtR/fCP8Kgz1Tl+okS1poeLg
	dzRHYPrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZYzL-000000069p7-2eu4;
	Thu, 01 Aug 2024 16:49:15 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZYyq-000000069l2-3Ron;
	Thu, 01 Aug 2024 16:48:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722530920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jPClc5OP0a9QUvjXpGJsJVrUxn5Ch1JktZFLY54Dr9g=;
	b=MnoBjUS/QslsJRcK0L/SKKwNPnUDn+etkJgm3yZhSmSJMnu5iLcaHVTPuw/0rj3ijsy4sN
	CEkYEIu7JeLHrs6Ygj6NpVDhWGDBbG9PCooB8i8evHCZ870AEFnTeeBOwuKSapGnOKAGG1
	DgNRROAjkM+gzXKutfi+A8uAEDf53QgexbZN9qQgx0A0OP5IDBH3swT0U9Pf6xPEkR7Fpv
	okdNO/othF6Sh1DHxb8seSjY0gPATf/DnxOnaUcnG5STKZsvbIE6yMLdmf+IK0Git1qAgp
	g6eu74Bk/GL0o77yBvY8xPn6qPBTgl2Pf0mCGWjb9XZ3m5xnIr8ncFceFh85cQ==
Date: Thu, 01 Aug 2024 18:48:36 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Chen-Yu Tsai
 <wens@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu
 <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, Sascha
 Hauer <s.hauer@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, Philipp Zabel
 <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko
 Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
In-Reply-To: <ZqgjTQMgWZO2FjaC@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <3190961.CRkYR5qTbq@bagend>
 <CAGb2v64Dx7XaJOu0HHzFxYYY2ddUZao5Tar8-s1R_miVZqWcXA@mail.gmail.com>
 <4406786.zLnsZ2vfAB@bagend> <faa0baebabd3c31adf1afa7efbbdf608@manjaro.org>
 <ZqgjTQMgWZO2FjaC@makrotopia.org>
Message-ID: <97dfca058858d7a5d933ddf7a84dba61@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_094845_359561_DD167982 
X-CRM114-Status: GOOD (  16.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Daniel,

On 2024-07-30 01:18, Daniel Golle wrote:
> On Wed, Jul 24, 2024 at 08:07:51AM +0200, Dragan Simic wrote:
>> Thanks a lot for the testing.  Though, such wildly different test 
>> results
>> can, regrettably, lead to only one conclusion:  the HWRNG found in 
>> RK3566
>> is unusable. :/
> 
> The results on RK3568 look much better and the series right now also
> only enabled the RNG on RK3568 systems. However, we have only seen few
> boards with RK3568 up to now, and I only got a couple of NanoPi R5C
> here to test, all with good hwrng results.
> 
> Do you think it would be agreeable to only enable the HWRNG for RK3568
> as suggested in this series? Or are we expecting quality to also vary
> as much as it (sadly) does for RK3566?

I'm a bit late to the party, sorry for that.  The test results so far
show that the HWRNG in RK3566 simply cannot be relied upon, but the test
results also show that the RK3568's HWRNG seems fine.  I'm wondering 
why,
but until we bump into a sample of RK3568 whose HWRNG performs badly,
I'd say that enabling the HWRNG on RK3568 only is safe.

Of course, as other people already noted, the HWRNG should be defined in
rk356x.dtsi, because it does exist in both SoC variants, but should be
enabled in rk3568.dtsi only.  As already noted, describing it as broken
on RK3566 in rk356x.dtsi should also be good.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
