Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B0FC197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9e2WkDqKunt0en81hiOtSfX7BCWIyNdkNnMxW46JHDE=; b=Q7ldJIOKO5E/xJ
	+PPy2Ppa37rzmlFhEcA0ho5ez15Q4XNrNXyVyxUWHY3g0hCrksG6dKKpanopDFp9HnT+PKjttJNbg
	n2OTu9G3AXzoGNd5B5lZxxeoq3J+r8NIeiqyQRno1BcP5OqhuMgsBj5zepJ7lrUTjGUo5aMfuav1K
	e2oGP3mCv3ZI4znIZZInW8jL9CbDJeTqxoYwrsfynzsx5mnQHry3DSQa2PYReNNLn1Ot1Olbdbo9n
	OURF5EFGnx/7xJ2cOJUDIDSp2ewS2LfoNuQBJXotxhFt6cDtovtZTHJ4tF4+rFq8h3/1UejZRZzrq
	nqQWKjez5eRHDin5wlrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Wc-00C0pi-25;
	Mon, 20 Nov 2023 12:37:14 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53WW-00C0n2-1p
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 12:37:13 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4083f61322fso15512795e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 04:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700483823; x=1701088623; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5xIcaRzTEKrbvWfEvAe9OkNKCvoLd6Y4BAtiZQNEI2A=;
        b=Pp3BHKSMoyieC0gUBJl2wYlHwabsMVFYWahb1ZNip5VqG9WKH29cDzu0DUHnJ2WHOq
         k3pNZGwoiiIRk8UHgpwXBBp2ZzzkYsO/GD99bZn4N3VmZTJgAs1ciTR0PzvMBrVriWJH
         zK/ESK2PBKKo7v2Idy4Xpl8BkzJDHukwdCuQlnkHcdZVE2BZnZdEDOZaSdnr6GJP6Yd4
         ZqDmyw1x+OW9XIAAwA2f555hZP3mzDeA/c6n67wy5n/tTup1FgiFnaEbAm1J32pmWkNa
         7OecOoeqFlGW462TLQPkjBLlRm12cBaVfoYfllUSuEt7BgboaNy1KvygwqwTd1D9UiEU
         W8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700483823; x=1701088623;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xIcaRzTEKrbvWfEvAe9OkNKCvoLd6Y4BAtiZQNEI2A=;
        b=WHcVajXQUWIvyDZpkpp1FG8q24w5eWY1Zm4A7kJUmWFCWod1/a3elXuuzibY0iua5/
         YJ1y7Qb0zjoZobUxUqWtNsYvbabsVuQbBQVK4OsEDzVYTRAnFVxPACxhrbpENtF0nNNO
         rD10J37+bR0bG96kLM8gaqrTPfiRKaJTVJghA4o13+y1JL/KN3tZG3GR5spcQ0T9aQI+
         MHFrOWbYj1s0uNMbCSQKxxWCWVTGOpLeYyOLekV7TNsQrCpBZC3f5oxLnUlBSPdTu4IA
         /pDXpuJq4dAh6N/q+r6j8x23WA/OUUkj37+MPBca1b8Wixht+YGIWxxNHujyygq/idoE
         Skkg==
X-Gm-Message-State: AOJu0YywAaVq1T7maPuIJz5kZT75qFYzI6n/lzSnTwhhDrtF3MkE82pN
	3A6k4HnctTrtddokqDjVPSX8pw==
X-Google-Smtp-Source: AGHT+IHTUQJofzeJ168RnZJSmmmO8MO0i6WawW814cn01ZEqqTeKJ+1xX/Ywal+JY5mPU5YLuA/H0A==
X-Received: by 2002:a05:600c:4589:b0:409:295:9c6e with SMTP id r9-20020a05600c458900b0040902959c6emr5469924wmo.30.1700483823418;
        Mon, 20 Nov 2023 04:37:03 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id n10-20020a05600c4f8a00b004095874f6d3sm13523859wmq.28.2023.11.20.04.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:37:03 -0800 (PST)
Date: Mon, 20 Nov 2023 13:37:01 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: crypto: add support for
 rockchip,crypto-rk3588
Message-ID: <ZVtS7YBhhtqCQX8w@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-2-clabbe@baylibre.com>
 <97ae9fa0-0a6c-41d2-8a6c-1706b920d7ea@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97ae9fa0-0a6c-41d2-8a6c-1706b920d7ea@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_043708_605956_806188D2 
X-CRM114-Status: GOOD (  19.53  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Nov 07, 2023 at 05:40:24PM +0100, Krzysztof Kozlowski a =E9crit :
> On 07/11/2023 16:55, Corentin Labbe wrote:
> > Add device tree binding documentation for the Rockchip cryptographic
> > offloader V2.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3588-crypto.yaml        | 65 +++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3588-crypto.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypt=
o.yaml
> > new file mode 100644
> > index 000000000000..07024cf4fb0e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.y=
aml
> > @@ -0,0 +1,65 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip,rk3588-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip cryptographic offloader V2
> =

> v2? Where is any documentation of this versioning? From where does it
> come from?
> =


Hello

Datasheet/TRM has no naming or codename.
But vendor source call it crypto v2, so I kept the name.

> > +
> > +maintainers:
> > +  - Corentin Labbe <clabbe@baylibre.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3568-crypto
> > +      - rockchip,rk3588-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 3
> =

> You also must describe the items instead.
> =

> Where do you see any binding using minItems alone?
> =

> > +
> > +  clock-names:
> > +    items:
> > +      - const: core
> > +      - const: a
> > +      - const: h
> > +
> > +  resets:
> > +    minItems: 1
> =

> No, maxItems.
> =

> > +
> > +  reset-names:
> > +    items:
> > +      - const: core
> =

> Drop reset-names, not really needed and not useful.
> =

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> =

> =


I will fix all thoses problems.
Thanks for review.
Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
