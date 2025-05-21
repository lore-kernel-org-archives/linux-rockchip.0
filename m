Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56C7C54756
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vLodZxJmpIa4b8nDyQ1epkHgABdAKJEBulNYsyR7zQ=; b=pWzYarmOHkMKp6
	fPiX0/4MgxkYuBV1grN/GdNWZJJ1+vbBbeXf4cSWA72V1gnoP8LvgwH1PUQ7lV/DA/4Y6lxUlkc//
	0KJYUfPreGWKGrnro1NsKnhvmG7Bw9F/dm5KFED1dfoMo0Y9AhzclPOf5fshZmh5ahMM0KWD+c9Bd
	Frmp9dBLpHBQEoDKzWbsShciLgLTaA7U/nlbAHSIk6lTboSqbjXLzUVw2zz8afeQP5AuaLQ/7+rma
	P4BwZ/LEmfd9AdILckj3Rj+/EnXtKfz7gVIvXSdo2/+260rb20oqLmFMcDcWJbIqWMMDpSvj98It5
	xgbamjaydfpJpor+Ta1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHZct-0000000EdVH-1w5V;
	Wed, 21 May 2025 02:56:15 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHZAx-0000000Earo-138r;
	Wed, 21 May 2025 02:27:24 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9139525F81;
	Wed, 21 May 2025 04:27:16 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id okZ1Ld-0Nx5j; Wed, 21 May 2025 04:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1747794435; bh=uynU6P2rot4uafnvWQDI8RKCr3IPZZ3LS41NhE+S4sE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iex3AFRz+Gx1/hMg4ww6RLlp29PSfbIx3tRA+ixkIiY1d83Jx8R1JsThAYZRcPTUQ
	 /1huVKBGcpZtVrhw19IJV0gITW9pU5C9oCFypexaAUPIfTuihShUzH8p2+WZO4SguT
	 VeTi922bclzO2bGu6XhrZZdX6uSVog+eeUjmASuSJvCArHfPoHqx2jNwNT5c9nIXwL
	 1Rno4kVaoFa5nhIoUhPeFcBnnUDk+mw79fMSv6o20dURjRtOjsJa4HVPtRdeh7YY26
	 Q8TFna9BnpmZqUc6Lj14Ua/HQ3qzscAeCHS70i8/2yI8rn9kGMNGNZ6Mkb01Rvk5c0
	 iEftsaQ/fO52A==
Date: Wed, 21 May 2025 02:27:00 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v3 5/5] arm64: dts: rockchip: Add naneng-combphy for
 RK3528
Message-ID: <aC059MLlfeUT2a18@pie>
References: <20250519161612.14261-1-ziyao@disroot.org>
 <20250519161612.14261-6-ziyao@disroot.org>
 <079c08bc-e8cc-4ed6-a71e-7ef103f635c0@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <079c08bc-e8cc-4ed6-a71e-7ef103f635c0@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_192723_698885_09438172 
X-CRM114-Status: GOOD (  22.12  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Shresth Prasad <shresthprasad7@gmail.com>, Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, May 20, 2025 at 07:51:57PM +0200, Jonas Karlman wrote:
> On 2025-05-19 18:16, Yao Zi wrote:
> > Rockchip RK3528 ships a naneng-combphy that is shared by PCIe and USB
> > 3.0 controllers. Describe it and the pipe-phy grf which it depends on.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > index b2724c969a76..314afb94e19b 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > @@ -318,6 +318,11 @@ vpu_grf: syscon@ff340000 {
> >  			reg = <0x0 0xff340000 0x0 0x8000>;
> >  		};
> >  
> > +		pipe_phy_grf: syscon@ff348000 {
> > +			compatible = "rockchip,rk3528-pipe-phy-grf", "syscon";
> > +			reg = <0x0 0xff348000 0x0 0x8000>;
> > +		};
> > +
> >  		vo_grf: syscon@ff360000 {
> >  			compatible = "rockchip,rk3528-vo-grf", "syscon";
> >  			reg = <0x0 0xff360000 0x0 0x10000>;
> > @@ -867,6 +872,23 @@ dmac: dma-controller@ffd60000 {
> >  			arm,pl330-periph-burst;
> >  		};
> >  
> > +		combphy: phy@ffdc0000 {
> > +			compatible = "rockchip,rk3528-naneng-combphy";
> > +			reg = <0x0 0xffdc0000 0x0 0x10000>;
> > +			#phy-cells = <1>;
> 
> Should probably be sorted at end or before resets prop.

Will sort the properties.

> 
> > +			clocks = <&cru CLK_REF_PCIE_INNER_PHY>, <&cru PCLK_PCIE_PHY>,
> This break the ~80 line length limit mostly kept in this file.

Oops, I didn't notice it. Will split them into lines.

> > +				 <&cru PCLK_PIPE_GRF>;
> > +			clock-names = "ref", "apb",
> > +				      "pipe";
> 
> Could be kept on a single line.
> 
> > +			assigned-clocks = <&cru CLK_REF_PCIE_INNER_PHY>;
> > +			assigned-clock-rates = <100000000>;
> 
> Other assigned-clock props are sorted before clocks props in this file.
> 
> This is also missing power-domains information (also missing from
> dt-bindings patch):
> 
> 	power-domains = <&power RK3528_PD_VPU>;

I didn't expect your power-domain series when writing v1, thanks for the
reminder.

As the power-domain series just came out, I'd like to wait until it
merges and then work further on RK3528 support for naneng-combphy.

I'm not sure whether it's possible to get the combphy cleanup patch (3th
in this series) merged first. It should be ready for merging and I think
this may avoid possible conflicts in the future, Any suggestions will be
appreciated.

> > +			resets = <&cru SRST_PCIE_PIPE_PHY>, <&cru SRST_P_PCIE_PHY>;
> 
> This also break the ~80 line length limit mostly kept in this file.

I'm willing to keep the ~80 limit and will split the line.

> Regards,
> Jonas
> 
> > +			reset-names = "phy", "apb";
> > +			rockchip,pipe-grf = <&vpu_grf>;
> > +			rockchip,pipe-phy-grf = <&pipe_phy_grf>;
> > +			status = "disabled";
> > +		};
> > +
> >  		pinctrl: pinctrl {
> >  			compatible = "rockchip,rk3528-pinctrl";
> >  			rockchip,grf = <&ioc_grf>;
> 

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
