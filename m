Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5820C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3sjapn+AuGtJc8qh5eaKf9QN1eKBAPh9ccML8rc1rE=; b=GqPWhFkXD0m2Fm
	gfNVJjMdYhZaEb/WN2D6E0JmnU2TKIoRyS5NXZ9p/hDS05NAEGLD1qmZGjpF7U2FI1ocN2WcrOh6F
	9zgcmzSZUhFjMHTmcODNB/uFCdWYD75HeHOokXOn93hnyDeHztGM5X5XCHo6OwD4zgUPsofj4EG8r
	c9zRPg8ZXxwFbfNSjWIIWnF0vphBAc0Cdt2DPc1bsIu80N05Bn4qRvzbq5jmIvH6hoGpZPf/SM7F3
	WQ5AwZG+xrFehsa8wVHZKOcmQzhqKAVxqZjctcbLwUQm7bNiTsMlS9/Rdlc/4ZvxTdAymMOW63FS1
	ktPVZmU0CtQ2KEo0n5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4UaY-0000000DP3Z-2Gv6;
	Tue, 07 May 2024 23:51:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4UaW-0000000DP2E-01Sa
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 23:51:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BD684CE0286;
	Tue,  7 May 2024 23:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44E07C2BBFC;
	Tue,  7 May 2024 23:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715125869;
	bh=nBkak3DvBc1FaTh/QK5dcoo1obeQ+aUlzl90N+QxZ3U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qYzlUkuPTXD/MSt+31ZNZCHjvIWMkvXz4qF5M5kBUYJriZ9Q76IbXYcZqGUTvSCyF
	 Ve6WQOleRQ+1gdzwXUe6KOEEqqUtDS+2sCURg8l4Ei0VsKBK6gLX8Py9DqoD3DTl2L
	 K6CaHhRVUVkLxhKHoSfpL6gnkHOLpLrF8rUJQmRtViCFANPF9qp2vjopFw3fOcdqjf
	 7sC4N4lwbXy04W5b2XbbacsqXw8+SkL7k7XrDHfcQPm33dLbCX/UlHkm4TyoUPhVs8
	 KeTXo95TliZij7wGhTHEdfnzlLCkpi+WfV4qxcorM+Ccmi+I2CsxDqhPzrnYTA3VHh
	 Ud7IteUsYMujw==
Date: Wed, 8 May 2024 01:51:02 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 13/14] arm64: dts: rockchip: Add PCIe endpoint mode
 support
Message-ID: <Zjq-Zto5KlOvm8Sj@ryzen.lan>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-13-a0f5ee2a77b6@kernel.org>
 <20240504173420.GJ4315@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240504173420.GJ4315@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_165112_428715_7B071CC7 
X-CRM114-Status: GOOD (  22.02  )
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

Hello Mani,

On Sat, May 04, 2024 at 11:04:20PM +0530, Manivannan Sadhasivam wrote:
> On Tue, Apr 30, 2024 at 02:01:10PM +0200, Niklas Cassel wrote:
> > Add a device tree node representing PCIe endpoint mode.
> > 
> > The controller can either be configured to run in Root Complex or Endpoint
> > node.
> > 
> > If a user wants to run the controller in endpoint mode, the user has to
> > disable the pcie3x4 node and enable the pcie3x4_ep node.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 35 ++++++++++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > index 5519c1430cb7..09a06e8c43b7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > @@ -136,6 +136,41 @@ pcie3x4_intc: legacy-interrupt-controller {
> >  		};
> >  	};
> >  
> > +	pcie3x4_ep: pcie-ep@fe150000 {
> > +		compatible = "rockchip,rk3588-pcie-ep";
> > +		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> > +			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> > +			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
> > +		clock-names = "aclk_mst", "aclk_slv",
> > +			      "aclk_dbi", "pclk",
> > +			      "aux", "pipe";
> > +		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
> > +			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
> > +				  "dma0", "dma1", "dma2", "dma3";
> > +		max-link-speed = <3>;
> > +		num-lanes = <4>;
> > +		phys = <&pcie30phy>;
> > +		phy-names = "pcie-phy";
> > +		power-domains = <&power RK3588_PD_PCIE>;
> > +		reg = <0xa 0x40000000 0x0 0x00100000>,
> > +		      <0xa 0x40100000 0x0 0x00100000>,
> > +		      <0x0 0xfe150000 0x0 0x00010000>,
> > +		      <0x9 0x00000000 0x0 0x40000000>,
> > +		      <0xa 0x40300000 0x0 0x00100000>;
> > +		reg-names = "dbi", "dbi2", "apb", "addr_space", "atu";
> 
> Isn't it common to define 'reg' property just below 'compatible'?

Looking at the result from:

$ git grep -A 4 "compatible = \"" Documentation/devicetree/bindings/pci/

Common, yes, but far from all examples in
Documentation/devicetree/bindings/pci/ do it that way.

The example in the yaml for this binding passes "make dt_binding_check".
If the device tree maintainers had a strong opinion on this, I would have
expected "make dt_binding_check" to emit a warning or error for this.

Additionally, the "pcie3x4" (RC-node) in rk3588.dtsi already use this same
ordering. I do think there is some value in keeping the ordering in "pcie3x4"
and "pcie3x4_ep" the same, so I will keep the ordering unless the device tree
maintainers start screaming at me :)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
