Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF78C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 16:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3MeQv0eEnD/mcccF9tYvOeCEl3889eg26xlptxqKp4=; b=JcujBoqbK+li+/
	eZSslV2VJINjaY9hQqCJMw28sK5Se/Qg0qZRZvaoXj9F76QJTYBFLdtYtWQezdeUnHglhjMCM0FEJ
	W9DtKhlPVBTD7yzdR08uoh5yaN3qqhQUV7la3kXDokUl5lD0onMMlmEC9qfF01hrUNT68tzc8EIZE
	o/M9K49HBT/qHT5xIVeBg7hZMAiTN1MKUZPP1ZMv96QaEnwTtczRes8LQJUfGapRkI86GG7ORpLMv
	Ch0Z/gO8uU8tVTIO10zfQoAAIyNPWCuD5ZPLG+cl8KBedX2TPeUPrIBxvL9KWdgRSiz82rzSuZDF5
	cYyWEljm9RmBRsivxfyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HZn-000000027zn-1C1e;
	Wed, 15 May 2024 16:33:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HZi-000000027xf-2bVS;
	Wed, 15 May 2024 16:33:55 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s7HZD-00078Z-Sj; Wed, 15 May 2024 18:33:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Date: Wed, 15 May 2024 18:33:22 +0200
Message-ID: <2182693.irdbgypaU6@diego>
In-Reply-To: <20240515-risk-exes-13db315da6bb@spud>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <20240514152328.21415-4-detlev.casanova@collabora.com>
 <20240515-risk-exes-13db315da6bb@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_093354_672672_55BF3E01 
X-CRM114-Status: GOOD (  19.99  )
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

Am Mittwoch, 15. Mai 2024, 18:19:29 CEST schrieb Conor Dooley:
> On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> > Add the documentation for VOP2 video ports reset clocks.
> > One reset can be set per video port.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> 
> Are these resets valid for all VOPs or just the one on 3588?

Not in that form.
I.e. rk3588 has 4 video-ports (0-3), while rk3568 has 3 (0-2).

So the binding should take into account that rk3568 also has the
SRST_VOP0 ... SRST_VOP2.


Also, I guess we might not want to limit ourself to stuff we use?
I.e. the new VOP-design is one block with multiple video-ports

So for rk3568 I see
#define SRST_A_VOP
#define SRST_H_VOP
#define SRST_VOP0
#define SRST_VOP1
#define SRST_VOP2

similarly rk3588 has

#define SRST_H_VOP
#define SRST_A_VOP
#define SRST_D_VOP0
#define SRST_D_VOP1
#define SRST_D_VOP2
#define SRST_D_VOP3

as generalized reset lines.





> 
> > ---
> >  .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > index 2531726af306b..941fd059498d4 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > @@ -65,6 +65,22 @@ properties:
> >        - const: dclk_vp3
> >        - const: pclk_vop
> >  
> > +  resets:
> > +    minItems: 3
> > +    items:
> > +      - description: Pixel clock reset for video port 0.
> > +      - description: Pixel clock reset for video port 1.
> > +      - description: Pixel clock reset for video port 2.
> > +      - description: Pixel clock reset for video port 3.
> > +
> > +  reset-names:
> > +    minItems: 3
> > +    items:
> > +      - const: dclk_vp0
> > +      - const: dclk_vp1
> > +      - const: dclk_vp2
> > +      - const: dclk_vp3
> > +
> >    rockchip,grf:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description:
> > @@ -128,6 +144,11 @@ allOf:
> >          clock-names:
> >            minItems: 7
> >  
> > +        resets:
> > +          minItems: 4
> > +        reset-names:
> > +          minItems: 4
> > +
> >          ports:
> >            required:
> >              - port@0
> > @@ -183,6 +204,12 @@ examples:
> >                                "dclk_vp0",
> >                                "dclk_vp1",
> >                                "dclk_vp2";
> > +                resets = <&cru SRST_VOP0>,
> > +                         <&cru SRST_VOP1>,
> > +                         <&cru SRST_VOP2>;
> > +                reset-names = "dclk_vp0",
> > +                              "dclk_vp1",
> > +                              "dclk_vp2";
> >                  power-domains = <&power RK3568_PD_VO>;
> >                  iommus = <&vop_mmu>;
> >                  vop_out: ports {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
