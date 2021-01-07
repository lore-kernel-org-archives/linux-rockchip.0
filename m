Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 794F0C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 14:55:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 133DE2333E
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 14:55:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 133DE2333E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ehcMwL5pLxJdu39ETqaeJ6nRnaWC7dcnfRe+7q2MOV8=; b=WxHRYl6se7veEG6CMwRcvdiHs
	c00MlWhYnUH62+xqf6HjP3ALBvtVIf4uEWN1rMUEg3ynzNQ39rpppDFYoCZvH2qJmSHSMvv6So26d
	Arrr2I0QbKORkH3I1EnoQieCtZzA+TuMZa2cmpUj89wis/5x5SITGrRgDMtr28m4wTH4LNSRftyqz
	xoKyetV2doyfUHYhD/2gi+0tEdXlHyeF8lSzEEursnM0FQS85qSmK2PsgejtriVdljKSOZoK63yPE
	jP8lhoK/Pu+0T1HO3T8rqKeRGovPvA6fVoyybGL4+KueTRdtAgVJgi2GxLtJs8RZM8cvUZ/4iF+6i
	pJRfHEQCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxWhb-0006DJ-0o; Thu, 07 Jan 2021 14:55:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxWhX-0006Bj-VT
 for linux-rockchip@lists.infradead.org; Thu, 07 Jan 2021 14:55:48 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kxWhV-0006TA-EU; Thu, 07 Jan 2021 15:55:45 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kxWhP-0003zw-Fm; Thu, 07 Jan 2021 15:55:39 +0100
Message-ID: <a23ab40e50a761bd2127df6bc8b2a91e99a1617c.camel@pengutronix.de>
Subject: Re: [PATCH 3/5] dt-bindings: media: rockchip-vpu: Add PX30 compatible
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 07 Jan 2021 15:55:39 +0100
In-Reply-To: <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_095548_164585_BACFE1F3 
X-CRM114-Status: GOOD (  14.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Paul,

On Thu, 2021-01-07 at 14:40 +0100, Paul Kocialkowski wrote:
> The Rockchip PX30 SoC has a Hantro VPU that features a decoder (VDPU2)
> and an encoder (VEPU2). It is similar to the RK3399's VPU but takes an
> extra clock (SCLK).
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../bindings/media/rockchip-vpu.yaml          | 25 +++++++++++++------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index c81dbc3e8960..c446b9ead21b 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -15,10 +15,13 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3288-vpu
> -      - rockchip,rk3328-vpu
> -      - rockchip,rk3399-vpu
> +    oneOf:
> +      - const: rockchip,rk3288-vpu
> +      - const: rockchip,rk3328-vpu
> +      - const: rockchip,rk3399-vpu
> +      - items:
> +        - const: rockchip,px30-vpu
> +        - const: rockchip,rk3399-vpu
>  
>    reg:
>      maxItems: 1
> @@ -35,12 +38,18 @@ properties:
>            - const: vdpu
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> -    items:
> -      - const: aclk
> -      - const: hclk
> +    oneOf:
> +      - items:
> +        - const: aclk
> +        - const: hclk
> +      - items:
> +        - const: aclk
> +        - const: hclk
> +        - const: sclk

You could make this:

    clock-names:
      minItems: 2
      items:
        - const: aclk
        - const: hclk
        - const: sclk

And then:

allOf:
  - if:
      properties:
        compatible:
          contains:
            const: rockchip,px30-vpu
    then:
      properties:
        clock-names:
          minItems: 3

to make sure each variant has the correct clocks set.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
