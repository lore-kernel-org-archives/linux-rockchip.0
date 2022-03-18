Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD031C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Mar 2022 10:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqtZWT1GEQaYTdI0e3CviX2ipf5gpZKN2scKLgyk8fY=; b=guxXRRXIRI+8tn
	XfhLz50+8wPoX4Ahm6erHPz9iYtyBMjzMHUyY1LGugG19Kejxk+XZ9XL7yBwU0e6zkSpb2DCTgNXP
	wJQS1zH3DoL398TYvRuHvtL/2G6fJTkYAhtTwSkSeruqtECB2+p5agYqI+L7MHlGf4gtzqBjjk51r
	SXsCf56KCgj6RbxDDvIlUMVnKr/ZEW7nwPjibIMrYDk4W78qFi0gdvcWN5aJd649omQq9Zw7QbwzV
	7MLz6HnQiF87kEC6SLULSpocmD5O4Ladgkf757kgp+5jI6U9brxZIzXigFM6nBaAO71ckLRdk4Y2o
	2duBEeYIOxTOiOvuDOHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV9iL-0017XC-EJ; Fri, 18 Mar 2022 10:20:09 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV9iH-0017V4-AG
 for linux-rockchip@lists.infradead.org; Fri, 18 Mar 2022 10:20:07 +0000
Received: by mail-wm1-x32a.google.com with SMTP id h16so4026277wmd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Mar 2022 03:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YYBm1RX0czLMaWTTQInKeCgdVYhgkLcZ7jFkas/Rfhs=;
 b=AUl19gddWU+TGkn91rwswKtkRuunsoS1xg6IvUppECEb8oSzjSfXJv2d87cqXYs3Yy
 95nkaF7kHo7GBGVTNaBNkuO6Rp5JM8YHyT8tVX8NcbKasWURoUqgjvOhVr+6gsjwxf67
 6VqySP3QaYydQWitA3XNyI6fTecEOPfuXE2b/2PqMFm9CN17Tvi8nhCUC2lm71oY1H+o
 2GWqd42sqZxKapISXzA8vBpYH53HlV8UMGJz1fKwf0WuqukOHYuMyfohAKbTkm1O00uV
 wU2oONr93WQy0UguF3b7ebHHu3pc+OUgVdXyQBp284tjYnM5VG8acVPte/GGuH+vp6P+
 tK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YYBm1RX0czLMaWTTQInKeCgdVYhgkLcZ7jFkas/Rfhs=;
 b=XtwyLe508IhVhlt75sD1AYhm9KinSEzUowXIxienJ78p7uO2AQ18hSt+QC1vFPV5ke
 Gl99JKsVhYsMrDGNsBOxQkpfm0AlkgQzd+2i/sOSeTvcAka0f7Nj8tBR/wNjykKgGHTY
 85HuUxRbRkMOjiIQUXoUZ+NoWemSgb8fJJaomZ1wzn+6OASZrm6k+2VwfE07rGMSy7zJ
 jKmATom81AkZE8qxgesibs1COnUSW9QOTYGCsMeiRpFodLamIc1VNPclx3Ldo8lZ/6uP
 XeFX9nyn4fv+g9JNbibzTD4cqanDFSLbmj7Qb5+0S+Du4SXgGmbIPYpe4WOlvMmLHApe
 L4oQ==
X-Gm-Message-State: AOAM533lFoUhWBCA3AieTnYObRXBMaufTAqoEFRiflmQtyGU7i1mBz6x
 Nz5AypTTWKTmZoUC93J34MP/Vg==
X-Google-Smtp-Source: ABdhPJykd7CP6qm5/RS39Zs+vu5rb4PuIDjEBZiEVPnAb1oCr3QXbjSKOIF+Kzx93wjR66zRLBNlTA==
X-Received: by 2002:a7b:c7c3:0:b0:389:cbf1:fadf with SMTP id
 z3-20020a7bc7c3000000b00389cbf1fadfmr15021009wmk.147.1647598802494; 
 Fri, 18 Mar 2022 03:20:02 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 f10-20020adffcca000000b00203e6a34d3esm5889436wrs.99.2022.03.18.03.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 03:20:01 -0700 (PDT)
Date: Fri, 18 Mar 2022 11:20:00 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski@canonical.com,
 herbert@gondor.apana.org.au, davem@davemloft.net
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Message-ID: <YjRc0Cf8m/kpcwAQ@Red>
References: <20220211115925.3382735-1-clabbe@baylibre.com>
 <f078ac6f-5605-7b86-5734-cbbf7dc52c71@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f078ac6f-5605-7b86-5734-cbbf7dc52c71@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_032005_406689_CD59468D 
X-CRM114-Status: GOOD (  23.83  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Feb 15, 2022 at 03:07:56PM +0100, Johan Jonker a =E9crit :
> Hi Heiko,
> =

> On 2/11/22 12:59, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > Changes since v1:
> > - fixed example
> > - renamed to a new name
> > - fixed some maxItems
> > =

> > Change since v2:
> > - Fixed maintainers section
> > =

> >  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  2 files changed, 66 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> =

> rockchip,crypto.yaml
> =

> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > new file mode 100644
> > index 000000000000..2e1e9fa711c4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> =

> rockchip,crypto.yaml
> =

> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Electronics And Security Accelerator
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> =

>     oneOf:
>       - const: rockchip,rk3288-crypto
>       - items:
>           - enum:
>               - rockchip,rk3228-crypto
>               - rockchip,rk3328-crypto
>               - rockchip,rk3368-crypto
>               - rockchip,rk3399-crypto
>           - const: rockchip,rk3288-crypto
> =

> rk3288 was the first in line that had support, so we use that as fall
> back string.
> =

> > +    const: rockchip,rk3288-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: clock data
> > +      - description: clock data
> > +      - description: clock crypto accelerator
> =

> > +      - description: clock dma
> =

> remove ???
> =

> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> > +      - const: sclk
> =

> > +      - const: apb_pclk
> =

> remove ???
> =

> Similar to the rk3568 pclk_xpcs discussion ACLK_DMAC1 belongs to the
> dmac_bus_s node and should have been enabled by the DMA driver I think.
> Could you advise if this is correct or should we remove parsing/enabling
> ACLK_DMAC1 in rk3288_crypto.c in order to it easier
> porting/adding/syncing nodes for other SoC types?
> =

> Johan
> =


Hello

I came back on this as I got access to a rk3288-miqi, and crypto does not w=
ork at all.
This is due to ACLK_DMAC1 not being enabled.

While not touching it work on rk3399 and rk3328, rk3288 seems to need it.

Probably the DMA controller goes to sleep under PM.

Any idea on how to create a dependency so dma controller does not sleep ?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
