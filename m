Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8258AC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 09:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7BRCRdfiZpEtuufM8wZp9+8UqrSkDQBba/RoeDAFiA=; b=i50WvAoTdqoOkd
	swdES426c9G1Ve60Ou0JfGw7j5dlxYFDmpE3HMAXekVcyXkRNCI6HKJlzZsghclm+PEBTRVLbH26K
	zU73SvGA24NItfVdPH2HvbQd0N5TtzLvdH1FrZL5k2WmH4UDwRLq5YaCGlFH075hbEAdQULmqASxz
	u8BDgqAXq9Zo6693m3jqXySa9+GhsaH09r8jc/9xLbDzTiifj3w9FY0Bvc1Y6d6cP0M/Sps5rUhEx
	AHzZlE0gKGJbkkpblOkrZNZJWFUVLF8anTGKL48p4A77EFauZZhqg+WCLznjMuM6KJOTo+M8dQywP
	DO656Rn0TvkMF1WDgtSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppn2d-00AF0C-1v;
	Fri, 21 Apr 2023 09:26:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppn2Z-00AEyC-2V;
	Fri, 21 Apr 2023 09:26:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 12AAC61701;
	Fri, 21 Apr 2023 09:26:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64FF0C433D2;
	Fri, 21 Apr 2023 09:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682069210;
	bh=V4sdsVOUsepYZTjE1sLvK3nR6G8EVYU9R8GdYObEEvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=My36iI0dhWRkKXWHsstC4Ri45laeNZFmNEJZVDi9qspdjYu1xSzngDfgnr6Myz6YH
	 dr/J7zgKIjoaDHda2XgoIPuuzjb2Dv5VQaEPXXtCSD3y680WhzBILiaoaxL0CbcYoD
	 4H8g3c7MrI1QaSMPY4VcuYWPxG4mEziKqkkDCTDbAbIj06Rq/aIxfW1ywCTNOuY33y
	 NUcvo1lnHuZk/Be3JojEF2x3j2IJBWRxDGIqz2x4cEHCSVvKJfekOepR3Kj04VDYDt
	 YAI7KjKZYQqoDWkfDhwP1/INht5r5iKRcV1NmZyMeUDiEC2YpBWizPHVrcBWTVrtWj
	 me735zoPNvQIA==
Date: Fri, 21 Apr 2023 11:26:42 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, dlemoal@kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 06/11] dt-bindings: PCI: Update the RK3399 example to
 a valid one
Message-ID: <ZEJW0giyXAlNMYTz@lpieralisi>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
 <20230418074700.1083505-7-rick.wertenbroek@gmail.com>
 <172c46b7-256e-b09d-3940-880fa8989b49@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172c46b7-256e-b09d-3940-880fa8989b49@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_022651_891485_9DF0AA22 
X-CRM114-Status: GOOD (  24.98  )
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

On Wed, Apr 19, 2023 at 10:01:25PM +0200, Krzysztof Kozlowski wrote:
> On 18/04/2023 09:46, Rick Wertenbroek wrote:
> > Update the example in the documentation to a valid example.
> > Address for mem-base was invalid, it pointed to address
> > 0x8000'0000 which is the upper region of the DDR which
> > is not necessarily populated depending on the board.
> > This address should point to the base of the memory
> > window region of the controller which is 0xfa00'0000.
> > Add missing pinctrl.
> > 
> > Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> > ---
> >  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml      | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> > index 88386a6d7011..6b62f6f58efe 100644
> > --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> > +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> > @@ -47,7 +47,7 @@ examples:
> >  
> >          pcie-ep@f8000000 {
> >              compatible = "rockchip,rk3399-pcie-ep";
> > -            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0x80000000 0x0 0x20000>;
> > +            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
> >              reg-names = "apb-base", "mem-base";
> >              clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
> >                <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
> > @@ -63,6 +63,8 @@ examples:
> >              phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
> >              phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
> >              rockchip,max-outbound-regions = <16>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&pcie_clkreqnb_cpm>;
> 
> This is just example of the binding, you do not need to fill all
> unrelated (generic) properties like pinctrl.

Should I merge it as-is ?

Thanks,
Lorenzo

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
