Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9AD7C25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 14:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFBVPFFgq/V4fqcTcQaFydxOFPuxzDB2Tt/GQO37ubQ=; b=T08G+LHpiMpiC7
	3ZCsHZUDUaaX+zA69yyy6VECStkQFqL4sZFGH3LdMbdZQQgoHwAUHjuzUtx+Nb0BGF2xWXGCKNKTK
	sEhLHd3JF0eJP4QV9ryvPD6vVdC/Z+n9GI9TnJONLpmh4wVZznO7uUsDS7opG8DaFpmp+tfJ+8mnb
	Qpyn8sLe8XZH4l1YaWwSyUPUjspjs5ved/LSA+T0eZ5wrI7IDnX0qS4UzyVyS3pZ0LZgMxoCdXxRu
	L6aABK89sF2A4JW1zon1tDAMZ3NrJyFVoAlUvAYeilLo885NKtwuO1os9OFobmqQAoiegMJW/a8fw
	xthuior/um0EDxMmfL6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1N0-00Eg2E-21;
	Thu, 26 Oct 2023 14:29:58 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Mw-00Eg0P-1I;
	Thu, 26 Oct 2023 14:29:56 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507bd19eac8so1443010e87.0;
        Thu, 26 Oct 2023 07:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698330590; x=1698935390; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OcqUQMLqvFMvSkNSx40kwQOwpdz0wVTfgpQiz0XbkjE=;
        b=WHTdeGNQoXi2o6XTw3tmruP6ykMDkRCvxlWOXLmOLyj9VrBibIipv59dLfUgz2DMIy
         HeUDwO1Rp3vI8XWSkIn51aiNGrHnLLluc9McqFM04kl9C0sQuOl0a4P/9e9EjBjAjDh7
         bCrwcya6uMrWD+pCxwukMSV/aNzRViH3CA/6x0uyrUwSLk/0f5x/bm/RILpI11LfWMdZ
         gD0iQ7JZB2QUaHhxyG1ojWLwuXe3CgWYJxaRnLY2joj1YFaT/kJIa6wnNzSdUasGgBi3
         U6ysRzfuWBwH2jgFTSAGQIFJbml0jbOR0bcg9vHohNfuY+DevAR8zIO8R2+lao2emASB
         pu0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330590; x=1698935390;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OcqUQMLqvFMvSkNSx40kwQOwpdz0wVTfgpQiz0XbkjE=;
        b=Gyl2AHsPVJnhGinwcg0dGUxGgd4b4ckT0tykUfJe+7W+iVTFXGgDSa3MYnsf1pcp1Y
         AnZT17YG4ZPiaDqonACY05ZkFQv7xBwtX/9mTN0Ssd9qNApOpi+WwWV4iz9VIptdjjLU
         3Uuc8AV2NpB+UXKqGdWZTUOu8OAxc5wehVYc8Sibpojax41S7qZFcmpRr9JT7ryUexqT
         16yZ1phraZc8kYOeXBUeGbQDTqtZC7/crffUO/I5T9Bg/AYq6Q11MA2aLQSr+nornlak
         52SSpyQdRYi7y4EMmNGJZNomLr2Z9L0Q8aXVA6jjLH3G5SAneOyB//nW3P56N/gsuKaq
         1iSg==
X-Gm-Message-State: AOJu0YyHEoow418RZ+qdnV79RZDaLQ1+6FLzX5E2EZEg4Fj9QWOCIBrS
	kPc84SnUAZebj9+gmBvY3xA=
X-Google-Smtp-Source: AGHT+IG4W6KM7EiUTq9lHS71jdk3jgu6/vPMQBbyGiHi6AGy9gc6T9FZph47UKPMCLho0Jz7f4tUOQ==
X-Received: by 2002:ac2:456e:0:b0:500:79f7:1738 with SMTP id k14-20020ac2456e000000b0050079f71738mr12829643lfm.17.1698330589625;
        Thu, 26 Oct 2023 07:29:49 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512325400b00507a387c4c4sm3034395lfr.229.2023.10.26.07.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:29:49 -0700 (PDT)
Date: Thu, 26 Oct 2023 17:29:46 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Conor Dooley <conor@kernel.org>, Niklas Cassel <nks@flawful.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: dwc: rockchip: Add dma
 properties
Message-ID: <lrqwv3vrwwchxkfan6r3rjmza43ggk6hcbhz24eqcf7ku2mwif@a4oj5ul4hbb3>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-4-nks@flawful.org>
 <20231024-glacial-subpar-6eeff54fbb85@spud>
 <ZTl1ZsHvk3DDHWsm@x1-carbon>
 <ZTmAxH0AXpCN1+G+@x1-carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTmAxH0AXpCN1+G+@x1-carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_072954_438866_8369913B 
X-CRM114-Status: GOOD (  44.87  )
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

Hi Niklas

