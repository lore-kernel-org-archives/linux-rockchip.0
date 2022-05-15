Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC3EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbKU1klm5PFLQGwFc81Ksmu+5sHU2sb+zjG3O3uhp44=; b=ax5zmDUi7Buv3b
	s57XfDrLhNKXCRJOFbrtbrttACefCKS79yUwjMaoxlww2B3DUgxLrunkegl45kkk8iSHDwRmzljAg
	OhwkmKYqkcwM7o3fUQ9nnV+jkIoKvsjE2V3raqgPGoSnMSXBi2P4BKgZhjvW/xkKJKHQB0i8i/pEy
	boYA0VVHQVpNAUpKSXJgwKEM9+P4TwUWBZL1lEpQh8kvXT07lbU3pMhvPJ7j+c/onhu6HOcTghn7v
	H9XlGNwzhBI7XhpLyEneK8lOoslilHGEg520q/lO1/rnU8Iin7ktVskplV1YnJM1e0dZ8tVK/m8gX
	2ccZq/6dIK91bVa9VQsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqClN-003vee-Sy; Sun, 15 May 2022 11:50:18 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqClK-003vcg-Eo; Sun, 15 May 2022 11:50:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652615387;
 bh=B54b8i/DJeeMKAG6eeLRs8Eg71xNxoV1yns596upSxo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KZU3p+Wx1KBt/Lqv9OJbTi7Ehf3YdK1vP//M3q2xGBD0rekA1/r7t0037nVPPzgqg
 OpkXodRp8QArExZJmHXpP23WW0wvJ5GXzn3lyWvJpZxQyvdjj+3LRFsCL9Q+D7O3Kb
 bdSOJCr/Z0EaBW8OrHyet4TzApAZHrjf9oG9M6go=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.155.220] ([217.61.155.220]) by web-mail.gmx.net
 (3c-app-gmx-bap15.server.lan [172.19.172.85]) (via HTTP); Sun, 15 May 2022
 13:49:47 +0200
MIME-Version: 1.0
Message-ID: <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, Michael Riesch
 <michael.riesch@wolfvision.net>, Vinod Koul <vkoul@kernel.org>, Johan
 Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Bjorn Helgaas
 <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Subject: Aw: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Sun, 15 May 2022 13:49:47 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:vyz+cZ1FBTfjDhfQEhv1JzESF6L56qiBrPOQZS9cHKD6f4k7h++sUqzAQ7FmgPedf81JC
 U48uvEu/vudC4ZpfT/fIWI9vVoLc8tNndbfZsqX0t7UFqMM00+4CSKXxw2aARFB+ZM2nBFucDWCt
 jm125jW3y59zpsu1G3UIRZWmMwTOzvONPEjvyTvOwLuHceoIsVsOxzZZEXsq1BgNyzcvRhugBlZt
 AJJ87wLTUxaLMgyFoRqkwSdJUddjxr3JGhC2Sh1cgKGXyS918z8pOFI8yYFaIr48XVG7rG67/uDg
 Uc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:S/t/BYr4iXI=:8wqNb/mB9PaXLXn1njkTeV
 hOHvGGfN3VE+cgjjRhr1zCt4qjbvjx1NmiPGQQYA28B5Z9ftYVAmN7zvzVa9t2M18+t8SIkRc
 EIvVnlSitX6gs5p443xj8JynkKVYTYFAKKO2zv9J70EkEiGQIkXIpMjrlNtRt4jm7xsDprNEV
 diKQwQrcGed0x09qWJ8Mlvc2zPk9ECCCdBtT+8EPE0eHu7GO2OdALNoe+YrpSP2Nt0e/rpkwD
 77lapCoazyx4Ee5jjTQ9HZCQBq8/hah+QiDNd6y/ShkOS+cl/DAbQNr0G8liqWE/TKEwY1PWL
 7TTQjRViOUHYkpXhHAQFZd73CCAslqZ6dyGssEI5ERtsmEjsLGkmh2P8zDBNWunETwUN28M/j
 HvirtANDkBFM3Ybm6HImIb7CU6CQ/fZ2TKHYrDMPqqPqA7SqTMWmXArtq1uYo9GE4jBGPU3DW
 Cl3ijgnJujsGqc+hfsesetmrCcM6T13jON1scUX1uMNNAciZL5n7kzcOLSw0fm/50eWlE2rf1
 P+rf/7Z2FQ1prZduh0N1rM1rDFKeRGbjlDTpBpniEktom7Jd+qEtNQroC48NkzPktKa5M+vsy
 OSMwYEqBocV/w8MSxZBSCsT5Vbu16h1mHYE0AlIscgWyd89cWtgef3aoJvYz1hITdNYeF0R7X
 AuQgnB729Uw0tVZr04bsAGh7pnUfq0Gi6rtUA++edXIVVlnLte49gpShgrJ5mQWFHGWpvg/7u
 7V38Z4bgTTRHQCFZB38ikUMslJO/bM4BJzgjD6gK4io2xLPml/828389C0YEWkLUoCmotR89J
 ZnC15/y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_045014_993977_C87F16B3 
X-CRM114-Status: GOOD (  19.01  )
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

Hi

> Gesendet: Sonntag, 15. Mai 2022 um 01:14 Uhr
> Von: "Rob Herring" <robh@kernel.org>

> On Sat, 14 May 2022 13:59:42 +0200, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > Add a new binding file for Rockchip PCIe v3 phy driver.
> >
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> >
> > ---
> > v3:
> > - drop quotes
> > - drop rk3588
> > - make clockcount fixed to 3
> > - full path for binding header file
> > - drop phy-mode and its header and add lane-map
> >
> > v2:
> > dt-bindings: rename yaml for PCIe v3
> > rockchip-pcie3-phy.yaml => rockchip,pcie3-phy.yaml
> >
> > changes in pcie3 phy yaml
> > - change clock names to ordered const list
> > - extend pcie30-phymode description
> > - add phy-cells to required properties
> > - drop unevaluatedProperties
> > - example with 1 clock each line
> > - use default property instead of text describing it
> > - update license
> > ---
> >  .../bindings/phy/rockchip,pcie3-phy.yaml      | 82 +++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: properties:clock-names: 'oneOf' conditional failed, one must be fixed:
> 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too long
> 	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too short
> 	False schema does not allow 3
> 	1 was expected
> 	3 is greater than the maximum of 2
> 	hint: "minItems" is only needed if less than the "items" list length
> 	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: ignoring, error in schema: properties: clock-names
> Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.example.dtb:0:0: /example-0/phy@fe8c0000: failed to match any schema with compatible: ['rockchip,rk3568-pcie3-phy']

seems this is fixed when i remove the "minItems: 3" from clock names (which is already fixed length because of the list).

needed to change type of lane-map to this:

$ref: /schemas/types.yaml#/definitions/uint8-array

then it looks clean for it....

-m causes many errors unrelated to this schema-file even if i pass
DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml

will wait a bit for other comments (for driver) till i send another version. maybe you can confirm my changes are the right way to fix.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
