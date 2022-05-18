Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2949C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 May 2022 15:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlzAn937hviekzHZnnIQs9LxAwiZnDvJB53Qctg+5VI=; b=OXRVcsOc83Fm7/
	dP0bHdF67z6AW5Id++sbcpCjpoIBFY9kwWT9dqfOSMkhnpHfZFYlEdKyqbf05NuvyezgfZip8wBPg
	m4o0lrYQlnhTJtytZcepkpKtfn9o5kf7s3RgQfKlvHR2kF3+DwGmj5qaZakl+EyGD+4VnfBhXbOS/
	wqTVdmIWUyl+JjK5uWu3A5TU70SwS2FU3U5qfKW/rvBeg7PXRgpatc8JJG9UipgFKlMH5VRv3DpZV
	xZs+9XRzjiHqhKrFMkdRrBTDPMMVzskdt/A3aq3QGzstpHPf6WVFii8IVYwG04d3TLNZ1VQ0Dls7W
	UOwvTUuw7IOuicz89WGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrM1n-002w0B-Df; Wed, 18 May 2022 15:55:59 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrM1k-002vy6-Le; Wed, 18 May 2022 15:55:58 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 m15-20020a9d608f000000b00606a788887aso1671099otj.0; 
 Wed, 18 May 2022 08:55:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pL9sXlkxO4wUxq+I5961tw5THWjp2m8gWvZxMl5uTTs=;
 b=QrCCS7YspsbT/bkrhAUeq60VOfBSdfRUBsnxtBLc3FoCOomQdKsOKQR5DSYnBU9fU3
 5S6sFBeVwSmhgYkqrBfHLGZHGM6iuNSetGJMejl+OmDkgaBpbGs0UTQ2VqNlxiwBeTp2
 jMKkSjxQV9wmp3KtZdEZoXN2EcGouq057eig0aZCwOO0v4dPJscNpb0T1j/Gz/Mf4B9t
 CnVsi6QSyE6dUHC8pLCQtw3G4G9/LxDBrcvR3N5RLMMr/XEvNNF6cYpmbKfmtrHIKuzo
 Z7v8+fVCyvnCnszGLU8zweK/7BSkmlsm0uvb4BfXy39erlclWn+wntBAy/szsGQ1bxSG
 OBoA==
X-Gm-Message-State: AOAM530l3tczO5RAGgS0Gz+aHPidZ/Fw1xyadsjuj26ONhVJNWcztQlM
 6Jia5hGasMDwl8aEB7z1Nlg7Gj4Nmw==
X-Google-Smtp-Source: ABdhPJxiry19r1K5KnHA2+Vc2jieYBIM7bIX3w1IUZHtsbb6TFULxR9rOzLG/JZJSgpOalKPbr31YA==
X-Received: by 2002:a05:6830:2387:b0:606:4470:133 with SMTP id
 l7-20020a056830238700b0060644700133mr120520ots.133.1652889353575; 
 Wed, 18 May 2022 08:55:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 i131-20020acaea89000000b00325cda1ffbasm846556oih.57.2022.05.18.08.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 May 2022 08:55:52 -0700 (PDT)
Received: (nullmailer pid 3393244 invoked by uid 1000);
 Wed, 18 May 2022 15:55:51 -0000
Date: Wed, 18 May 2022 10:55:51 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, Vinod Koul <vkoul@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Message-ID: <20220518155551.GB3302100-robh@kernel.org>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
 <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
 <20220516173537.GA2942634-robh@kernel.org>
 <9496CAFB-6CB6-4BDA-A539-3A6E1B562299@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9496CAFB-6CB6-4BDA-A539-3A6E1B562299@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_085556_762162_DA0C1A96 
X-CRM114-Status: GOOD (  22.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, May 16, 2022 at 09:21:31PM +0200, Frank Wunderlich wrote:
> Am 16. Mai 2022 19:35:37 MESZ schrieb Rob Herring <robh@kernel.org>:
> >On Sun, May 15, 2022 at 01:49:47PM +0200, Frank Wunderlich wrote:
> >> Hi
> >> 
> >> > Gesendet: Sonntag, 15. Mai 2022 um 01:14 Uhr
> >> > Von: "Rob Herring" <robh@kernel.org>
> >> 
> >> > On Sat, 14 May 2022 13:59:42 +0200, Frank Wunderlich wrote:
> 
> >Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> >> > >
> >> >
> >> > My bot found errors running 'make DT_CHECKER_FLAGS=-m
> >dt_binding_check'
> >> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >> >
> >> > yamllint warnings/errors:
> >> >
> >> > dtschema/dtc warnings/errors:
> >> >
> >/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml:
> >properties:clock-names: 'oneOf' conditional failed, one must be fixed:
> >> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}]
> >is too long
> >> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}]
> >is too short
> >> > 	False schema does not allow 3
> >> > 	1 was expected
> >> > 	3 is greater than the maximum of 2
> >> > 	hint: "minItems" is only needed if less than the "items" list
> >length
> >> > 	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
> >> >
> >/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml:
> >ignoring, error in schema: properties: clock-names
> >> >
> >Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.example.dtb:0:0:
> >/example-0/phy@fe8c0000: failed to match any schema with compatible:
> >['rockchip,rk3568-pcie3-phy']
> >> 
> >> seems this is fixed when i remove the "minItems: 3" from clock names 
> >> (which is already fixed length because of the list).
> >
> >Yes.
> >
> >> needed to change type of lane-map to this:
> >> 
> >> $ref: /schemas/types.yaml#/definitions/uint8-array
> >
> >Why? That's not a standard property though, so needs a 'rockchip' 
> >prefix. Though maybe a common property would be appropriate here.
> 
> Originally it was a bool property named "rockchip,bifurcation" and we 
> changed it (after comments) to be a more generic property "lane-map" 
> that can be re-used on other vendors/controllers/phys.

Fair enough. The type needs to be defined in a common binding though. 
phy/phy-provider.yaml in dtschema probably.

We already have clock-lanes and data-lanes for other serdes interfaces. 
Maybe data-lanes works here?

> Driver reads as u8 array and range is small enough for u8 even if 
> used for larger controllers (e.g. PCIe x16).

Not arguing that it shouldn't be, just confused how the type was related 
to warnings.

> 
> >> then it looks clean for it....
> >> 
> >> -m causes many errors unrelated to this schema-file even if i pass
> >>
> >DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> >
> >The fix is fixing the remaining 40 or so '-m' errors.
> 
> So now clean for you(r bot), too? Did only get a bunch of other unrelated messages.

No, the bot does a baseline build and extracts the diff in warnings. 
Still too many warnings popping up frequently... :(

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
