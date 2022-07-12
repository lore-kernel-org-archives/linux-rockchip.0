Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14CD1C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jul 2022 21:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3cHYwQx1jRgsk8pQxZa1FJNthcRkTHXSflVy+7IUQs=; b=R0LcddC/gxCvoe
	z5W2XgdB9Vm4WdUp6/LvIEYAiNcaj59t1zzukVq91PkTLDfIJfPSthtee16+o2i1NCX0Ilf+rrhJz
	D57gwl/uQLUp29VlXf4MVYPeOr7cMPTGuaCadXJrkcyzmo/DpSlPxCcZJakc3FMCVSjTB2hDoD59E
	4KcbvzKnPItJYDwZ7VvMc6zMKXHDW5v0Yh/ezrevNDg2T/MQ84rLFSD1cP4nhdqtcp+2cyKmI2xF5
	W+AVKf0z5gAiRtQ4BHrO9LRB9F6dF8U6jRdPliZDfKUkJGnKffT/oRcsNZle8BDfLUr/Cw0JQB6kk
	L8GURRkwPT4KiwyQDayw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBNqQ-00F8ZX-FO; Tue, 12 Jul 2022 21:55:02 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBNqF-00F8VW-Kp; Tue, 12 Jul 2022 21:54:52 +0000
Received: by mail-io1-f46.google.com with SMTP id z81so9279724iof.0;
        Tue, 12 Jul 2022 14:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=B8tMYfNlFFBawjqFpMsqY7d8iDUBaf8mx9VTGzxGhHc=;
        b=3hr/LzNbDZqkqTcpbk6icBeGiYBraF6frL4mDAROOgUPh7YO6u88k4U+WByD9RUax/
         iDceWzhHRzrZAxw0cR2Tzq5mP3eGV8m5/7A04MSVQPnVRHesnVb8Y3Q6wAsuDiu6hQcy
         Lcn/3cUGyr47vBXWU4eZj8OFLwqKQVVPQnrIxxrqstEsmtImXtqHiuftLEZftNUM+8HP
         nJrx3AZdtE+qY0bX1ET2vH4HWWTEk9Fw3y4UNfNEy5VZHXfNp+FFnFS8EJmcxQYLqUhw
         OdzTueQb657xN4OFz2lBAO84/yYtGVw7VELL12cbsr4F7qVYnN9i6ydv4SJbzEsSq0Im
         gQ7w==
X-Gm-Message-State: AJIora/ubPSQ4uyDSfGWvJLWAZmx89VdTxZeOtYNXuRxQJFJczmqVOHU
	NLREVWrGVk5GRgCH1gRwaPqNW5Q33A==
X-Google-Smtp-Source: AGRyM1sTNF5cLSCr9EpJMt7vLz/hHDgjnWfrGwvfvH2h5+b+7Aw8r7rfZ4sFTiG0HwWsgHtxjiwo5Q==
X-Received: by 2002:a05:6602:2a42:b0:678:84be:c9ec with SMTP id k2-20020a0566022a4200b0067884bec9ecmr180408iov.64.1657662889754;
        Tue, 12 Jul 2022 14:54:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a29-20020a02735d000000b00339ef592279sm4573163jae.127.2022.07.12.14.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 14:54:49 -0700 (PDT)
Received: (nullmailer pid 2428467 invoked by uid 1000);
	Tue, 12 Jul 2022 21:54:47 -0000
Date: Tue, 12 Jul 2022 15:54:47 -0600
From: Rob Herring <robh@kernel.org>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: john@metanate.com, heiko@sntech.de, p.zabel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, didi.debian@cknow.org, herbert@gondor.apana.org.au, sboyd@kernel.org, mturquette@baylibre.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <20220712215447.GS1823936-robh@kernel.org>
References: <20220706090412.806101-1-clabbe@baylibre.com>
 <20220706090412.806101-26-clabbe@baylibre.com>
 <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
 <YsWcGDwPCX+/95i3@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsWcGDwPCX+/95i3@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_145451_697380_B51CEA29 
X-CRM114-Status: GOOD (  18.29  )
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

On Wed, Jul 06, 2022 at 04:28:40PM +0200, LABBE Corentin wrote:
> Le Wed, Jul 06, 2022 at 07:29:04AM -0600, Rob Herring a =E9crit :
> > On Wed, 06 Jul 2022 09:04:04 +0000, Corentin Labbe wrote:
> > > The latest addition to the rockchip crypto driver need to update the
> > > driver bindings.
> > > =

> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > > ---
> > >  .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++=
--
> > >  1 file changed, 77 insertions(+), 8 deletions(-)
> > > =

> > =

> > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_chec=
k'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > =

> > yamllint warnings/errors:
> > =

> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/cr=
ypto/rockchip,rk3288-crypto.yaml: allOf:0:then:properties:clock-names: 'one=
Of' conditional failed, one must be fixed:
> > 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'a=
pb_pclk'}] is too long
> > 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'a=
pb_pclk'}] is too short
> > 	False schema does not allow 4
> > 	1 was expected
> > 	4 is greater than the maximum of 2
> > 	4 is greater than the maximum of 3
> =

> Hello
> =

> I upgraded to dt-schema 2022.07 and fail to reproduce all errors.

Did you clean your tree or just touch this file after upgrading? I'm =

guessing not. We don't detect dt-schema changes. =


Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
