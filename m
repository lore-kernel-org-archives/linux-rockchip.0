Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAECFC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z58NYDy1xbDzVOHsfD9Nez9smVLyhHkFigWT22CWoBo=; b=fChoSP1iHjOH9L
	0aaowKjYCLjmcJHCKmM2/d73cEJqjLFRl+ktJups3h5vfkjUPwoGNlPMqMO0B4V0WW8GSFxgr5fKC
	eNbrPORMdZH2GWtoKG6PGX71XWmMAmgxfdNRWemQdX0aMwm3cnwEeAkpmcBpZnpJtM5TDf1VnIIny
	biazkzNYAKvMjHBmUJ+GKi7NgkRKARzt0RiAyPDh/dqfjx3e/40CVCoq3NN92XLMz1ImyyvxGQECs
	y8+DgsB10+MnW9eOBF7DvsZ29fiPBkvk9fAveImX/INOXn0RRxOAqiObANleNDcVuxuT2FUGmTBHT
	jiYE/Q/TjoRdNOgS50Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqedD-009N70-Ji; Mon, 16 May 2022 17:35:43 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqedA-009N5t-9I; Mon, 16 May 2022 17:35:42 +0000
Received: by mail-oi1-f170.google.com with SMTP id v66so19486772oib.3;
 Mon, 16 May 2022 10:35:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yRCFWuG9Oqb4uyJxObAmt3C9VXrpqbJosiPlLmLl9sI=;
 b=cY5/phDNkhgEnbYvxsUetBKegrIl47DHkZPGRJxTjcnRjPxvTYOP8mpF9fbhyZQ04h
 rp6ahnEUOUPfixzORglfPz3Lo6gHBoVkhoLA3u/nY4aApRXdcUocqa08cCa5GB84vqtb
 YkYNbmy9Mp8HQ8iugYhZ5OP1oL7d+ERoLYIudM1MwauojtIWm7WjYbR5e7n0NGSdDBMV
 JBSF/I1ZdbzdAYbBoA8oV8H4wSVOhpCVElWvdMhHgSSpSzZS2sreZkLAfXqsEuXqy39H
 3/GxDedT+4gbP3ona0aT33Jkomxtnh1vEBZdt9/lm0GLZot3xjjawN3DL8+22kG+dkT1
 KdkQ==
X-Gm-Message-State: AOAM530y626j+MstvbB9rOGGC/k4Bq3evd3fhpN1+Ac2lDJQymzcBRpZ
 txy7safc0qMk4X7ny1BKzQ==
X-Google-Smtp-Source: ABdhPJxuclwaDZzyOItOmmGD3yThwcNVeOZQs+WOMuvGRRbmejydML51xYl4owmx8halO8SP4Fl2pw==
X-Received: by 2002:a05:6808:1703:b0:2f9:cd2d:41c5 with SMTP id
 bc3-20020a056808170300b002f9cd2d41c5mr14114818oib.77.1652722539072; 
 Mon, 16 May 2022 10:35:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 v2-20020a056870310200b000e686d1386csm5670158oaa.6.2022.05.16.10.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 10:35:38 -0700 (PDT)
Received: (nullmailer pid 2952486 invoked by uid 1000);
 Mon, 16 May 2022 17:35:37 -0000
Date: Mon, 16 May 2022 12:35:37 -0500
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
Message-ID: <20220516173537.GA2942634-robh@kernel.org>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
 <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_103540_362044_0F3E8F17 
X-CRM114-Status: GOOD (  24.72  )
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

On Sun, May 15, 2022 at 01:49:47PM +0200, Frank Wunderlich wrote:
> Hi
> 
> > Gesendet: Sonntag, 15. Mai 2022 um 01:14 Uhr
> > Von: "Rob Herring" <robh@kernel.org>
> 
> > On Sat, 14 May 2022 13:59:42 +0200, Frank Wunderlich wrote:
> > > From: Frank Wunderlich <frank-w@public-files.de>
> > >
> > > Add a new binding file for Rockchip PCIe v3 phy driver.
> > >
> > > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > >
> > > ---
> > > v3:
> > > - drop quotes
> > > - drop rk3588
> > > - make clockcount fixed to 3
> > > - full path for binding header file
> > > - drop phy-mode and its header and add lane-map
> > >
> > > v2:
> > > dt-bindings: rename yaml for PCIe v3
> > > rockchip-pcie3-phy.yaml => rockchip,pcie3-phy.yaml
> > >
> > > changes in pcie3 phy yaml
> > > - change clock names to ordered const list
> > > - extend pcie30-phymode description
> > > - add phy-cells to required properties
> > > - drop unevaluatedProperties
> > > - example with 1 clock each line
> > > - use default property instead of text describing it
> > > - update license
> > > ---
> > >  .../bindings/phy/rockchip,pcie3-phy.yaml      | 82 +++++++++++++++++++
> > >  1 file changed, 82 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: properties:clock-names: 'oneOf' conditional failed, one must be fixed:
> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too long
> > 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too short
> > 	False schema does not allow 3
> > 	1 was expected
> > 	3 is greater than the maximum of 2
> > 	hint: "minItems" is only needed if less than the "items" list length
> > 	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: ignoring, error in schema: properties: clock-names
> > Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.example.dtb:0:0: /example-0/phy@fe8c0000: failed to match any schema with compatible: ['rockchip,rk3568-pcie3-phy']
> 
> seems this is fixed when i remove the "minItems: 3" from clock names 
> (which is already fixed length because of the list).

Yes.

> needed to change type of lane-map to this:
> 
> $ref: /schemas/types.yaml#/definitions/uint8-array

Why? That's not a standard property though, so needs a 'rockchip' 
prefix. Though maybe a common property would be appropriate here.

> then it looks clean for it....
> 
> -m causes many errors unrelated to this schema-file even if i pass
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml

The fix is fixing the remaining 40 or so '-m' errors.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
