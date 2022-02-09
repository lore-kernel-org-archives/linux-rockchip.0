Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2956BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 13:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2WrOq8J/gW1raOv/6ZWAsO4DGyzymuVnsxJl03WJBg=; b=suZs0h5GObe3Zf
	j9D/nXMKQsOM0qEhe4cD5vPKIAhCZHWqVGntqoG5Q3/j0c7dJZJ1Z1T9I5JYQqICSUiASFKS096cj
	RfVyII/2s7dC3H7Cj8HmuT8O0OmgY2umL8jneLASeWKMjbiQ0canzfn+hDC/oHDPnxXMY9/s3b2R2
	9CR2VgOo3lnxF6UKuP5MB2zvu9nPCpbQbWFqW7yQ5pvydoTZr98h7fxCqh3XOISnGctBl3l0OGp9M
	aj0M74rLNKoYOw4YMO921FlytQHJ5bDNa6jWGuLyEEX/Inm1Rr+93J+2NP+TMTJQEaz9WD1y6kWEB
	M9VdP1i+q8cvCafFWIiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHnGC-000Cp7-GH; Wed, 09 Feb 2022 13:43:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHnFH-000CaH-BG; Wed, 09 Feb 2022 13:42:57 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 bg19-20020a05600c3c9300b0034565e837b6so2370265wmb.1; 
 Wed, 09 Feb 2022 05:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=YSwObgToM4kQkShxGRlE4JLVRXyN035rThcxif13VzA=;
 b=OkHRuDgQwVHDaFa2UWL1r8LK6cbtlGI+crQyAALWgl0h2f9TP3qdmzNn3QsY+MfgGN
 0b/rGu9nMf2WpGk78FU38nqihLnjuaokRaDAUZ6fN93AQuGwn4WLM6PcZVf2gGeHq8zG
 rgmJ2NlUi1OCwtuDIrtLsjlSKuPGpHGRdbTPH4dATJY6hO4cmnqwxoNvACJ53K6evnv2
 /UQn0Ivd8H0jo/A9g0UyQr8csk1Q9QsEb7pPKjQVmBKQa18TfKVXEZ5pxHQr2PRZIrqL
 ORMHQfLK/PIDbkyoP3Nsro1UDM20wR4Bml7dIg+glp3kXJifR6awDXd4VK1refIrhXaR
 fxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=YSwObgToM4kQkShxGRlE4JLVRXyN035rThcxif13VzA=;
 b=lMgwPlSEvUHLX0LmCD9FA45KG0/kLzGYTHORhSTXglAIEnjrTl9IGfGTHldgcuZCnq
 opmye5afBokG0Nu7r8/03bg0sp8PWvR/nQS25WxT+CEBUG13CLIs5PoxAKwXbVFkIusn
 GhmJjmVttG9DCGXSkehGpNXkmAnenEXakNIGxUUugl4u2YQxJqyHi0YMM4J0h3SXX9UJ
 78q+gfQrHASI4KGEHpEKPrtqUuSa12edBhquHDf4wXLNWpdgGMTKAjMAU1gtzWZKLIOH
 yt/foBKBDrplme2Fzly7dSRf25YqWYWOu8FLsTmLXK58n+W6WYT/k7Y2UawcQ3WofCDk
 Gonw==
X-Gm-Message-State: AOAM532YoK1k+LJERduGYyTG6i7tpuRGSdolEYcrunQ2h8uE6Dd9QwCN
 gVaQynWNlA4BI/AV2f5ds4Y=
X-Google-Smtp-Source: ABdhPJypFm6cL4U5dgqLRpJn5YYRjPRSd1zny+ieSxBrCf0f+XCVBug/Gc9F5C2zLYeoumwUbtAW4g==
X-Received: by 2002:a7b:c749:: with SMTP id w9mr2084721wmk.149.1644414173043; 
 Wed, 09 Feb 2022 05:42:53 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id o10sm3483320wrc.98.2022.02.09.05.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 05:42:52 -0800 (PST)
Date: Wed, 9 Feb 2022 14:42:50 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: davem@davemloft.net, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: crypto: convert rockchip-crypto to yaml
Message-ID: <YgPE2qdHccJQm4mR@Red>
References: <20220209124725.2080986-1-clabbe@baylibre.com>
 <2571349.qrhAyUUNuM@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2571349.qrhAyUUNuM@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_054255_448259_90DC3AF5 
X-CRM114-Status: GOOD (  23.24  )
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

Le Wed, Feb 09, 2022 at 01:52:45PM +0100, Heiko St=FCbner a =E9crit :
> Am Mittwoch, 9. Februar 2022, 13:47:25 CET schrieb Corentin Labbe:
> > Convert rockchip-crypto to yaml.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  .../bindings/crypto/rockchip-crypto.yaml      | 64 +++++++++++++++++++
> >  2 files changed, 64 insertions(+), 28 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.t=
xt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> > deleted file mode 100644
> > index 5e2ba385b8c9..000000000000
> > --- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> > +++ /dev/null
> > @@ -1,28 +0,0 @@
> > -Rockchip Electronics And Security Accelerator
> > -
> > -Required properties:
> > -- compatible: Should be "rockchip,rk3288-crypto"
> > -- reg: Base physical address of the engine and length of memory mapped
> > -       region
> > -- interrupts: Interrupt number
> > -- clocks: Reference to the clocks about crypto
> > -- clock-names: "aclk" used to clock data
> > -	       "hclk" used to clock data
> > -	       "sclk" used to clock crypto accelerator
> > -	       "apb_pclk" used to clock dma
> > -- resets: Must contain an entry for each entry in reset-names.
> > -	  See ../reset/reset.txt for details.
> > -- reset-names: Must include the name "crypto-rst".
> > -
> > -Examples:
> > -
> > -	crypto: cypto-controller@ff8a0000 {
> > -		compatible =3D "rockchip,rk3288-crypto";
> > -		reg =3D <0xff8a0000 0x4000>;
> > -		interrupts =3D <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> > -		clocks =3D <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> > -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> > -		clock-names =3D "aclk", "hclk", "sclk", "apb_pclk";
> > -		resets =3D <&cru SRST_CRYPTO>;
> > -		reset-names =3D "crypto-rst";
> > -	};
> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.y=
aml b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> > new file mode 100644
> > index 000000000000..392d89055398
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> > @@ -0,0 +1,64 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Electronics And Security Accelerator
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
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
> > +      - description: clock dma
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> > +      - const: sclk
> > +      - const: apb_pclk
> > +
> > +  resets:
> > +    minItems: 1
> > +
> > +  reset-names:
> > +    const: crypto-rst
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> =

> Binding itself looks good.
> =

> But the constants below will probably trigger a compiler-error and
> therefore Rob's bot.
> =

> You will need something like =

> =

>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/interrupt-controller/arm-gic.h>
> =

> here.
> =

> A "make ..... dt_binding_check" should show the issue and also
> it going away with the right includes ;-)
> =

> Heiko
> =


Right, I forgot to add this file in my "dt to check" via dt_binding_check, =
but the following make dtbs_check made me believe it was tested.

I will send a v2 soon.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
