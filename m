Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A66C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 15:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC9TlbdUN0BSkaNbd1ClBPGkMP0VyIFq6gRNIL6KduI=; b=B96qhKcgp+E3Kd
	dTab8wKYp21nKyb/q2bbwsvFqfUHS5xmo2ORx1i+dRVaQMxGAu5zavfPR5Pccd9tvpqVNhIQEk5tH
	nfYPx879OW6JlbVql2nLnCGQ0YSNCvocUuFPL4kOGCFp6G2JYLhYUtMYQ/0/ftWFV+8Pj3h5yXIJD
	wHjIO27CZJTqIGa95sZ//qNjHEzi+GnHGCw37KoB5+uYU8scIzdZpft7pzFxbRQlZ0r/jON+tkloD
	iYsC9+jZS5vBf1WIaOFsfQ3r0oYhhI1/aHBVMXbHdYltVafmxDVrBThSqMum9rEKVduT/T1o8aWwe
	KHsrIy6vo7FF0D8GLU6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Lw-00000009ElI-2q97;
	Thu, 25 Apr 2024 15:49:40 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Lp-00000009EkX-0AnC
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Apr 2024 15:49:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 45BE7CE1AB3;
	Thu, 25 Apr 2024 15:49:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 365C7C113CC;
	Thu, 25 Apr 2024 15:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714060170;
	bh=5YBMbBgmJq7CbTxFHE0N9JXI6gpr/AGXcaI74d6pkxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g++mn+dYfTbUVEDSLMzG4azF7CrCj+5myw18jIjhJzBWGNv5oyvChIhV2Lp/VebHa
	 ahptCo6Nt3L2GlW7OuXlkzkVHXjHmtf62xX2xBErYu9dbj7dbc9UY2uXAu5XyVcR5D
	 t12IfN+g8uUPiHyMmQyeWKnSyfYc4pZ52BFAAHfs3lxzaj2jy2j08ARmNM0fk+S8wB
	 tnCedI8hs7byei1z8DwszsIiayc3AuodHn5D3k8pguGNi+xYXdf7Ue2YhvJUw2f21c
	 E78iKaHd2ntNwHIa7/R0GDwDDd/EOK6l9wSgL6rsK1KAvWGMZl86hLh+ouOb1WA9zi
	 v20W42zf7zlIA==
Date: Thu, 25 Apr 2024 10:49:28 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/12] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
Message-ID: <20240425154928.GA2600809-robh@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
 <20240424-rockchip-pcie-ep-v1-v1-1-b1a02ddad650@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-1-b1a02ddad650@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_084933_530998_FEE704D7 
X-CRM114-Status: GOOD (  17.99  )
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

On Wed, Apr 24, 2024 at 05:16:19PM +0200, Niklas Cassel wrote:
> Considering that some drivers (e.g. pcie-dw-rockchip.c) already use the
> reg-name "apb" for the device tree binding in Root Complex mode
> (snps,dw-pcie.yaml), it doesn't make sense that those drivers should use a
> different reg-name when running in Endpoint mode (snps,dw-pcie-ep.yaml).
> 
> Therefore, since "apb" is already defined in snps,dw-pcie.yaml, add it
> also for snps,dw-pcie-ep.yaml.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> index bbdb01d22848..00dec01f1f73 100644
> --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> @@ -100,7 +100,7 @@ properties:
>              for new bindings.
>            oneOf:
>              - description: See native 'elbi/app' CSR region for details.
> -              enum: [ link, appl ]
> +              enum: [ apb, link, appl ]

This section is for existing bindings. IOW, don't use or add to them 
for new users. New users should "See native 'elbi/app' CSR region".

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
