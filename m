Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 242D1C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 14:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xj8lXqVURkBwhfobcOF4cLM7s2BGBwdgwn5o6nmVedY=; b=ka2VOJWtUm1Wj0
	tN7dDriZAmOHGCqA9iWFzbGe4a69+AmLo32PGydvxoikjyNZShOgWcohUOQsCcKcyJtNllLXr7Hnn
	IGMZPV7XnDBmRqaaTKmARE6KmmsFQzpFGAY30P3UUq1XPiSkRZqrxGTFw1n03MaGO+dWvViUtER5K
	uYMZaRzrmLMmBwShOS20IJuP44+lNq53GolO5xXwlUbmPOAH8hx8R2TC3pF4BYaKu3HIj7cKRf+J4
	nuaKsZ99Rea21VfrkUfusj4dyILmATirl9CBR852tR57x0hXykIINUn82cU59q8SbjjvTPylZuOcq
	o9UhTWuAdbB6pTZTH0mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTjm2-0056wq-07;
	Wed, 09 Aug 2023 14:02:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTjly-0056vA-10;
	Wed, 09 Aug 2023 14:02:51 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qTjlq-0007Tp-Tt; Wed, 09 Aug 2023 16:02:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Date: Wed, 09 Aug 2023 16:02:42 +0200
Message-ID: <5533260.88bMQJbFj6@phil>
In-Reply-To: <20230731145129.mrrkb6tcuvlpmxan@pengutronix.de>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
 <20230731103518.2906147-2-jagan@edgeble.ai>
 <20230731145129.mrrkb6tcuvlpmxan@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_070250_343532_5113A391 
X-CRM114-Status: GOOD (  12.55  )
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

Am Montag, 31. Juli 2023, 16:51:29 CEST schrieb Uwe Kleine-K=F6nig:
> On Mon, Jul 31, 2023 at 04:05:06PM +0530, Jagan Teki wrote:
> > Document pwm compatible for rv1126 which is fallback compatible
> > of rk3328-pwm group.
> > =

> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Should this go in via the pwm tree, or together with the other patches
> via rockchip?

I have no clue, sadly. I _can_ pick it up, but I guess that would
require an Ack from Thierry? Otherwise I guess we'll need to wait
for him.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
