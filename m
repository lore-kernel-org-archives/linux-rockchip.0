Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F3B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 12:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyNAclWqElxhCldglCH/1Q0nDOBmLq6K50LP/MgrVck=; b=3SknO3+CGysiZe
	uq4WXzdrFgFBUufObdu3JiZT5uuSMmUYyTg1fVT+P2b8fxyoQYegsKwc46SwjQOKmG8dpI2TQqZYK
	0B88fYQVFrgX5BcZ202jrJiLGap6s6+wP1WOp7S98d1lWwdv4irTnkK333NBzsUSh7UUxXVDyLcgm
	8epfycpOtrs+wdehQWKPu1TAwmGl/ezqBkuS6YrA/xEHY2wP0E6XPPFe2lIV11HO6VryDCWosCizn
	nvZUrYmVtgpJqa9MamnX5bqfZVBjmLI5XuDXsyFlnKV81jOeLooxIeXigBYLnzOLFe/Hg8Blelej0
	XzKt5PWpJjYtwEOFsdxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfMS-00CI5M-Tm; Mon, 28 Feb 2022 12:42:44 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOf0U-00C8w8-6R; Mon, 28 Feb 2022 12:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646050780;
 bh=eDnjD3CV02Uc/By04jlSmoifwR/p3yucck7qbvDxUlY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=B9BCTw46CSs6HdScf5XBawxD261BdUGbcVtvaZsdJDHi2aw34dyIzFwrX9OopqveD
 I2FtTc+nyZ9E4u5CgcH5n9+D6ghZCxaA62EeLjBh5jeEx35r22YPOwqDwutzAbWIrT
 /KLD3QdJm0+k9AFS8CXSWx8hQUCYiEv4XnfOeZNc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.12] ([80.245.79.12]) by web-mail.gmx.net
 (3c-app-gmx-bs53.server.lan [172.19.170.137]) (via HTTP); Mon, 28 Feb 2022
 13:19:40 +0100
MIME-Version: 1.0
Message-ID: <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org, Heiko Stuebner
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Aw: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Date: Mon, 28 Feb 2022 13:19:40 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
 <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:WaOTMMs0zzPP9tR16fWXqpWJRLEnDSFpogU6J4ahuEh214gtupGtD2mYIKJcs+tuuRER3
 hf7ggCrwJWr2C9y1xR0SZQqrW4Abh7eZAk31qY8QgryhDv05RhLHGLKXRCl8ukDxfL5xSNIiBx9A
 0LzDqJ4WiJXU6TVd+DB9w31d9fYxLHtsOSbnjZv1jqb38pJAyrLQgmcDFcAb+yF5gHspLU/8tLou
 31vNidvi2cMhKejH94AM30KcnwlIBpmI8yAu8mUOvX1sLvLYKG20d4efANu9L4kpunmzmx+lpM7W
 1A=
X-UI-Out-Filterresults: notjunk:1;V03:K0:76GDCbpdFcA=:wpvhXNgTMyp6Ol+GqGncQQ
 6fq/Zf0ws8kdPkPT2yLCA9KNFu5GcRg+DNyon0A0F0UzG1d8SHcs2P15344yAAgPuXpZee3vD
 /REh6YniW6B3jCUbf1po7hCbwiZtOUADjaLU/Wyjt+DmI14IfTO8XZfiuQ7TRi6vdAFaoaSrv
 cJ69NbpJSENtDCRa9k2naZBoUrKu1OzzRGBCdZ2X+yK/DwD1g9PqyuZJwadLwQWKaspcGgop8
 ckCLM5Q6E0dorKHzhyGlyYSdVrTCMoOvGJY/fqatDvlL0ETi3VDp/EgFiCMIva3yV+S/PQop9
 Gn1XQgg7/dzktSDRE6pnpsfkembpCIIj78hYuo4itrncQ4IEa3CiuXu7fzLqXpAyhyV5yKa6g
 VEnyk4ujidYUrNwN6XoD2hhq+D384cr9gzJLwITNfpFRePOLF6MlFzMNpSljLpPZVfHSzmLBl
 wWIFCqFuyR41sZeMRFfkjSIhp4rnCKoFYOqZ29+STVq+EIYgPsyA/F7EWuz/ECgWA1+JkOWZH
 ogg9h7Ap2bmbXBmkXh0zE4QqMioDH2T8A0UTjRn3ZJXYt77LBk9Okjh5ltXLKJC7dZJKKh7/t
 g7LTPpnSbtBz9OXpNTOSL4DVvTum6FTROLBL4Yu4JERHpkvLi+EpjQQVY3XdTi7MY8A856A04
 JgNKxhGYlvMsaPrfJodkgrTG6m7o2Uw3f1Fqmxl2mPXc4E3bz9xmhbHUdHTT5uPfG+mmwZ/mU
 13t6/8h2B/t/Vx1SJvaL7S4D0CEldIVN98gLMxOnm00wtqxcigkoJ5eF8ts9keS2203Pm6I0c
 T2Hl80h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_042002_695248_813F34BC 
X-CRM114-Status: GOOD (  31.39  )
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

Hi Krzysztof,

thanks for first review.

> Gesendet: Montag, 28. Februar 2022 um 11:08 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>

> On 27/02/2022 19:27, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>

