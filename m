Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B49CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 13:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkrgzJ7j5kelPRC1rhd0MZCM9ihiRsoeLjKj9esEsv4=; b=13gVC9k7lL7+X5
	hQhUNeKj0dtsdaqBZjQGj0X4LOaUaS7ADL/ZuVz8dHYlHBNRsQEWkLI4PrHNY6wYaUMeITE6q70b0
	nTKW8GhIfx2vCDIIgIgoOXKYkd3NvYthm91DSv1b/WjtgWAAAfUZiQmulTcVQQIFjkrJlohG+uA2c
	EVCnrgnovKnTr6dicNmIy1T2nIXiMoa+5bmpu4wEwgtR0siQL/BfWfzIPjCYEQScyJ/e4C8XB9gB4
	JmsRGSOS/RMi8hx0WEMeH7Pa4EfUfApLB2zVPmN46pD5mXbDZj4c0TX7sqsse+fx/ipCaR6vzav9F
	UlYEPL2BzJIppk7z3ZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMy6-0000000E2HN-2FAk;
	Sun, 23 Jun 2024 13:09:18 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMxy-0000000E2G8-1rxs;
	Sun, 23 Jun 2024 13:09:11 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.97.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1sLMxY-0000000081f-4C5p;
	Sun, 23 Jun 2024 13:08:45 +0000
Date: Sun, 23 Jun 2024 14:08:35 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>, Martin Kaiser <martin@kaiser.cx>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: rng: Add Rockchip RNG bindings
Message-ID: <ZngeUxK6r0qqBj28@makrotopia.org>
References: <cover.1719106472.git.daniel@makrotopia.org>
 <b28ccedac0a51f8a437f7ceb5175e3b70696c8c2.1719106472.git.daniel@makrotopia.org>
 <a31bc0f2-4f82-4e15-95b8-c17dc46e7bf5@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a31bc0f2-4f82-4e15-95b8-c17dc46e7bf5@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_060910_507194_71C77F26 
X-CRM114-Status: GOOD (  24.25  )
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

Hi Krzysztof,

thank you for your patiente and repeated review of this series.

On Sun, Jun 23, 2024 at 09:03:15AM +0200, Krzysztof Kozlowski wrote:
> On 23/06/2024 05:32, Daniel Golle wrote:
> > From: Aurelien Jarno <aurelien@aurel32.net>
> > 
> > Add the True Random Number Generator on the Rockchip RK3568 SoC.
> > 
> > Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> 
> My comments from v2, which I reminded at v3, were not addressed.
> 
> Respond to each of them and acknowledge that you are going to implement
> the change.

Your comments to v1which I'm aware of are:
https://patchwork.kernel.org/comment/25087874/

> > +++ b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
> Filename matching compatible, so "rockchip,rk3568-rng.yaml"

I've changed the filename.

> > +title: Rockchip TRNG bindings

> Drop "bindings"

I've changed the title accordingly (now: "Rockchip TRNG" in v4).

> > +description:
> > +  This driver interface with the True Random Number Generator present in some
> 
> Drop "This driver interface" and make it a proper sentence. Bindings are
> not about drivers.

This has been addressed by Aurelien and further improved by me in v3.

> > +  clocks:
> > +    minItems: 2

> Drop minItems.

Aurelien did that in v2.

> > +  clock-names:
> > +    items:
> > +      - const: clk
> > +      - const: hclk
> 
> You need to explain what are these in clocks. Also you need better
> names. A clock name "clk" is useless.

Clocks now have meaningful names and descriptions.

> > +  reset-names:
> > +    items:
> > +      - const: reset
> 
> Drop reset-names entirely, not useful.

Aurelien did so in v2.

Your comments to v2 which I'm aware of are:
https://patchwork.kernel.org/comment/25111597/

> > Add the RNG bindings for the RK3568 SoC from Rockchip

> Use subject prefixes matching the subsystem (git log --oneline -- ...),
> so it is rng, not RNG. Also, you are not adding all-Rockhip RNG but a
> specific device.
> 
> Subject: drop second, redundant "bindings".

I've changed 'RNG' into 'rng' in the subject and spelled it out in the
commit message.

> > +description: True Random Number Generator for some Rockchip SoCs
> 
> s/for some Rockchip SoCs/on Rokchip RK3568 SoC/

I've adopted your suggestion in v3 and then fixed the typo in v4.

> 
> > +  clock-names:
> > +    items:
> > +      - const: trng_clk
> > +      - const: trng_hclk

> These are too vague names. Everything is a clk in clock-names, so no
> need usually to add it as name suffix. Give them some descriptive names,
> e.g. core and ahb.

If changed the names to the suggested 'core' and 'ahb'.

Before sending another round of patches, just to make sure we are on
the same page, please confirm that what remains is
Subject: dt-bindings: rng: Add Rockchip RNG bindings
which not only should be 'rng' in small letters but also name the exact
chip, eg.:
Subject: dt-bindings: rng: add TRNG on the Rockchip RK3568 SoC

If there are any other comments you made which I'm not aware of, please
point me to them.


Cheers


Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
