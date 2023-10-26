Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8589DC25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 18:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmgh7tL2Vza2BB7bPA1OjSBHoEz+HnJ4jNJAPc6vv3M=; b=nTL2Fy4Cbgj6xW
	QLkecs0Ln68vffYuLleMCrJVqI/KPbO/m8wDRWW98p51EQCoYXdRYLjwRrg82E8o2804HogALVmFm
	A/t45QU02dB6/BzexRq3RAnEJ+g0tYVrvWAILaKDKYnJ3HG5+pqlcJpXkXMa3p9w6ozA7rqTJs9ce
	G+Ovug7352g5YwQaCmQ5BSAimRwHUtp9IxwMos70O1Jk+CCy3lcgAlU2q1hAs/Jzo//w/uweWaxUT
	iCuLgWP9QulwKnTd/MkkqsLAlomFDorb/pCbV4mwPBgjmF8y2CVc7OPEK6kOFiWpKmQZp4hRP/j7Y
	NOA9Lka7U/l9Akc+LMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw5CG-00EzpV-0P;
	Thu, 26 Oct 2023 18:35:08 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw5CC-00Ezoh-2q;
	Thu, 26 Oct 2023 18:35:06 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6cd09663b1cso662826a34.3;
        Thu, 26 Oct 2023 11:35:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698345303; x=1698950103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJ5d2hJDyEPiZfzXMV+6c/eLpjUEHH1CIiOk9L8U4nQ=;
        b=k8UMmn+9xTdgKIJATUiNVn5bijZQZAG2n3pHp++Ou3jRfmqnuTSapVp1Y6MEGaKB4w
         m3+BlIGMaLif9pxDB/6Jc3pvLMamP07RSweHBTrYPEvGSGOtGoBAGJT3cQS298vLCFpu
         LnE6KKqPjivuKbySFl4gf90OVV+ne+bYZWtmLTcvXyXWLZIkCGxcgPWyXKfEyxqXDv1V
         8k3c1qasl/TWveze5Q5NyedVRZiIJTpDNEnbsgl1sIVbax/0OsA64zMlqDX9JvXgx5K1
         b7MF/Iw0O4OF5KPeRLbkHVmfLXxSNKBr0LBLjyAYXXhMfmBBzlev3+LR/u631WeCN+hD
         8YvA==
X-Gm-Message-State: AOJu0YwXlnyvs24HaEcJe6Y7H9eC9ScV2KMdzbtTI2jlp4VG8Nc9301v
	1L1AenR0W9O99tM0DaByaQ==
X-Google-Smtp-Source: AGHT+IHUq+P2QKP2fK2MoJoveneBRt5qk3HCQylAhpNlbJSEDvZ7ZU+kZLkStB9OmmUewoPfot46MQ==
X-Received: by 2002:a05:6830:12c1:b0:6bc:de95:a639 with SMTP id a1-20020a05683012c100b006bcde95a639mr276977otq.16.1698345303599;
        Thu, 26 Oct 2023 11:35:03 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c23-20020a9d6c97000000b006c619f17669sm2733614otr.74.2023.10.26.11.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 11:35:02 -0700 (PDT)
Received: (nullmailer pid 4157785 invoked by uid 1000);
	Thu, 26 Oct 2023 18:35:01 -0000
Date: Thu, 26 Oct 2023 13:35:01 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Conor Dooley <conor@kernel.org>, Niklas Cassel <nks@flawful.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Message-ID: <20231026183501.GB4122054-robh@kernel.org>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-2-nks@flawful.org>
 <20231024-zoology-preteen-5627e1125ae0@spud>
 <ZTl0VwdFYt9kqxtp@x1-carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTl0VwdFYt9kqxtp@x1-carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_113504_918199_C5AB9B99 
X-CRM114-Status: GOOD (  27.78  )
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

On Wed, Oct 25, 2023 at 08:02:32PM +0000, Niklas Cassel wrote:
> Hello Conor,
> 
> On Tue, Oct 24, 2023 at 05:29:28PM +0100, Conor Dooley wrote:
> > On Tue, Oct 24, 2023 at 05:10:08PM +0200, Niklas Cassel wrote:
> > > From: Niklas Cassel <niklas.cassel@wdc.com>
> > > 
> > > Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> > > using:
> > > 
> > > allOf:
> > >   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > > 
> > > and snps,dw-pcie.yaml does have the atu property defined, in order to be
> > > able to use this property, while still making sure 'make CHECK_DTBS=y'
> > > pass, we need to add this property to rockchip-dw-pcie.yaml.
> > > 
> > > Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> > > ---
> > >  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > index 1ae8dcfa072c..229f8608c535 100644
> > > --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > > @@ -29,16 +29,20 @@ properties:
> > >            - const: rockchip,rk3568-pcie
> > >  
> > >    reg:
> > > +    minItems: 3
> > >      items:
> > >        - description: Data Bus Interface (DBI) registers
> > >        - description: Rockchip designed configuration registers
> > >        - description: Config registers
> > > +      - description: iATU registers
> > 
> > Is this extra register only for the ..88 or for the ..68 and for the
> > ..88 models?
> 
> Looking at the rk3568 Technical Reference Manual (TRM):
> https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part2%20V1.1-20210301.pdf
> 
> The iATU register register range exists for all 3 PCIe controllers
> found on the rk3568.
> 
> This register range is currently not defined in the rk3568.dtsi, so the driver
> will currently use the default register offset (which is correct), but with
> the driver fallback register size that is only big enough to cover 8 inbound
> and 8 outbound iATUs (internal Address Translation Units).

We should probably make the driver smarter instead or in addition. We 
have the DBI size, Just make atu_size = dbi_size - DEFAULT_DBI_ATU_OFFSET.

> According to the TRM, all three PCIe controllers found on the rk3568 have
> 16 inbound iATUs and 16 outbound iATUs, so if someone wants to be able to
> make use of all the iATUs on the rk3568, they will need to add "atu" to
> rk3568.dtsi.

At least for host side, the number of regions used is based on ranges. 
You'd be hard pressed to need more than 8. That or no h/w with 16 is 
probably why I said 8 was enough at the time.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
