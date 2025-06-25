Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2092FC7EE2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 19:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYfO2KF8aVrKiJxZZZJpnc6QYt1/eQTbIFooJuqhAYA=; b=1KlOPeI8YdwpGH
	Xaxkj65suf30vCD4qokO0M9kKIU1c+k3N5zgbjrCEUgSZBK5qBu7/c2iH9MSqi3LF7aBKWw+pbaR+
	1S7LDDVBJ/TpL48H+Ih2JJ6om3ryLFyL3FjukjIGlH4adtNsdukr7YEhrNujJXbE9Uddw7x0tGz7I
	EBTo/l3enzE2picGs3a5VsGbDUaU9uUD5sA4EzxMQ3U02w0AF8Gww39KHXJMP1loFGZEuMpTbfDVE
	Rd+1kvjEPB5+POKoTPLHpOGAqP5naQFkcK/XasJybKSatl9pwpMlN3sDEkLxj1pFnNbxF6y5An2zQ
	wxaLlvmfU7QXbzCaArCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUVxL-00000009lQu-2Qfp;
	Wed, 25 Jun 2025 19:38:51 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUS45-000000097ZH-1DzQ
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Jun 2025 15:29:34 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-2efa219b5bbso15287fac.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Jun 2025 08:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750865372; x=1751470172; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2iLRZWU9mr0yxqJABvEamfRCguJhr8FEzZR2ailCaPI=;
        b=B1wrkwL+KZiibhNepQJx8Ms+8fY/losjjy63FbtJoFihYC6hSkyRy6lQDbAVU0DHlG
         GZ0gCGi4nD9XT3HYIl2T6/oICiFUsmcbbiZJXsgs5XCeJKNf6tydMAj35TDkHfXYq3Ee
         YHIj7KonkPKbavB0Oek0wycWrW37M+bEaFa6RDCTrPrKXqNGfoOTx0GzyielpXpBcIUh
         LeqfxUW9xSsDoSfLr5CxZRoBbguGAvr9wuMm7NMq0yWnjl5c+vS4SrkpPbZng7HGzB1b
         Wqb2lzmLdytRLsaxejopu/stiTvEZMp38KVCkg4xcrx0BlNL5AA0IZK/aPIi/h8tUNme
         fSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750865372; x=1751470172;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2iLRZWU9mr0yxqJABvEamfRCguJhr8FEzZR2ailCaPI=;
        b=N3pzDOONMol36iJHQjYEl8QBmA/8h4i1gFF24GULrXF2ITfwsc23Q+vgG1TxhupW+Q
         p2bHUL8vRMKjf4TuKL0FSCcOJi49UeeDC2wS5y0ElH3TeJ5u/ChOQJnLy6765taRfAV4
         k4JqbMKlsLQYo/5nROFjBI+HGHjgq4DxXdaqDoDtQ1tl6+xYwGranBa04OXjvDypSTfp
         kQa7aEq/2Qt0fD9vbZrU267VSQxfUnGeGMkf/bJR/U+wxqO571t2bmDhFKesodBTmvrZ
         m2jWqv6OSrJ4I/10863gC9h0YKppAm8yIgXJKeHBw5EZPoPfXSL3fSwqQmtWRWKLoXxu
         d2hg==
X-Forwarded-Encrypted: i=1; AJvYcCVaUxypDGvtoUjxUUu/Oq/R2X5z4/VprJWQ1rgdMBgXcCcBsDUxsWm/c5fKVVxsZVXLK+BbAhTfuxBtijMznQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzmDUqfpC+oYC9uOg81o72sxmf7q5RlIUOOqJiU3/4/abJnYFFm
	Q9+EXI56tnqNPClP1RlDfpJRzqBbp9a+4oTCy7qTrwvLC19NO8UAWiE5
X-Gm-Gg: ASbGnctJHFSs7WSuMf3SR+rIHw0FmUuGFh6PV4UQegZ2CXeUaZ2xX3l2iTxYxqkGA/x
	SkHkf9QQLJxZD/NfTALD9P9H5hCNsj0gTAvSrSWVZt8ixK/OAGCTgH7pCQsOytipce9a+sSOTuP
	GRQnFS79PJ54BtFNl/5Q87qAu5KqUS69g28n9byfOkLfcpO0bk969B6joETfCYfwVF1Tu7og7P6
	uY/xvBboDX/HJcrM19bWY3lYlVX9Ii5ptlPq0jyNd7IgWRoy0Wi6m6jce5x3VaCG5XPQC7oACWr
	6PqL9dcyyi5a62tgulRctt7H19IrCz97YudZMDhLMuB9KiuUnA0HgzyZooFsmIGLZzldDrGqtoS
	5HHc0AvN0K+xvtaonT6o=
