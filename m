Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7FBC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihzZE3ivdBlx2wpeFonnhF9eMGrTsAbPIrLKBid682g=; b=PPVuA1PnCO1CNZ
	ivETWNcH5BoXwBK7h63FO3JQ29zHUmggG7GRuno95c8XlLcogoFWi7tj7jcnP9dW7SIJz04A1vQzM
	NUmuaSL7pv33dHl+w3xPqmWUho7+U9cv1f9VPx56ZfKurXewAIkobsUzzhTScqqopA15xt71C28KJ
	WSSi5PL5l/6ukafZJNKp053dwxPq5rlFoaAf24PWNJgd++wvHc5wRSRBhAkWQThcyFnV1ba1vzaMt
	mADrdI0Mz6XwbbIKaAd467l/h5HREFE9LHhk+9Ars0XkZJ1VsKdzzKWQPKERLNjyFnTOn0jy0QhP9
	i8hq19Hf15MPoQPczLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7PSA-00HFom-0P;
	Mon, 27 Nov 2023 00:26:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7PS7-00HFlH-0E;
	Mon, 27 Nov 2023 00:26:21 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7PS2-0003nk-BA; Mon, 27 Nov 2023 01:26:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 3/9] i2c: rk3x: Adjust offset for i2c2 on rv1126
Date: Mon, 27 Nov 2023 01:26:13 +0100
Message-ID: <4717511.tIAgqjz4sF@diego>
In-Reply-To: <20231126194311.jxkvz3kqgsbzfgek@zenone.zhora.eu>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-4-tim@feathertop.org>
 <20231126194311.jxkvz3kqgsbzfgek@zenone.zhora.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_162619_134458_6AC56808 
X-CRM114-Status: GOOD (  30.52  )
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

Hi Andi,

Am Sonntag, 26. November 2023, 20:43:11 CET schrieb Andi Shyti:
> Hi Tim,
> 
> On Wed, Nov 22, 2023 at 11:22:26PM +1100, Tim Lunn wrote:
> > Rockchip RV1126 has special case mask bits for i2c2.
> > 
> > i2c2 wasnt previously enabled in rv1126.dtsi, adding DT node alone
> > is not sufficient to enable i2c2. This patch fixes the i2c2 bus.
> 
> If I don't have sufficient information about the hardware this
> description is completely meaningless to me.
> 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > ---
> > 
> > Changes in v2:
> > - i2c: clarify commit message
> > 
> >  drivers/i2c/busses/i2c-rk3x.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> > index a044ca0c35a1..151927466d1d 100644
> > --- a/drivers/i2c/busses/i2c-rk3x.c
> > +++ b/drivers/i2c/busses/i2c-rk3x.c
> > @@ -1288,8 +1288,11 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
> >  			return -EINVAL;
> >  		}
> >  
> > -		/* 27+i: write mask, 11+i: value */
> > -		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
> > +		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
> > +			value = BIT(20) | BIT(4);
> 
> Any chance to put a comment here as it is in the other
> assignment?
> 
> Are the two assignment mutually exclusive?
> 
> Heiko, any chance to take a look here?

So the background is, that on some SoCs Rockchip implemented to
different variants for the i2c controller. One new-style controller
that they started using in rk3066 and are using even today.

For these old socs they kept the "old" controller block as a sort
of fallback if the new thing didn't work out, and the bit above is
switching between the 

Hence that is limited to rk3066, rk3188 and seemingly the rv1126.
And while the bits controlling the i2c controllers on the original socs
are order sequentially in the grf register, the rv1126 seems to have
those bits in non-consequtive places.


So TL;DR the change itself is likely good, and hopefully there won't
be any more of those, as all the new socs don't need this anymore.

I do agree with the request for a comment describing the issue
in the code, but otherwise

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
