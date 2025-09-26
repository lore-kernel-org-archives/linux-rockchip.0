Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A9DCAC5B9
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Sep 2025 11:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AW9P7iY/PGZEJa9QqF7q0mIkFV+Fyz4jnaT5tuHkCQ=; b=bG+LS35Ss/A1vJ
	OQ6gwiNt48qI6wLZS0NcOuCwkguaZ1zKoTpI3DKuNA0hPK0QsyWhqLsb9M8KHbLXROGJquX45FF+d
	GrrAMKDBGuxWGiCXzPx4fvwl2mFQc7+MWYzEFxnxzGlmv5qeSkLubo+8sS4NardaP7LiFh2nQJhlj
	0NazgSOcfQuh3YgxLY8wm3r+xaqE0eReJcdZjtmy9T6n81el4g95uqA+Wcz+L1+oc35uXpdoKPbAl
	Js9nbF9mzuUcHjIh4IUNlqbMLAnAM6sTbXuTTvr8j5f1Rl+bG98eHesqyfQnUJfdda8h4xJ670Xmv
	C5KUCHLqueepzt31q3rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2758-00000000xyG-1OBS;
	Fri, 26 Sep 2025 11:57:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2756-00000000xy5-3MJf
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Sep 2025 11:57:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3546661D35;
	Fri, 26 Sep 2025 11:57:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C4DFC4CEF8;
	Fri, 26 Sep 2025 11:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758887863;
	bh=GyJJADYSG1yxUMHdHsuP8BKn6zhjo/vKfy5vVp4N7dQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xehh9UaeUOPNy/xwaZmOmuA5IciZ/ZknYpHXQ6MWrW/n4qBHGRvXEmioJT50y9Ook
	 rfP3i3k9YxgMmZ2RZ52DqIAVvZCFhVgAiVZVhpxEj3n55PIj71xrke1c1udH90nPo4
	 e0zaS42NWwfuqdfa+lfc+j5QJeXElOWHGdGSFoxV++dVNftUi35ZkAu6ziHxzOcJBs
	 bIWNq6vMD5kkztBBQPbWhiC224GKeDtmJVwPFqoV0rTMrGJjxDo+znqycnoi6XqAYf
	 OXAnO/Rp3MZf+tFrmykJo7LRnDP8wP1mfWWOe5P+BkXHFzSIMEwDtzaAXOVb3gRQ6u
	 asXMWuKiVvHwg==
Date: Fri, 26 Sep 2025 13:57:40 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-map for pcie3x4_ep
Message-ID: <aNZ_tDfgq8ogvTHx@ryzen>
References: <20250908162400.535441-2-cassel@kernel.org>
 <aL9J62Rg2oNlQygN@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aL9J62Rg2oNlQygN@lizhi-Precision-Tower-5810>
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

On Mon, Sep 08, 2025 at 05:26:03PM -0400, Frank Li wrote:
> On Mon, Sep 08, 2025 at 06:24:01PM +0200, Niklas Cassel wrote:
> > Support for msi-map in the pci-ep device tree binding was added in
> > commit a6aed6b9c79e ("dt-bindings: PCI: pci-ep: Add support for iommu-map
> > and msi-map").
> >
> > The PCI endpoint doorbell feature was added in commit 1c3b002c6bf6 ("PCI:
> > endpoint: Add RC-to-EP doorbell support using platform MSI controller").
> >
> > The PCI endpoint doorbell feature requires:
> > -An interrupt controller that implements GIC interrupt translation
> >  services (ITS).
> > -msi-map being defined in the pcie endpoint device tree node.
> > -CONFIG_PCI_ENDPOINT_MSI_DOORBELL being enabled.
> >
> > Add msi-map to the pcie3x4_ep device tree node.
> >
> > With this, the pci endpoint kselftest doorbell test case passes:
> >  # pci_endpoint_test -r pcie_ep_doorbell.DOORBELL_TEST
> >  TAP version 13
> >  1..1
> >  # Starting 1 tests from 1 test cases.
> >  #  RUN           pcie_ep_doorbell.DOORBELL_TEST ...
> >  #            OK  pcie_ep_doorbell.DOORBELL_TEST
> >  ok 1 pcie_ep_doorbell.DOORBELL_TEST
> >  # PASSED: 1 / 1 tests passed.
> >
> > Cc: Frank Li <Frank.Li@nxp.com>
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > index 90414486e466f..c0121aea791d7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > @@ -389,6 +389,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
> >  		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
> >  				  "dma0", "dma1", "dma2", "dma3";
> >  		max-link-speed = <3>;
> > +		msi-map = <0x0000 &its1 0x0000 0x1000>;
> 
> Not sure how your hardware map PCIe rid at EP side. If your hardware direct
> use RC's RID, difference host may use differecne RID. I remember you met
> similar problem when enable IOMMU.

Yes, the Requester ID will be the BDF of the Root Complex which is sending
the request to the endpoint.


> 
> Generally, Only 1 EP support, you can use msi-mask=<0> map all RID to a
> fixed value, But it also needs change glue layer configure to force to
> use the same RID.
> 
> I suppose this may not work if connected to second PCIe host slot.

I tested the patch with three different hosts.

On Intel and Rock5b host, this patch both worked fine:
ok 1 pcie_ep_doorbell.DOORBELL_TEST

On another ARM64 board, this patch did not work.
I tried adding msi-map-mask = <0>;

But still no luck.
I'm not sure what is missing in the glue driver, because AFAICT,
the logic parsing the msi-map-mask is already in
drivers/irqchip/irq-gic-its-msi-parent.c

Also, the device tree binding in
Documentation/devicetree/bindings/pci/pci-ep.yaml

Does mention that:
         - Bits [2:0] for the function number (func)
         - Bits [18:3] for the virtual function index (vfunc)

      However, the EP cannot rely on Requester ID (RID) because the RID is
      determined by the PCI topology of the host system. Since the EP may be
      connected to different PCI hosts, the RID can vary between systems and is
      therefore not a reliable identifier.

      The resulting device ID is computed as:

        (func & 0x7) | (vfunc << 3)

      The property is an arbitrary number of tuples of
        (device-id-base, msi, msi-base,length).


Thus, I don't see that the Requester ID is used at all.

Anyway, considering that this patch does not work with all hosts,
it is best to not merge this patch for now.



Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
