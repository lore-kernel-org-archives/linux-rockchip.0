Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B78D9C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 13:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUuarwmRKFpfrN6Bqp0Ov6VSGDNXQkOBja3n7Gt8bmk=; b=lsUtpXVzhWkDi5
	HglOaxzi3mhlMwC1Ry7FJI0OzjUV9J+6VA8lgNW824vAnSU2Fy0inWAKo657w3ITxKczI2e+L3Ibf
	1zxLAH2yKiYaLLa9nVRJjGZEdFq80U59sRNXJfcp96rcQUC2gSQAix1rubPjF2pLpCYrCciruCJ6Y
	dlpwfgcSmglYwKuQMJTrqLD8KKHnR81RYGCNEjlU4vIkU0ZgvKGGZzudiTHZ+oye6oOXaTvObH8yE
	g9AiTFlBg99IuSvJY8oOBrqSAE58+1KJxN5FUrJ9Mj+HvINTonevLMO6/4sYD7cBbIF76YeeA/BPg
	8GJqKywZBzVXE1w+bBnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMrRa-00EOIP-LR; Wed, 23 Feb 2022 13:12:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMrL9-00ELnr-Ex
 for linux-rockchip@lists.infradead.org; Wed, 23 Feb 2022 13:05:59 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 c18-20020a7bc852000000b003806ce86c6dso1467385wml.5
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Feb 2022 05:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6Iisim3PKzqx+0SuQ2EiWiTngQbIiBBSQFYW4bmZFG4=;
 b=xL6fA/11WclCJM2MxlSqzWBaUxk7fA+4OI+SITJI3HuBC6aQNHwmvUdRbzI1PWCJjl
 nouFQQhqbAdlbueFM4m4nechphstnnVXOLaT+TT5I1cZyq1ZPuPhF4HtYie6PMauU2Xm
 O5y8ACzbRTCySsiNoG6ClSYFzXpaVUE25zrItpI4eg7w2gdceTjzAoMqekdca/mwhw2A
 0X4OPqCP0xw5cQdDChXDAKGE2Ptt3GNilnfvPJ8MJzcV8cI1QihpzAVp+jpbSy84uxJA
 kpLQ+TDO5gjA0kM/GLr8jOWm0+Gk3p8/LGu0A7nCV+J5YODK8d8N5fL0XBhB1Yox5U0G
 ArZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6Iisim3PKzqx+0SuQ2EiWiTngQbIiBBSQFYW4bmZFG4=;
 b=BFPJXudgR8JvLRvN7ws5fv9t9Rl80hS0sXLigQAiilRwh/hpUGBiafUsOpxmtHbaDV
 s8gehQgVp6yqidZmLs1GQThFKw7vLQCVIArkXXS2HvCXYhkIBdnZS+owQdZzNMIJGmjn
 F//Ln9Ay/91oDA7Q+2zBFq/E/IbVFWkLEdk2EhtyFLk0FFTQ0pFNDLcMb1Cm7Yk6BJKz
 qJgQVsqf17VLJdcI3//pXpehx+oph+Mbv3VsLPWzugdPHsrNzAS6rGQp2ysVQh1xNR41
 FxhsNe8DISVQnYisMLfgjsvrFBiQl7rTzTIYiTHiTFgTwer/bSu33PZ2ZJA0qAGi6pbS
 otzA==
X-Gm-Message-State: AOAM533nLmSuRNc22888HPGp855JmoOzs6XdeR6L7JCtXHLMPF6xrdJJ
 Fx8u2rmDEvg60HNNl8cJaVJsFg==
X-Google-Smtp-Source: ABdhPJxjlMvrB5Zg7n5QG4YhSseGskPdLA0ieLEpVQkkvGr/YjdvxZNHAECAhketBqw3EMUC5LVe9w==
X-Received: by 2002:a05:600c:4f93:b0:37b:c4c1:e806 with SMTP id
 n19-20020a05600c4f9300b0037bc4c1e806mr7711932wmq.104.1645621552724; 
 Wed, 23 Feb 2022 05:05:52 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id s2sm5334745wmc.45.2022.02.23.05.05.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 05:05:52 -0800 (PST)
Date: Wed, 23 Feb 2022 14:05:50 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski@canonical.com,
 herbert@gondor.apana.org.au, davem@davemloft.net
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Message-ID: <YhYxLmBYa+DMCnuz@Red>
References: <20220211115925.3382735-1-clabbe@baylibre.com>
 <f078ac6f-5605-7b86-5734-cbbf7dc52c71@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f078ac6f-5605-7b86-5734-cbbf7dc52c71@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_050555_553832_7C540536 
X-CRM114-Status: GOOD (  24.20  )
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


Hello

DT maintainer asked for rockchip,rk3288-crypto, so I will keep it.

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

I will dont add compatible which are not handled by the driver unless DT ma=
intainer said I should.

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

I tested on my rk3328-rock64 and I confirm apb_pclk is unnessecary.
I will issue patch for fixing this.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
