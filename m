Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A89AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 15:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZIfO7RePC2R48ruzOYai5wuyb6UNIrY5OGOqJ3tFyA=; b=OT/vJ2mP6hez5c
	ngflry5JOd1U1sMccZhnOFf1+MWiyuPBofpWfFpIv/Dni+rViSfdjn9N1v/EBItaDDGMu/tW1yc4G
	8N4P6x2Kk415cU/EG1AWa8ajyZ5ySePAPsOxyrJnGLEv4QyEKnDkN2mP9Cnm+IIx3GwwwPAUFrDOU
	RDry+5/w6KmWjPdBzYjUCTxIrV+BFogu8f9ZtNw6gl3T2GeX5jIgo8S9QZnkx0gaRXKu4N+gRhh+U
	nHAAR8zsXVH8z/nKAFhPncnEiWBngm1HvwA003cfNf/MSC73ecKVtbhxTqQUtZvcIKv26uxfW7qrF
	jaMXaDNPxsqP1h7zGklg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhBtS-009W6t-5Y; Wed, 20 Apr 2022 15:05:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhBtE-009W24-Bw; Wed, 20 Apr 2022 15:05:09 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nhBtC-0006R6-OT; Wed, 20 Apr 2022 17:05:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-gpio@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] pinctrl: rockchip: sort the rk3308_mux_recalced_data
 entries
Date: Wed, 20 Apr 2022 17:05:06 +0200
Message-ID: <4520799.LvFx2qVVIh@phil>
In-Reply-To: <20220420142432.248565-2-luca.ceresoli@bootlin.com>
References: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
 <20220420142432.248565-2-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_080508_481098_CF8F762D 
X-CRM114-Status: GOOD (  15.43  )
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

Am Mittwoch, 20. April 2022, 16:24:32 CEST schrieb Luca Ceresoli:
> All the entries are sorted according to num/pin except for two
> entries. Sort them too.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 65fa305b5f59..2cb79e649fcf 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -512,20 +512,6 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>  		.reg = 0x34,
>  		.bit = 8,
>  		.mask = 0xf
> -	}, {
> -		/* gpio3b4_sel */
> -		.num = 3,
> -		.pin = 12,
> -		.reg = 0x68,
> -		.bit = 8,
> -		.mask = 0xf
> -	}, {
> -		/* gpio3b5_sel */
> -		.num = 3,
> -		.pin = 13,
> -		.reg = 0x68,
> -		.bit = 12,
> -		.mask = 0xf
>  	}, {
>  		/* gpio2a2_sel */
>  		.num = 2,
> @@ -561,6 +547,20 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>  		.reg = 0x68,
>  		.bit = 6,
>  		.mask = 0x3
> +	}, {
> +		/* gpio3b4_sel */
> +		.num = 3,
> +		.pin = 12,
> +		.reg = 0x68,
> +		.bit = 8,
> +		.mask = 0xf
> +	}, {
> +		/* gpio3b5_sel */
> +		.num = 3,
> +		.pin = 13,
> +		.reg = 0x68,
> +		.bit = 12,
> +		.mask = 0xf
>  	},
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
