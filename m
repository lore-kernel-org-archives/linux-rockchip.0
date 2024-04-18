Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534EDC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 17:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qx50l+xHJ+bR1OrDWg+lHU/tHadGHS9yq8PuTBquo4=; b=T88QuG6FM2jBqG
	z5fCzFxSRgTSjLEoaYX6xJJ+0qgvx3BmLoRUtm2ylWBm89BarvxwItYCnwaPz4QUVhFxB10c9ettl
	WoHc3BHJBpSlkji7VLqWHRp9Sd/j7XaZSRNBnuPgWURJ5gS34EseS/Rzkivw0QsS200rHXH8LsXc/
	8W7QguxYEUOZ/t+2MBeYLbvN0vMLpApHfANWUtTBgrVTiqRJENMOhFKBJa9nOE/EKiGw9ohG1+liW
	9OQ2pxvlpLnnO8VEm6xWtmFW4DJGEboCTkQNoGF1ZrdMsFb1Lqd4gsdxXWx7vnT2UZp4m1ZSuuqWK
	FTpT7rb78Q9bgVjYXQvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVE9-0000000399U-2B7d;
	Thu, 18 Apr 2024 17:07:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVE7-0000000398W-29CX;
	Thu, 18 Apr 2024 17:07:12 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxVE5-0000vA-Kr; Thu, 18 Apr 2024 19:07:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for
 Radxa boards
Date: Thu, 18 Apr 2024 19:07:08 +0200
Message-ID: <2603669.Lt9SDvczpP@diego>
In-Reply-To: <20240418-attach-tigress-bc2b9f844fc7@spud>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <1888572.CQOukoFCf9@diego> <20240418-attach-tigress-bc2b9f844fc7@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_100711_572750_202B83E7 
X-CRM114-Status: GOOD (  18.30  )
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

Am Donnerstag, 18. April 2024, 19:04:44 CEST schrieb Conor Dooley:
> On Thu, Apr 18, 2024 at 06:59:42PM +0200, Heiko St=FCbner wrote:
> > Hi Dragan,
> > =

> > Am Donnerstag, 18. April 2024, 18:26:19 CEST schrieb Dragan Simic:
> > > Correct the descriptions of a few Radxa boards, according to the up-t=
o-date
> > > documentation from Radxa and the detailed explanation from Naoki. [1]=
  To sum
> > > it up, the short naming, as specified by Radxa, is preferred.
> > > =

> > > [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-=
601b-4d4a-a513-4924b7940076@radxa.com/
> > > =

> > > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> > > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Do=
cumentation/devicetree/bindings/arm/rockchip.yaml
> > > index fcf7316ecd74..ae58e25c29ec 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -767,22 +767,22 @@ properties:
> > >            - const: radxa,rockpis
> > >            - const: rockchip,rk3308
> > >  =

> > > -      - description: Radxa Rock2 Square
> > > +      - description: Radxa Rock 2 Square
> > =

> > I may be just blind, but what changed here?
> =

> There's now a space before the 2.

ah, now I see it too :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
