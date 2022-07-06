Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4683CC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwOBd+PapevirDQFDFq43dp1Wd0YWx9TrwMACqVl6mM=; b=KVLGnBKob2GAms
	R+eSWR9icvhCg1pNnMsDaXbDoKtExYM5XK0pCl2ZZXv54+zO/AWFcA4WxxqfbTMcscY6mdfBDbRnP
	Rwc/OpktQDxTOGv8jx7Mx6CtUdt9GcKHyPdO3uLWgBXFwZ6+JRWLAzLRlz/k0LrHwohdK88L7M26R
	AlhhRSSQNvtPZP32SYwBQ01Mv+OU0fB9KkVdCf1/8vRwWwbvkl/OW+pQATaNExUhS6xvGs3+j47lN
	/hlfb5H19ZM5ooPJ12tzyRVLCgv0zcQml8y2frPtPm6a83AhyGgvcrEOVgh5iT1iPd752KWAhFu6N
	6ocDnISdBgtsiV4jwVYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o961R-00AdbY-Oj; Wed, 06 Jul 2022 14:28:57 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o961H-00AdYe-QH
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 14:28:49 +0000
Received: by mail-wr1-x436.google.com with SMTP id v16so10892182wrd.13
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 07:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ftt1gf1maseGqC1Gii2R8eooTq30YUOm7AExkJ1sGBI=;
        b=Idoj3f1+WjxFSaC8dyFJ6WmfifQA2Bwuj5QgzV8Fe9fCvZIDrYQbVnffG8rK4Nhc4M
         jvHyyMmjSeGMeDEH4iox8BuBGuO6q8XyI23QONyQjrKEGWhId2FvvYQYj+rZeGaB0/eo
         MUdXlaK5JbXGM0j2k3ek6BkgxAY9GaYqGOl+mn/4rhtdprQ7qgjNalgVk6pGjrDjT7Ku
         eeUWJoM0DPwXvseOzmAuU3AAzE03J0h5k3FeeTVa3m4j4nFPgILNL7MqTRu2UnVmw5aX
         1zZugYcVyqVJ3+nz8LREpA3sfLCyT180zGZkVMDZPDaXbPkBCuENIrpeSE4U0KAp5FG1
         0IlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ftt1gf1maseGqC1Gii2R8eooTq30YUOm7AExkJ1sGBI=;
        b=E/pAYmOaMXlOGne5115LPx0PkGuGnzC3LQFEi3PXH0SGjWs7tEjvFbg4nq1X0OeHnS
         ksadOfpanhCElTpt9xe5lOG/GjUL4azpSQD1apCRmyaSqyFJ4rUzUuo0w+XUg6pHTKlJ
         CuYwzBcBu0NHTPYpux5QRjypVYxBbjwlEOCwClzIDIAv3U2O4aT+q0Zo5RKQYJefkraZ
         IjZZ4sqSlEskoHLeroJYtf/LB0xVsRNp9QvhUl0Lx2GS33v9edLgeIaA5khX/NxxtYwC
         mKbQHIy9erSYt3YBE8LIIUABHbddkX0tMWDClQ5oL4fMt8H+0JdPdRFLeaLSktX2wBD3
         IEwQ==
X-Gm-Message-State: AJIora9YFyrtMu6JzuJijFWpt60sCZqEHw9QC7eu+DUgbQdTnmvk8eb+
	HjSObgb8UInnoVbsKLtUdwTs3g==
X-Google-Smtp-Source: AGRyM1s/EpMgC9IgMxTtWr1OjAkAw4mmTjNBAsTu4Zuo0mz4gDkedlTMxCZZ9t17GTaZzEa0+7q8Kg==
X-Received: by 2002:adf:ea08:0:b0:21d:6dbf:6366 with SMTP id q8-20020adfea08000000b0021d6dbf6366mr13294602wrm.137.1657117724247;
        Wed, 06 Jul 2022 07:28:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id y5-20020a056000108500b002167efdd549sm8046055wrw.38.2022.07.06.07.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:28:43 -0700 (PDT)
Date: Wed, 6 Jul 2022 16:28:40 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: john@metanate.com, heiko@sntech.de, p.zabel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, didi.debian@cknow.org,
	herbert@gondor.apana.org.au, sboyd@kernel.org,
	mturquette@baylibre.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <YsWcGDwPCX+/95i3@Red>
References: <20220706090412.806101-1-clabbe@baylibre.com>
 <20220706090412.806101-26-clabbe@baylibre.com>
 <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072847_876846_D1D50236 
X-CRM114-Status: GOOD (  13.31  )
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

Le Wed, Jul 06, 2022 at 07:29:04AM -0600, Rob Herring a =E9crit :
> On Wed, 06 Jul 2022 09:04:04 +0000, Corentin Labbe wrote:
> > The latest addition to the rockchip crypto driver need to update the
> > driver bindings.
> > =

> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
> >  1 file changed, 77 insertions(+), 8 deletions(-)
> > =

> =

> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> =

> yamllint warnings/errors:
> =

> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/cryp=
to/rockchip,rk3288-crypto.yaml: allOf:0:then:properties:clock-names: 'oneOf=
' conditional failed, one must be fixed:
> 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'apb=
_pclk'}] is too long
> 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'apb=
_pclk'}] is too short
> 	False schema does not allow 4
> 	1 was expected
> 	4 is greater than the maximum of 2
> 	4 is greater than the maximum of 3

Hello

I upgraded to dt-schema 2022.07 and fail to reproduce all errors.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