> You missed devicetree mailing list (corrupted address).

sorry, devicetree ML was To, but forget the Cc-Header (prepared addresses in coverletter)

> > imho all errors should be fixed in the dts not in the yaml...

> > -- reg               : <registers mapping>
> > -
> > -Please note that when using "generic-ahci" you must also specify a SoC specific
> > -compatible:
> > -	compatible = "manufacturer,soc-model-ahci", "generic-ahci";
...
> > +properties:
> > +  compatible:
> > +    contains:
> > +      enum:
> > +        - brcm,iproc-ahci
> > +        - cavium,octeon-7130-ahci
> > +        - generic-ahci
> > +        - hisilicon,hisi-ahci
> > +        - ibm,476gtr-ahci
> > +        - marvell,armada-380-ahci
> > +        - marvell,armada-3700-ahci
>
> Order entries alphabetically.

ok

> > +        - snps,dwc-ahci
> > +        - snps,spear-ahci
>
> You converted the TXT bindings explicitly, but you missed the comment
> just below the 'reg' about generic-ahci. The generic-ahci never comes alone.

How should this comment be added? description above/below the compatible-property?
Sorry for dumb questions...this is my first yaml ;)

e.g.

properties:
  compatible:
    description:
      Please note that when using "generic-ahci" you must also specify a SoC specific
      compatible:
         compatible = "manufacturer,soc-model-ahci", "generic-ahci";
    contains:
      enum:

> The snps,dwc-ahci could come, although history shows that Synapsys
> blocks are commonly re-used and they should have specific compatible.
> Current users still have single snps,dwc-ahci, so it could be fixed a
> bit later.
>
> On the other hand, I expect to fix all the DTS in the same series where
> the bindings are corrected.

i don't know the marvell/broadcom-hw so i cannot fix them.
Just converted the txt to check my rockchip sata nodes and to be more
future-proof (no more exceptions like the marvell/broadcom)

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 3
>
> Items should be described. Next or this patch could add also clock-names.

i was told to drop clock-names (same for interrupt-names and reset-names) from dts
and in txt it was not there so have not added it

https://patchwork.kernel.org/comment/24755956/

> > +
> > +  interrupts:
> > +    minItems: 1
>
> You mean maxItems?

no, minItems, as interrupts suggests 1+ (same for phys)

> > +
> > +  ahci-supply:
> > +    description:
> > +      regulator for AHCI controller
> > +
> > +  dma-coherent:
> > +    description:
> > +      Present if dma operations are coherent
>
> Skip description, it's obvious. Just 'true'.

ok, took this from the txt

> > +
> > +  phy-supply:
> > +    description:
> > +      regulator for PHY power
> > +
> > +  phys:
> > +    minItems: 1
>
> maxItems?
> > +
> > +  phy-names:
> > +    minItems: 1
>
> Describe the items.
>
> > +
> > +  ports-implemented:
> > +    description:
> > +      Mask that indicates which ports that the HBA supports
> > +      are available for software to use. Useful if PORTS_IMPL
> > +      is not programmed by the BIOS, which is true with
> > +      some embedded SoCs.
> > +    minItems: 1
>
> You need a type and maxItems.

what will be the type of a mask?

> > +
> > +  resets:
> > +    minItems: 1
>
> maxItems?

if there is a known maximum....

> > +
> > +  target-supply:
> > +    description:
> > +      regulator for SATA target power
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +patternProperties:
> > +  "^sata-port@[0-9]+$":
>
> You limit number of ports to 10. On purpose? What about 0xa? 0xb?

oh, right, there can be hexadecimal...
thought this is only true for the main-node (address) and have only seen @0, @1 and @2

> > +    type: object
> > +    description:
> > +      Subnode with configuration of the Ports.
> > +
> > +    properties:
> > +      reg:
> > +        maxItems: 1
> > +
> > +      phys:
> > +        minItems: 1
>
> maxItems? Why do you put everywhere minItems? Are several phys really
> expected?

name suggests that it can be more than 1. i know from usb subsystem (dwc3 usb3) that a device can have more than one phy, and because in the txt there are no ranges i set everywhere MinItems to 1 with open end as i do not know all possibilities. Anything else will be trial and error...for all properties

> > +
> > +      target-supply:
> > +        description:
> > +          regulator for SATA target power
> > +
> > +    required:
> > +      - reg
> > +
> > +    anyOf:
> > +      - required: [ phys ]
> > +      - required: [ target-supply ]
> > +
> > +allOf:
> > +- $ref: "sata-common.yaml#"
>
> This goes before properties.
>
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +        sata@ffe08000 {
>
> Wrong indentation. It starts just below |

will fix it

> > +               compatible = "snps,spear-ahci";
> > +               reg = <0xffe08000 0x1000>;
> > +               interrupts = <115>;
> > +        };
> > +  - |
> > +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +        #include <dt-bindings/clock/berlin2q.h>
> > +        sata@f7e90000 {
> > +                compatible = "marvell,berlin2q-achi", "generic-ahci";
>
> This clearly won't pass your checks. I don't think you run
> dt_binding_check. You must test your bindings first.

i had them tested ...needed to add the includes...after that the dt_bindings_check was without errors/warnings

these are the commands i used:

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

> Best regards,
> Krzysztof

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
