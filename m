Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626F5ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 08:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDo4J4VJoQuDuWIpz2b3yxEHXoA2fh4h/KqGNx6Njw8=; b=10GGb1fjLIoK8p
	33fs8EwKJ/0oB9IKUgp2T+S/jXCgTQ9C21DdNzYDK5A37zV1ppKilDEanYLphd1X8ayLqo/H80XKX
	cwjDe6zX44nsFf1HUizsJuI710OnE6wH9oOX2V0CXeKZ+shksITRXIrpp2q6/5Cl5FgKCP3hkMdNO
	zdf/tVAV9kFH5Ay5DrCYNr/kcwE5kM3vqz8yKj6i/sby+8bKMSlZVxrFxrkbbjRnX+kuDwWLX9Rk1
	p9fB7S8f8KBkLNfIr1ltFX19wGLb3XZbPz3BC6NAGG+lKtRRoer5zVfgjiHQIuE/jPx/nYjLIIaBp
	lckMhN5Tq0LDxknPcXTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZp0-00Eokj-7D; Fri, 09 Sep 2022 08:57:10 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZow-00Eoid-L1
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 08:57:09 +0000
Received: by mail-wr1-x430.google.com with SMTP id c11so1570063wrp.11
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Sep 2022 01:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=rHPt+Pbc0bwJycb8g2JrUPaT739qQsbXoj9p9DUlASE=;
        b=o8/U+pWZQB+BK2sQxVVXYhAtmR4twA2BIVHdD3qEUSTRXfTJet6ivAh/aa0kvfqXEP
         en7ejU3nOu4bQP6vZpt50O7hMAYuCNjbSyl+Fa89NpV4Uy7Esi4TN4YFK/rH3VWPAH7P
         9Ei7dmjS3X1tO9Pz5sxHqw8caG2m5uY4X2GGynE9KsZFWpqSIUVZMXz+V8FBPPp8iE/b
         jKXvos0xjGCtBk/9THaZM1g5m8Dz6skfbkxP1TdHKCHd5Lru3SgjUnu7sqZXzGV6Eb1h
         VfleTZ5RUJB6ZF7/NKUdrty0fGbKxEfl4I/63IWGo7vRairVqhSMFZFiuWfawbo9FaJr
         atlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rHPt+Pbc0bwJycb8g2JrUPaT739qQsbXoj9p9DUlASE=;
        b=Tb+Zue89GIwCrNsU3jhb6YhS1kmHJ5Z2wg8Usdu5QmIzbMwsLeYInUhmFkLqeVLlCc
         idVFbCqLzdNnvZHLZqvxFgEhrk6ls+htyBtoQgASy2SqvPsCrrkpdyrfwj0q2FnZqwhs
         C0eKU6CKWkbzAtb//LSLtHl+gdV9aOd1V6Mtgu5ZQ5nFGy/83dggikRPkeLCaYFcBE7z
         xTaxgaU40EJTNygNu+Uy9vhR+4gNpi/pIjzNUSF0rmwjCuD1LQUsoRz5c/7fkcoWbfU5
         eETxulCcIjLiu4Me6OGxRdlRJ1LN9PDglVicPdSBSJZBuIjNs6+L6C+P9KVMa+wn5xGU
         /6YQ==
X-Gm-Message-State: ACgBeo0ATfpGtrTk1EoNRWl8tKfF7LYYioOSnXVOlbqvDztfbMPB5Wki
	2DahoX8FwgkJdyE4NOYydjikjk+8J/BhUkHj
X-Google-Smtp-Source: AA6agR6zK39Nn38XEAPq9Ou9Er2T2ugG1x2dP6ckDfLlUnVh5tdCyv2sC6o38IAapwEnt34CuzxuKA==
X-Received: by 2002:adf:e904:0:b0:228:e0d5:2c55 with SMTP id f4-20020adfe904000000b00228e0d52c55mr7254035wrm.714.1662713824642;
        Fri, 09 Sep 2022 01:57:04 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id f25-20020a1c6a19000000b003a5ffec0b91sm1166157wmc.30.2022.09.09.01.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 01:57:04 -0700 (PDT)
Date: Fri, 9 Sep 2022 10:57:01 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org,
	davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, sboyd@kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v9 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <Yxr/3RjQs9x2KqL7@Red>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
 <20220901125710.3733083-26-clabbe@baylibre.com>
 <20220907203853.GA288174-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907203853.GA288174-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_015706_915500_71A990DA 
X-CRM114-Status: GOOD (  24.41  )
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

Le Wed, Sep 07, 2022 at 03:38:53PM -0500, Rob Herring a =E9crit :
> On Thu, Sep 01, 2022 at 12:57:02PM +0000, Corentin Labbe wrote:
> > The latest addition to the rockchip crypto driver need to update the
> > driver bindings.
> =

> This sounds like you changed the driver, so change the binding. That =

> would be an ABI break. But it looks like you are adding support for new =

> h/w, so say that. Bindings aren't about a driver.
> =


Hello

Ok, I will change the commit log.

> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
> >  1 file changed, 71 insertions(+), 8 deletions(-)
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > index 8a219d439d02..b7870a4cbdbe 100644
> > --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -13,6 +13,8 @@ properties:
> >    compatible:
> >      enum:
> >        - rockchip,rk3288-crypto
> > +      - rockchip,rk3328-crypto
> > +      - rockchip,rk3399-crypto
> >  =

> >    reg:
> >      maxItems: 1
> > @@ -21,21 +23,82 @@ properties:
> >      maxItems: 1
> >  =

> >    clocks:
> > +    minItems: 3
> >      maxItems: 4
> >  =

> >    clock-names:
> > -    items:
> > -      - const: aclk
> > -      - const: hclk
> > -      - const: sclk
> > -      - const: apb_pclk
> > +    minItems: 3
> > +    maxItems: 4
> >  =

> >    resets:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 3
> >  =

> >    reset-names:
> > -    items:
> > -      - const: crypto-rst
> > +    minItems: 1
> > +    maxItems: 3
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3288-crypto
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: aclk
> > +            - const: hclk
> > +            - const: sclk
> > +            - const: apb_pclk
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: crypto-rst
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3328-crypto
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          items:
> > +            - const: hclk_master
> > +            - const: hclk_slave
> > +            - const: sclk
> =

> Do we really need new names? Was 'aclk' not the bus master clock?

I follow name convention from dt-bindings/clock/rk3328-cru.h

> =

> If the clocks and resets aren't the same, then maybe these 2 new chips =

> should be their own binding.

I dont understand what you mean ?
You mean having a rk3288-crypto.yaml and a rk3328-crypto.yaml (which will b=
e related to the same driver) ?

> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: crypto-rst
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3399-crypto
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          items:
> > +            - const: hclk_master
> > +            - const: hclk_slave
> > +            - const: sclk
> > +        resets:
> > +          minItems: 3
> > +        reset-names:
> > +          items:
> > +            - const: rst_master
> > +            - const: rst_slave
> =

> 'rst_' is redundant, drop.
> =


I will fix it

Thanks for the review

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
