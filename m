Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 693E6C00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YC7qeMZH3u+Z9xAae9baVe3K+AxM4PxslZ3q9NIGgfQ=; b=bGM8OdC0xdgWBN
	pOw7gSidS5HaNlGRnfHlEjN1kd73mI7q9QEF9ppEVJvE8RsiUCuO0Yl4gnUT1RyClYjdN/AdL4uXR
	vBC2R3QWDRYLhftYqIIEi9MKC45Mr6CzUwwLpT6/u6x5lpMgDN5fvuz4iX/NWRN1vkoxUCAwZTuCw
	9V0aCai0P3MyudG4zvMO8Y8ZyWu8vtDn3ObUGKC1+Ev43iu+1cISjQHwrcI63wlp+WdDc/CVNyGKw
	8tYAxvPrpxhKmQBFc+fGFAPJfpsyQjVu1XTwMd70BZLsoBeJjqJ+t53C10s46qO3XdCD9Uhkv2MN/
	L094YKVeTsK3IQ2VjqBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJdC-00ANUF-0p;
	Tue, 24 Oct 2023 15:47:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJdA-00ANTc-1C
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Oct 2023 15:47:45 +0000
Received: from i53875a19.versanet.de ([83.135.90.25] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qvJd5-0005MZ-2h; Tue, 24 Oct 2023 17:47:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Tue, 24 Oct 2023 17:47:37 +0200
Message-ID: <11399368.MucGe3eQFb@diego>
In-Reply-To: <SN6PR06MB534206AB35C00B3D003765AAA5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com> <3083498.U7HbjWM52l@diego>
 <SN6PR06MB534206AB35C00B3D003765AAA5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_084744_407730_8838119E 
X-CRM114-Status: GOOD (  30.11  )
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

Hi Chris,

Am Freitag, 20. Oktober 2023, 17:03:08 CEST schrieb Chris Morgan:
> On Thu, Oct 19, 2023 at 07:45:17PM +0200, Heiko St=FCbner wrote:
> > Hey Chris,
> > =

> > Am Donnerstag, 19. Oktober 2023, 16:43:56 CEST schrieb Chris Morgan:
> > > On Thu, Oct 19, 2023 at 11:21:47AM +0200, Krzysztof Kozlowski wrote:
> > > > On 18/10/2023 18:18, Chris Morgan wrote:
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > =

> > > > > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy =
and
> > > > > powered by the Rockchip RK3566 SoC.
> > > > > =

> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > > > >  1 file changed, 5 insertions(+)
> > > > > =

> > > > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml =
b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > index a349bf4da6bc..a6612185a7ff 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > @@ -674,6 +674,11 @@ properties:
> > > > >            - const: powkiddy,rgb30
> > > > >            - const: rockchip,rk3566
> > > > >  =

> > > > > +      - description: Powkiddy RK2023
> > > > > +        items:
> > > > > +          - const: powkiddy,rk2023
> > > > =

> > > > This cuold be just enum in previous entry :/ but I remember we talk=
ed
> > > > about this once with Heiko.
> > > =

> > > For hardware that requires a different device tree, is that possible?
> > > While most of the devices I've worked on for the RK3566 series are ve=
ry
> > > similar for the moment only 1 is identical (the RG353P and the RG353M)
> > > and can use the same device tree.
> > =

> > In my reply I pointed to the Rock PI 4A/4A+/B/B+/C family, which also h=
as
> > different devicetrees but is part of the same family of device designs.
> > =

> > So similar Powkiddy RK3568 based gaming handhelds also sound like
> > a nice family name in the description ;-) .
> =

> Gotcha, I can do that. Would you like for me to go back and do the same
> for the Anbernic devices as well? I can do it as part of a seperate
> patch series.

that doing that for the Anberic devices would be really nice too, so
yes please :-) .

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
