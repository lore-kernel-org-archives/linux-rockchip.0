Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6117C16B13
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 11:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCYniepy4+uTSe4ousrVe7tApt8Gh/Spcx9fBjqSNFc=; b=RSdWiIBh9fh3DP
	rHxOoaFcIqPdfwxBQwDnzEaSx/1gxkzDGWnOTKPKBO28PcicWqDTK3N7HD6tOUfFKgx7tXLm3BpOj
	3BHDPceUojdcLEIDy1rSjensM1/OWLMCNv+nsYgpXlFprU3oWv9LYlcNR5u6e/xRMStwJAY9qBqGt
	lkfs35tbbMCFRMXjIAHvNetUho5aNgVG6xTnUDigrjNGM/zjJqWWNta3R0zsCnpvQioGVqv1nod87
	RLZBdBpV70X1aw5mLh02FtvIs2yOKlLIhDLwSvv+Lamk6Nb0bBmiGHXxpyc31J3Bb3KBCcLBZDYM5
	4zGVx4BQB4JT2Zk5Ub9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzDvy-0000000H0g5-0XFI;
	Tue, 23 Apr 2024 11:03:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzDvh-0000000H0W3-2v1Q;
	Tue, 23 Apr 2024 11:03:20 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzDvd-0005B9-6h; Tue, 23 Apr 2024 13:03:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix nodename warning on
 wolfvision-pf5-display
Date: Tue, 23 Apr 2024 13:03:12 +0200
Message-ID: <5189813.GXAFRqVoOG@diego>
In-Reply-To: <3f93ecb0-a649-4492-8798-a00de26236c8@wolfvision.net>
References: <20240423082941.2626102-1-heiko@sntech.de>
 <3f93ecb0-a649-4492-8798-a00de26236c8@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_040317_775956_79280D97 
X-CRM114-Status: GOOD (  37.25  )
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

Am Dienstag, 23. April 2024, 11:39:26 CEST schrieb Michael Riesch:
> On 4/23/24 10:29, Heiko Stuebner wrote:
> > The dtbs check throws a warning about node naming with the recently
> > added pf5-display-overlay:
> > rockchip/rk3568-wolfvision-pf5-display.dtsi:113.6-121.3: Warning (graph_port): /fragment@4/__overlay__: graph port node name should be 'port'
> > 
> > This comes from the overlay just referencing the vp2-port-node via
> > its phandle and then adding an endpoint beneath it.
> > 
> > While this is possible something to handle inside the dtbs check,
> > carrying around the warning is not pretty, so change the description
> > to go around it.
> 
> What is the rationale behind that check? Describing a port in a SoC dtsi
> or board dts and using the reference in an overlay is quite convenient
> and above all concise.

I guess this is mainly a problem of the overlay thing.
Also it does not change with or without the "-@" option to dtc.

So I guess the main thing seems to be that overlays and the whole
checks don't seem to be well-trodden paths yet.


> Cc: device tree list
> > Starting from the vop_out phandle and then referencing the port
> > via its generic port@2 nodename will satisfy the port<->endpoint
> > naming dependency while keeping the same structure once the overlay
> > is applied.
> > 
> > Reported-by: Arnd Bergmann <arnd@kernel.org>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  .../rockchip/rk3568-wolfvision-pf5-display.dtsi    | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
> > index b22bb543ecbb..18c807c39e56 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
> > @@ -110,12 +110,14 @@ &pwm10 {
> >  	status = "okay";
> >  };
> >  
> > -&vp2 {
> > -	#address-cells = <1>;
> > -	#size-cells = <0>;
> > +&vop_out {
> > +	port@2 {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> >  
> > -	vp2_out_rgb: endpoint@ROCKCHIP_VOP2_EP_RGB0 {
> > -		reg = <ROCKCHIP_VOP2_EP_RGB0>;
> > -		remote-endpoint = <&panel_in_vp2>;
> > +		vp2_out_rgb: endpoint@ROCKCHIP_VOP2_EP_RGB0 {
> > +			reg = <ROCKCHIP_VOP2_EP_RGB0>;
> > +			remote-endpoint = <&panel_in_vp2>;
> > +		};
> >  	};
> >  };
> 
> With this patch applied the DTC warning "Warning (graph_port):
> /fragment@4/__overlay__: graph port node name should be 'port'"
> vanishes, but a different DTC warning "Warning (unit_address_vs_reg):
> /fragment@4/__overlay__/port@2: node has a unit name, but no reg or
> ranges property" appears. Can you reproduce this?
> 
> I tried to fix that by adding the reg property, but then DTC complained
> about "Warning (graph_port): /fragment@9/__overlay__/ports/port@0: graph
> node '#size-cells' is -1, must be 0"
> 
> Then, I added the #size-cells property to avoid this. However, DTC
> complained about this property not being necessary as there is only one
> port. I stopped at this point.
> 
> I would say the real question is how this hardware should look like in
> the device tree (overlay). Then, the compiler and/or build scripts can
> be adjusted to tolerate this.

When I checked, my "workaround" the check was silent, but I guess I
need to update the schema python module again and would get that
rabbit hole you went down.

But yes definitly. Especially with those follow up problems you
encountered, this makes it a problem to solve in the checker.

So the original layout is the best one to represent the endpoint and
I guess with the parent node being named "__overlay__" it should be
somewhat ok for the checker going "nah, it'll be fine - we're an overlay"



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