X-Google-Smtp-Source: AGHT+IGi8VRBTkcie2M82z62av9T1Lo0xgSLRRW+ViiR/xkeT8MTD0vEHx52CiLPrSexevn2OM8fgA==
X-Received: by 2002:a05:6870:9488:b0:2d5:230f:b34a with SMTP id 586e51a60fabf-2efb26d1599mr2456383fac.9.1750865371705;
        Wed, 25 Jun 2025 08:29:31 -0700 (PDT)
Received: from neuromancer.localdomain ([2600:1700:fb0:1bc0:d84e:5284:c7b2:e237])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ee8a8ea8a4sm2624297fac.24.2025.06.25.08.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 08:29:31 -0700 (PDT)
Date: Wed, 25 Jun 2025 10:29:29 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
Message-ID: <aFwV2Xxyjhi6KQkw@neuromancer.localdomain>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
 <20250623162223.184304-2-macroalpha82@gmail.com>
 <5qeo2xqjprozcjd553qmozzrmbciuf66gic65tzw7jspoub5n4@5wzkqasisgcz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5qeo2xqjprozcjd553qmozzrmbciuf66gic65tzw7jspoub5n4@5wzkqasisgcz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_082933_331963_E38F4864 
X-CRM114-Status: GOOD (  27.49  )
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

On Wed, Jun 25, 2025 at 09:48:30AM +0200, Krzysztof Kozlowski wrote:
> On Mon, Jun 23, 2025 at 11:22:19AM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Document the Texas instruments BQ25703A series of charger managers/
> > buck/boost regulators.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 121 ++++++++++++++++++
> >  1 file changed, 121 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> > new file mode 100644
> > index 000000000000..0727f24b8e54
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> > @@ -0,0 +1,121 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: BQ25703A Charger Manager/Buck/Boost Converter
> > +
> > +maintainers:
> > +  - Chris Morgan <macromorgan@hotmail.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/power/supply/power-supply.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: ti,bq25703a
> > +
> > +  reg:
> > +    const: 0x6b
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  power-supplies: true
> 
> Drop, redundant.

Acknowledged.

> 
> > +
> > +  monitored-battery:
> > +    description:
> > +      The phandle for a simple-battery connected to this gauge.
> 
> This part is redundant. It cannot be anything else, according to
> power-supply.yaml
> 

Acknowleged.

> > +      A minimum of constant-charge-current-max-microamp,
> > +      constant-charge-voltage-max-microvolt, and
> > +      voltage-min-design-microvolt are required.
> 
> This is fine.
> 
> > +
> > +  input-current-limit-microamp:
> > +    description:
> > +      Maximum total input current allowed used for both charging and
> > +      powering the device.
> > +    minimum: 50000
> > +    maximum: 6400000
> > +    default: 3250000
> > +
> > +  regulators:
> > +    type: object
> > +    additionalProperties: false
> > +    description:
> > +      Boost converter regulator output of bq257xx.
> > +
> > +    properties:
> > +      "usb-otg-vbus":
> 
> Drop quotes. Is this the name of regulator called in datasheet? To which
> pin this corresponds to? I cannot find anything on usb-otg or usb_otg.
> 

This corresponds to the VBUS pin. VBUS is an input usually but becomes
an output when OTG output voltage and OTG output current are set; OTG
enable is set, and a GPIO connected to EN_OTG is set high (per section
8.3.3 of the bq25703a technical docs).

> 
> > +        type: object
> > +        $ref: /schemas/regulator/regulator.yaml
> > +
> > +        properties:
> > +          regulator-name: true
> > +          regulator-min-microamp:
> > +            minimum: 0
> > +            maximum: 6350000
> > +          regulator-max-microamp:
> > +            minimum: 0
> > +            maximum: 6350000
> > +          regulator-min-microvolt:
> > +            minimum: 4480000
> > +            maximum: 20800000
> > +          regulator-max-microvolt:
> > +            minimum: 4480000
> > +            maximum: 20800000
> > +          enable-gpios:
> > +            description:
> > +              The BQ25703 may require both a register write and a GPIO
> > +              toggle to enable the boost regulator.
> > +
> > +        additionalProperties: false
> 
> Please place it after $ref.
> 
> > +
> > +        required:
> > +          - regulator-name
> > +          - regulator-min-microamp
> > +          - regulator-max-microamp
> > +          - regulator-min-microvolt
> > +          - regulator-max-microvolt
> > +
> > +unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - input-current-limit-microamp
> > +  - monitored-battery
> > +  - power-supplies
> 
> Keep the same order as in properties.
> 
> Best regards,
> Krzysztof
> 

Let me know if you have more questions about the VBUS, otherwise I'll
make the requested changes and resubmit.

Thank you.

-Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
