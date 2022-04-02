Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC86FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 20:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N91LoK2r/Vfs/pC+HMhC2bEmdGlwp4jh8WIb9byswag=; b=wkaZQTr0S8HJzS
	8ODaVJoGZgof/+B+t3Mq/BOfaOP71mL8e/LdIp7yBzhnOva0IvXuh2GV+9vgn/PYcf4SZ1t33FZ+f
	Y8U9hXfxFKQqAEL/bwCyJ3Cy+aOp4+oIRBsPw2u4vrE4QSMPQ0ECDC3kiZ4DkkD/T81PC7KRIINBH
	q/NaHiWtzxkstweRZlkqMikVa22eWcvtQ/EC1EckpqGxXQHHT2Js3bYjwGcqpBZcSydzjkLuhKSPP
	qXS4QkbjYz+qbysbWQ34i+XWPAWxxpzg/7W7SD3greigsdzbsi4M4OKVZCMHWbMIDjfAjk0T0SpzP
	FWgsTHKeMVCVmMscEpiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nak4b-009y8t-6q; Sat, 02 Apr 2022 20:10:13 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nak4X-009y7b-93
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 20:10:11 +0000
Received: by mail-wr1-x434.google.com with SMTP id u16so8821628wru.4
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 13:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=0Jj1n8NaBhzqatfaJy+kbX/a+Snz7j/FCRrNIUPpydA=;
 b=6eVmaNrP/P9vTibYEoyZ7MxfkgjcMxnzMdQ8BmvnLraLfWwOdC2tBfT6jI4JEa4D/Y
 tZ/DCrshzH656mbgpxuj1/6mvctqyQygLVXJ4MsfzunS3JiOmP9lOAXeC8Rc7FTMS5Yr
 oWjs02VJbgP20HULVaEhvnEejjjBJ/8a4LUAfwOp7AWLKWuXwwPvjqa2jXPOhSRFjHW6
 DW/W6UGFVzfy6cwAKvTc/1Q2RkibpfWX7b3of7/ZyT1Q1hHwIntogescQ3/kTx0m3J+e
 FeTt8biuBSRkF5X7Q9i2l3NsuEcytcFd0Sfg1RJMiOOMo6C7VDT4+nVqpXqGtjfjnIgK
 fBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=0Jj1n8NaBhzqatfaJy+kbX/a+Snz7j/FCRrNIUPpydA=;
 b=tfuOgDONprvxV/fezd5m4C05w18oMksohhcvGgjFAAMIr9FNSv5IhpPQPJ4BmKGk+y
 1epZhXezMZF7CZBpBvJ/A5YF2mEsdthi6nep8uwcq/BEgDjszVyrGie75AX05614M3JL
 I98+CFHELZ3M062VxOGSyLfplyYHPVzVEqp1q3ZGqdlUGnSz8yzAYT+Nw+gyWO6gC3Ph
 3yV7zxuNpmiBqN8KRlgtxCrJ4mdVv5mibD+Rk8I4oV42Nwi6/9/zU5CXt3EH8/nhI/15
 fOhqrnz1orLSUVtCzpYXc5rNg5Tc0ITHciuB8o6vyT0EFDUvHQlXRPVbXt1KbGFAMfhi
 h1QA==
X-Gm-Message-State: AOAM533rz0gmd3NhFsQUFcmaoKKxZvlGuUEDFHW11OopPxwdzuaWA7kL
 3qYFNclcpqby5BbO3bofwL0G+h2VpyjONg==
X-Google-Smtp-Source: ABdhPJw1Jk2TR4G+F8lbC7iNS+1QyVWwMOCGaBhvPusnF28nGhCLUTQ9E4C7nAmOj/5f3e6JBWYfzw==
X-Received: by 2002:a5d:58d9:0:b0:203:fc5c:ba87 with SMTP id
 o25-20020a5d58d9000000b00203fc5cba87mr11829086wrf.79.1648930206310; 
 Sat, 02 Apr 2022 13:10:06 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 o6-20020a05600002c600b002057f1738fcsm5705371wry.110.2022.04.02.13.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 13:10:05 -0700 (PDT)
Date: Sat, 2 Apr 2022 22:10:03 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <Ykitm1uLmQtNy3b2@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-29-clabbe@baylibre.com>
 <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_131009_383522_2BFD5790 
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

Le Sat, Apr 02, 2022 at 01:53:58PM +0200, Krzysztof Kozlowski a =E9crit :
> On 01/04/2022 22:17, Corentin Labbe wrote:
> > The latest addition to the rockchip crypto driver need to update the
> > driver bindings.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 68 +++++++++++++++++--
> >  1 file changed, 63 insertions(+), 5 deletions(-)
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > index 66db671118c3..e6c00bc8bebf 100644
> > --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -11,8 +11,18 @@ maintainers:
> >  =

> >  properties:
> >    compatible:
> > -    enum:
> > -      - rockchip,rk3288-crypto
> > +    oneOf:
> > +      - description: crypto IP present on RK3288 SoCs
> > +        items:
> > +          - const: rockchip,rk3288-crypto
> > +      - description: crypto IP present on RK3328 SoCs
> =

> These two comments are not helping, so this should be just enum.
> =

> > +        items:
> > +          - const: rockchip,rk3328-crypto
> > +      - description: crypto IPs present on RK3399. crypto0 is the firs=
t IP with
> > +                     RSA support, crypto1 is the second IP without RSA.
> =

> The second part of this comment is helpful, first not. You have chosen
> enum in your first patch, so just extend it with comments. Additionally
> indexing does not scale. What if next generation reverses it and crypto0
> does not have RSA and crypto1 has?
> =

> Something like:
> =

> properties:
>   compatible:
>     enum:
>       - rockchip,rk3288-crypto
>       - rockchip,rk3328-crypto
>         # With RSA
>       - rockchip,rk3399-crypto-rsa
>         # Without RSA
>       - rockchip,rk3399-crypto-norsa
> =


Hello

There will never be new SoCs with this crypto, rockchip seems to have dropp=
ed this IP for a different crypto v2 on their new SoCs.
I will answer more on that on your second mail.

> > +        enum:
> > +          - rockchip,rk3399-crypto0
> > +          - rockchip,rk3399-crypto1
> >  =

> >    reg:
> >      maxItems: 1
> > @@ -21,16 +31,65 @@ properties:
> >      maxItems: 1
> >  =

> >    clocks:
> > +    minItems: 3
> >      maxItems: 4
> >  =

> >    clock-names:
> > +    minItems: 3
> >      maxItems: 4
> >  =

> >    resets:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 3
> >  =

> >    reset-names:
> > -    maxItems: 1
> > +    deprecated: true
> =

> Why reset-names are being deprecated? Did we talk about this?
> =


Since I use the devm_reset_control_array_get_exclusive, there is no need to=
 have reset-names.

> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3288-crypto
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "aclk"
> > +            - const: "hclk"
> > +            - const: "sclk"
> > +            - const: "apb_pclk"
> > +          minItems: 4
> =

> minItems for clocks
> max for resets and reset-names
> =

> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3328-crypto
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "hclk_master"
> > +            - const: "hclk_slave"
> > +            - const: "sclk"
> > +          maxItems: 3
> =

> min/max for clocks
> max for resets and reset-names
> =

> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rk3399-crypto0
> > +              - rockchip,rk3399-crypto1
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "hclk_master"
> > +            - const: "hclk_slave"
> > +            - const: "sclk"
> > +          maxItems: 3
> > +        resets:
> > +          minItems: 3
> =

> Similarly.
> =


I will fix that in v5

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
