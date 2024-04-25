Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44ED2C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 15:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzjFCM4n5pxA3XTbH8sXnz7x4twv9m7EtpjrFW7/nUg=; b=gVt9s+rHZPg1yi
	fSazLH8S0AnxSQHG9P7bgmR+Kg9O/Z27trHctu9o85k9RjLuPaM4lhLOHZzHAio13ckgUtiyPn8yQ
	GNR+YUsH7gd1vUPJ/eEGYMFvKh1+BOPeWhpqUcYzHlTr93KppBJdLvVqVRtPJXlZzoi7toXEM3ep3
	pXYZq9kdJlZsYHDBxT4H2HhX93WMg0ZJmDSzC56GYloC++qJD0TjrTPSLc4ragVZFiyM04TCJWR6H
	I+x65mrz8M69vAQevZY6XlCYKjgVMJIb0osryvxdeTDEv1CA7KfUY/PcJo0ZJ/5SPnbCUOlWaslTg
	/wdxe+12bmmO6XGXIdXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Qw-00000009FkH-3C5C;
	Thu, 25 Apr 2024 15:54:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Qt-00000009FjO-39mr
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Apr 2024 15:54:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6C618CE1AD9;
	Thu, 25 Apr 2024 15:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E7EFC113CC;
	Thu, 25 Apr 2024 15:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714060484;
	bh=Dn/pRh2oUukCj1ggIH8ve2cqjZLV2z01dMU5qi0dgxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A1dxq/OgCC+6mzUVThmVD6yMrnhKwzacu/+ovRKNx6/GDPwp0T0LGvLjgNyXup2/8
	 vZWV2GpoJArP40L8RXGwDSgAfv5fiyd7iACo58m85wksuI8LxafwB1SCA4LjXZS7Rh
	 RTa4ZnELoNNL79hYqMsPstAokBKdSGCPaIeI4hZyA9K521DuvZfuxcmsGgaJxkW/3C
	 54kvsYhDmxy30qUjwY77Q1TxXbNbo41q3F7iy9PqbwTxihdpBHgc6h8g3Rtu7B8r5A
	 tk3ahS5J1tvQB6NRpW4lkwoy7UFKpv0ql5pMxQEU5dvFEq2/nBJzO3RWypqca/zhx5
	 Gi5Qj669RS+Cg==
Date: Thu, 25 Apr 2024 10:54:42 -0500
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
Message-ID: <20240425155442.GA2610968-robh@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
 <20240424-rockchip-pcie-ep-v1-v1-1-b1a02ddad650@kernel.org>
 <20240425154928.GA2600809-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240425154928.GA2600809-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_085447_995527_C1364278 
X-CRM114-Status: GOOD (  20.46  )
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

On Thu, Apr 25, 2024 at 10:49:28AM -0500, Rob Herring wrote:
> On Wed, Apr 24, 2024 at 05:16:19PM +0200, Niklas Cassel wrote:
> > Considering that some drivers (e.g. pcie-dw-rockchip.c) already use the
> > reg-name "apb" for the device tree binding in Root Complex mode
> > (snps,dw-pcie.yaml), it doesn't make sense that those drivers should use a
> > different reg-name when running in Endpoint mode (snps,dw-pcie-ep.yaml).
> > 
> > Therefore, since "apb" is already defined in snps,dw-pcie.yaml, add it
> > also for snps,dw-pcie-ep.yaml.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> > index bbdb01d22848..00dec01f1f73 100644
> > --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> > +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
> > @@ -100,7 +100,7 @@ properties:
> >              for new bindings.
> >            oneOf:
> >              - description: See native 'elbi/app' CSR region for details.
> > -              enum: [ link, appl ]
> > +              enum: [ apb, link, appl ]
> 
> This section is for existing bindings. IOW, don't use or add to them 
> for new users. New users should "See native 'elbi/app' CSR region".

Err, I guess this is an existing user for the most part.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
