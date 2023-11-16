Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32946C47071
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 21:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJzbK7lMz8NpDTUHwF46Ska7GXxz5gT5sfRRZTMduLk=; b=uLDH3XnZ1NrS5M
	o2uSVhB6NTqeRao2TdEVEGWgCF3+23dg1e++0Xw2zRLpgoiYzdMryAjhlSk1JwM+76nTnIE30Fhnh
	xiPfrsl5PqdckYDEvnro55Ig9JwypgK6ABKUV1/Bqoc6tZNrWkfiD+nfZulwHGnNerOjF2YslKRdE
	wAl+t9fgRaRmBgue2v7+01sZ5HIXU+32YPx+RKwXIejsZAnNpNRBTUIqpfKE4H3o/8bX8c5+m/YeW
	XEF0S3IuWzx4wM1EHtrvHtyvfaej2zyjf9D4AODG/cOxXzD1zwsz3JVpIGKzENX1m1QzONNb4t7ZZ
	Q/43CvkTC5qsnW6xBSSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3jTo-004pB4-1N;
	Thu, 16 Nov 2023 21:00:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3iRF-004dDH-2F;
	Thu, 16 Nov 2023 19:54:11 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3iR9-0005Jj-CH; Thu, 16 Nov 2023 20:54:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Lunn <tim@feathertop.org>
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH 3/8] i2c: rk3x: Adjust grf offset for i2c2 on rv1126
Date: Thu, 16 Nov 2023 20:54:02 +0100
Message-ID: <4846724.GXAFRqVoOG@phil>
In-Reply-To: <20231113120705.1647498-4-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-4-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_115409_755372_9F83DAEB 
X-CRM114-Status: GOOD (  19.67  )
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

Hi,

Am Montag, 13. November 2023, 13:07:00 CET schrieb Tim Lunn:
> Rockchip RV1126 has a special case grf offset/mask for i2c2

This sounds misleading. When looking at the soc-data, the grf offset
seems to be the same for all busses of the rv1126, only the offset
seems to be different for i2c2.

Sadly I don't have (and didn't find any) rv1126 TRM, so couldn't verify.

Change itself looks nice. As it's only this one bus of one soc so far,
we likely won't need a more involved solution just now.


> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  drivers/i2c/busses/i2c-rk3x.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index a044ca0c35a1..83b7bf7b48a7 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1288,8 +1288,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
>  			return -EINVAL;
>  		}
>  
> -		/* 27+i: write mask, 11+i: value */
> -		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
> +		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
> +			/* rv1126 i2c2 set pmugrf offset-0x118, bit-4 */

same here, comment could drop the offset reference I guess.

> +			value = BIT(20) | BIT(4);
> +		else
> +			/* 27+i: write mask, 11+i: value */
> +			value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
>  
>  		ret = regmap_write(grf, i2c->soc_data->grf_offset, value);
>  		if (ret != 0) {
> 


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