On Wed, Oct 25, 2023 at 08:55:33PM +0000, Niklas Cassel wrote:
> On Wed, Oct 25, 2023 at 10:07:02PM +0200, Niklas Cassel wrote:
> > Hello Conor,
> > 
> > On Tue, Oct 24, 2023 at 05:30:22PM +0100, Conor Dooley wrote:
> > > On Tue, Oct 24, 2023 at 05:10:10PM +0200, Niklas Cassel wrote:
> > > > From: Niklas Cassel <niklas.cassel@wdc.com>
> > > > 
> > > > Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> > > > using:
> > > > 
> > > > allOf:
> > > >   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > > > 
> > > > and snps,dw-pcie.yaml does have the dma properties defined, in order to be
> > > > able to use these properties, while still making sure 'make CHECK_DTBS=y'
> > > > pass, we need to add these properties to rockchip-dw-pcie.yaml.
> > > > 
> > > > Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> > > > ---
> > > >  .../bindings/pci/rockchip-dw-pcie.yaml        | 20 +++++++++++++++++++
> > > >  1 file changed, 20 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > > index 229f8608c535..633f8e0e884f 100644
> > > > --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > > @@ -35,6 +35,7 @@ properties:
> > > >        - description: Rockchip designed configuration registers
> > > >        - description: Config registers
> > > >        - description: iATU registers

> > > > +      - description: eDMA registers

Are you sure the eDMA regs aren't just a part of the same space as
iATU and available within the default offset DEFAULT_DBI_DMA_OFFSET?
If it is then drop separate eDMA reg, having just 'atu' will be enough.

> > > 
> > > Same here, is this just for one of the two supported models, or for
> > > both?
> > 
> > For the 3 controllers found in rk3568, this range exists for all
> > (all of the controllers were synthesized with the eDMA controller).
> > 
> > For the 5 controllers found in rk3588, this range exists for only one of them
> > (only one of the controllers was synthesized with the eDMA controller).
> > 
> > 
> > > >    interrupt-names:
> > > > +    minItems: 5
> > > >      items:
> > > >        - const: sys
> > > >        - const: pmc
> > > >        - const: msg
> > > >        - const: legacy
> > > >        - const: err

> > > > +      - const: dma0
> > > > +      - const: dma1
> > > > +      - const: dma2
> > > > +      - const: dma3
> > 

> > While all the PCIe controllers on the rk3568 have the embedded DMA controller
> > as part of the PCIe controller, they don't have separate IRQs for the eDMA.
> > (They will need to use the combined "sys" irq, so the driver will need to read
> > an additional register to see that it was an eDMA irq.)

If it's some vendor-specific register, then the best solution would be
to create a custom IRQ domain with 'sys' IRQ being a parental IRQ and
with the "dma*" IRQs being the child IRQs. Then you can re-define the
dw_pcie_edma_ops.irq_vector method (and edma.nr_irqs field), which
would return the DMA IRQs from the new sub-domain.

If it's just all the IRQs combined in a single "sys" IRQ line with no
custom way to distinguish one from another, then you can re-define the
dw_pcie_edma_ops.irq_vector method with a method returning the 'sys'
IRQ vector (don't forget to set the edma.nr_irqs field). eDMA IRQ
handler will check whether the IRQ was originated by the eDMA
controller. 

> > 

> > For the rk3588, only one of the 5 PCIe controllers have the eDMA, and that
> > controller also has dedicated IRQs for the eDMA.
> > (It should also be able to use the combined "sys" irq, but that would be less
> > efficient, and AFAICT, the driver currently only works with dedicated IRQs.)

This is a standard way of the eDMA IRQs definition. So supposedly there won't
be problem with rk3588

> 
> We could go with Sebastian's suggestion to define a 1MB range for "atu", see:
> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/pci/snps%2Cdw-pcie.yaml#L76-L85

Right, That's what I asked in my very first message.

> 
> Which would allow the driver to probe if the eDMA is there or not
> (even if this is strictly bigger than the real ATU_CAP size, the size is still
> within the PCIe core's register map).
> 
> That would solve the problem that some pcie controllers, with the exact same
> compatible, has a "dma" range while others do not.
> (All controllers would have a 1MB atu range, and none of them would have the
> dma range specified.)
> 

> However, we would still have the problem that for the exact same compatible,
> some controllers have eDMA irqs specified in interrupts, and some do not...

You can define the normal eDMA IRQs as optional for all Rockchip
controllers (or for rk3588 only). They will be auto-detected by the
DW PCIe core driver as expected if the standard eDMA IRQs are
available. But for the rk3568 you'll need to redefine the
dw_edma_chip.ops operation to have a custom irq_vector() callback as I
described above.

> 
> But perhaps having mandatory atu range (and no dma range) + optional dma irqs
> is better than mandatory atu range + optional dma range + optional dma irqs?
> (At least from a DT schema maintainability PoV.)

As I mentioned in the first message, if eDMA CSRs are available within
the standard offset PCIE_DMA_UNROLL_BASE with respect to the iATU CSRs
base, then that is a single CSRs space (selected by the DBI_CS2=1 and
CDM_SB=1 internal IP-core signals) and just 'atu' reg is supposed to
be specified.

-Serge(y)

> 
> 
> Kind regards,
> Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
