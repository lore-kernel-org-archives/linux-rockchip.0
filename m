Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA96CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 17:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQVYxTfoJvWVz7Kw/wixxTOvnpZ/bqXsoy4gDuuMwvU=; b=D9eZztGSZkEwSC
	GQ1UfPqknMdvU2trv1cCpqMOZwTpyo1R5SVPM9IgbI3YXjCmlhnIkNpatS4BvuTys6P9b0wgtlEov
	fdzwOjYuKwHArXZbSL5HiY5wBPMDrXhpD8BPJ9R00zEryz2hTMoHG5+Cg3e8LmQ1XS15Fa3ydro8F
	te3F+3YoQOCB0uXKVKvXET8ky4oGyVRvq0BpgKjNosD7mU0UZUrwedF/+P8/4PzbyEohgekOb6v1+
	7Q9ndMuSrEUMOsFtPrzd/sRRLqrrbCY6xo4fU6kMY5g97cXy4cWQG5w6di5MX3wiBKe63MS8O6b0x
	x8ffV/BpGrHzuFigls5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtX5M-000Rjh-2S;
	Thu, 19 Oct 2023 17:45:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtX5K-000Rie-0L
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 17:45:27 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtX5C-0006Vb-V4; Thu, 19 Oct 2023 19:45:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu, 19 Oct 2023 19:45:17 +0200
Message-ID: <3083498.U7HbjWM52l@diego>
In-Reply-To: <SN6PR06MB534289953F0A72345D679A7EA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
 <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
 <SN6PR06MB534289953F0A72345D679A7EA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_104526_151033_97F8B89A 
X-CRM114-Status: GOOD (  23.05  )
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

Hey Chris,

Am Donnerstag, 19. Oktober 2023, 16:43:56 CEST schrieb Chris Morgan:
> On Thu, Oct 19, 2023 at 11:21:47AM +0200, Krzysztof Kozlowski wrote:
> > On 18/10/2023 18:18, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
> > > powered by the Rockchip RK3566 SoC.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index a349bf4da6bc..a6612185a7ff 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -674,6 +674,11 @@ properties:
> > >            - const: powkiddy,rgb30
> > >            - const: rockchip,rk3566
> > >  
> > > +      - description: Powkiddy RK2023
> > > +        items:
> > > +          - const: powkiddy,rk2023
> > 
> > This cuold be just enum in previous entry :/ but I remember we talked
> > about this once with Heiko.
> 
> For hardware that requires a different device tree, is that possible?
> While most of the devices I've worked on for the RK3566 series are very
> similar for the moment only 1 is identical (the RG353P and the RG353M)
> and can use the same device tree.

In my reply I pointed to the Rock PI 4A/4A+/B/B+/C family, which also has
different devicetrees but is part of the same family of device designs.

So similar Powkiddy RK3568 based gaming handhelds also sound like
a nice family name in the description ;-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
