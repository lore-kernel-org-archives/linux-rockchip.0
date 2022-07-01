Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A9EC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 09:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8boQKnPw+/iL9Ovn7aO8aK9sMvFDK7RUGUE4VEzC5YI=; b=Tnvp4UGm4qIjGh
	jXyoYn+zmFl1Wtiy/6b+cbACad2CT9XVIgGzG6vpw79LjqZp/fOsmFxTJ+FrHdM02/7ZrOQr3qy1A
	rMRYeQaSmxSUTjoXziR88Yfm7suXaLa9YW3ocUSnIaf7ywAuecPAJN6C7Wc/DeiA0x9r/HUDN0CMb
	87TvIZiBbKzeP3hh+78jvqNUGVpMXypx0xXnMTXr4TnPi0919WqcMMwIlR5eaGffofPH+dgx/zbHv
	VWUBg5UY5qfd3B+feBQyjtRMT/g/3+ga62GNiskG/9sSL3NwcXxUhNZliDYPCusLxLZctd1+A3zGt
	loXt0Wt2co1OQN8QfypQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CoI-003pcv-5V; Fri, 01 Jul 2022 09:19:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CoF-003paw-25
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 09:19:32 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9E91025C;
	Fri,  1 Jul 2022 11:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656667168;
	bh=PiwUbyUV4xv77mPNNleUvrhzAfhgzSm779hMBHQ+4Gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RiEXrSsWz0vix7wNf+yys2R/x1h13eceuCys6fj5t5lAhhu5jNftyK0bC4LuhdCOe
	 +Tu/z/P72YCiYjCsZwtygPEaRLAr41uxYTkDFXWKG3jtv4ymXqbH4uiXzst9oxO67r
	 XzMNgrns7ZJkZx+hlqFiINQkl4r8WXb5DQqIK/ls=
Date: Fri, 1 Jul 2022 12:19:07 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 43/55] dt-bindings: media: rkisp1: Add port for parallel
 interface
Message-ID: <Yr68C1T5Pai8m/O+@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-44-paul.elder@ideasonboard.com>
 <20220701052222.a7rtl5hivr4oy7bk@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220701052222.a7rtl5hivr4oy7bk@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_021931_298239_D3E198E6 
X-CRM114-Status: GOOD (  17.54  )
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

Hi Dafna,

On Fri, Jul 01, 2022 at 08:22:22AM +0300, Dafna Hirschfeld wrote:
> On 15.06.2022 04:11, Paul Elder wrote:
> > The rkisp1 can take an input on the parallel interface. Add a port for
> > it, and update the required field. At least one port is required, and
> > both may be specified.
> >
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > ---
> >  .../bindings/media/rockchip-isp1.yaml         | 23 +++++++++++++++++--
> >  1 file changed, 21 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > index d1489b177331..b3661d7d4357 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > @@ -84,8 +84,27 @@ properties:
> >                  minItems: 1
> >                  maxItems: 4
> > 
> > -    required:
> > -      - port@0
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        unevaluatedProperties: false
> > +        description: connection point for input on the parallel interface
> > +
> > +        properties:
> > +          bus-type:
> > +            enum: [5, 6]
> > +
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +        required:
> > +          - bus-type
> > +
> > +    anyOf:
> > +      - required:
> > +          - port@0
> > +      - required:
> > +          - port@1
> > 
> >  required:
> >    - compatible
> 
> Could be nice to add an example

I don't have a real-life example of a parallel sensor connected to a
RK3399, but the i.MX8MP connects its CSI-2 receiver to the parallel
input of the ISP. I'll add an example to the other DT bindings patch
that adds the compatible string for the i.MX8MP, is that OK ?

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
