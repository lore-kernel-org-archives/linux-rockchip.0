Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F57DC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:27:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92586610A1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:27:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92586610A1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE3wP6+CvG3PXHtD6UvqLH3gFG7cWvbB0yKUeW0IWIg=; b=T23T+90zAseZ6o
	u9zM1mXZ3d3ef5+VpXrx7iyEOMv2bBA9P4FgZrjs16os7dUiXEpNpDWT8MbJBcbmqdJQIbo0x3jfe
	9aFkJUWwxtIzsXYCXrdSHK9ZF1O9NGkx73tcHFjnuk2cWopxEq8l1WeGKfLQ6vn+cFXCXAO3cPMMD
	nRbYuMd1DIgIgjq3A/GSPchXYRniWGaiUdOdxT9DMLPGlce0ZL7J2yzX+aupY8pe/2QTby6mqj1NJ
	VlXAa65TwUHaHf4VCXVTlbPEiktxrS94Qczoc8Qi4mtgC7RQJpyrJpqkMRE2rdzV3eJILISyDdcRS
	qBeqooRfJ258qottTXTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBY2-002aoL-5l; Mon, 07 Jun 2021 09:27:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBBP-002TG5-UU; Mon, 07 Jun 2021 09:04:36 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lqBBH-0000nU-KF; Mon, 07 Jun 2021 11:04:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org,
 Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126 and rk3568
Date: Mon, 07 Jun 2021 11:04:21 +0200
Message-ID: <3681106.bcXerOTE6V@diego>
In-Reply-To: <ef90ae6d-40bb-8389-f4f8-536a7b610fb7@gmail.com>
References: <20210607063448.29589-1-jon.lin@rock-chips.com>
 <20210607063448.29589-2-jon.lin@rock-chips.com>
 <ef90ae6d-40bb-8389-f4f8-536a7b610fb7@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_020432_038460_6265FBEA 
X-CRM114-Status: GOOD (  29.60  )
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

Am Montag, 7. Juni 2021, 10:15:30 CEST schrieb Johan Jonker:
> Hi Jon,
> 
> On 6/7/21 8:34 AM, Jon Lin wrote:
> > The description below will be used for rv1126.dtsi or rk3568.dtsi in
> > the future
> > 
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > ---
> > 
> > Changes in v4:
> > - Adjust the order patches
> > - Simply commit massage like redundancy "application" content
> > 
> > Changes in v3:
> > - Fix compile error which is find by Sascha in [v2,2/8]
> > 
> >  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> > index 1e6cf29e6388..2d7957f9ae0a 100644
> > --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> > @@ -27,12 +27,14 @@ properties:
> >        - items:
> >            - enum:
> >                - rockchip,px30-spi
> 
> > +              - rockchip,rv1126-spi
> 
> This list is sort alphabetically.
> Move "rockchip,rv1126-spi" below "rockchip,rk3568-spi"
> 
> >                - rockchip,rk3188-spi
> >                - rockchip,rk3288-spi
> >                - rockchip,rk3308-spi
> >                - rockchip,rk3328-spi
> >                - rockchip,rk3368-spi
> >                - rockchip,rk3399-spi
> > +              - rockchip,rk3568-spi
> 
> 
> >            - const: rockchip,rk3066-spi
> >  
> >    reg:
> > 
> 
> ===
> 
> Your comment in [PATCH v3 3/8]:
> >> Adding "rockchip,rv1126-spi" to rockchip_spi_dt_match[] is strictly not
> >> needed when using "rockchip,rk3066-spi" as fall back string.
> >> Could a maintainer advise?
> >>
> >> Maybe this bug of mine should revert too?? Or is it legacy?
> >> spi: rockchip: add compatible string for px30 rk3308 rk3328
> >> https://lore.kernel.org/r/20200309151004.7780-1-jbx6244@gmail.com
> 
> > I agree with you. If the maintainer doesn't have any comments, I will use
> > "rockchip,spi" as compatible names for the subsequent rk platform.
> 
> Compatibility strings are supposed to be SoC orientated.
> So generic ones like in the manufacturer tree can't be used here.

Johan ist right :-) .

rockchip,spi won't work at all, especially as these controllers always change
over time. [0]

Best example is the iommu. We started with "rockchip,iommu" thinking this
won't change over time, but with the rk3568 we get a new slightly different
iommu.

The vendor-kernel then introduces somewhat random "-vX" additions to
distinguish them, but often they do seem to be very software-centric.

Meaning, hardware-designers moved stuff around and software-developers
then invented the versioning to differentiate between versions.

The devicetree is supposed to describe the hardware though, so going with
the relevant soc-specific compatible gives us the necessary hardware-centric
differentiation.

Also this allows to catch later issues with specific soc implementations ;-)
Like 6 monts down the road we discover some special behaviour on the
rk3568 and devicetree is supposed to be stable.

So having the relevant compatibles in place allows us to just add driver
fixes and have those apply on the rk3568 if that is need at some point.

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
