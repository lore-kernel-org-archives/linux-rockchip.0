Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66FE2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTVYzhpQJrHtjIDX18taextYh+oWzsYKshUZOpe8hC8=; b=Mh6ZF/F7MruEIe
	JRbo0k9/0hKI7o5J3IGQsUsh1RZx0hTM5nio8Q8Cn2FDxaH1W3OMoXAeDUzCcwDayzwjdkCCicIoQ
	f5Adb/A63RvJQucli574qMZn+PrXBZtXttLcnW5P6cilbloJJCOY1gUT33YwjcvhN3vlMiZDuIj3l
	/ZAy1BLUHhc1SAkuJ5YUdDeUM/Kxm+Vfiem0paqOxKwZBPtVoh8gaWTz4fsJF4gUG2MMmksaMAxEp
	cFfdDQ2QHIIc38bjY30o5zBKiFl46yPczL4yv9/HpKo7mmUQozK2D1A1goeWtkIhcwz9G4DxkJJGC
	9rJIeYvZ4hNavKtfrTIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhBsv-009VwK-Ds; Wed, 20 Apr 2022 15:04:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhBsk-009Vtj-21; Wed, 20 Apr 2022 15:04:39 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nhBsd-0006QZ-7U; Wed, 20 Apr 2022 17:04:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-gpio@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pinctrl: rockchip: fix RK3308 pinmux bits
Date: Wed, 20 Apr 2022 17:04:23 +0200
Message-ID: <5942762.lOV4Wx5bFT@phil>
In-Reply-To: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
References: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_080438_152826_CA90DE94 
X-CRM114-Status: GOOD (  22.12  )
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

Am Mittwoch, 20. April 2022, 16:24:31 CEST schrieb Luca Ceresoli:
> Some of the pinmuxing bits described in rk3308_mux_recalced_data are wrong,
> pointing to non-existing registers.
> 
> Fix the entire table.
> 
> Also add a comment in front of each entry with the same string that appears
> in the datasheet to make the table easier to compare with the docs.
> 
> This fix has been tested on real hardware for the gpio3b3_sel entry.
> 
> Fixes: 7825aeb7b208 ("pinctrl: rockchip: add rk3308 SoC support")
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks for walking through the datasheet for the fixes :-)

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 45 ++++++++++++++++++++----------
>  1 file changed, 30 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index a1b598b86aa9..65fa305b5f59 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -457,95 +457,110 @@ static  struct rockchip_mux_recalced_data rk3128_mux_recalced_data[] = {
>  
>  static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>  	{
> +		/* gpio1b6_sel */
>  		.num = 1,
>  		.pin = 14,
>  		.reg = 0x28,
>  		.bit = 12,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1b7_sel */
>  		.num = 1,
>  		.pin = 15,
>  		.reg = 0x2c,
>  		.bit = 0,
>  		.mask = 0x3
>  	}, {
> +		/* gpio1c2_sel */
>  		.num = 1,
>  		.pin = 18,
>  		.reg = 0x30,
>  		.bit = 4,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1c3_sel */
>  		.num = 1,
>  		.pin = 19,
>  		.reg = 0x30,
>  		.bit = 8,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1c4_sel */
>  		.num = 1,
>  		.pin = 20,
>  		.reg = 0x30,
>  		.bit = 12,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1c5_sel */
>  		.num = 1,
>  		.pin = 21,
>  		.reg = 0x34,
>  		.bit = 0,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1c6_sel */
>  		.num = 1,
>  		.pin = 22,
>  		.reg = 0x34,
>  		.bit = 4,
>  		.mask = 0xf
>  	}, {
> +		/* gpio1c7_sel */
>  		.num = 1,
>  		.pin = 23,
>  		.reg = 0x34,
>  		.bit = 8,
>  		.mask = 0xf
>  	}, {
> +		/* gpio3b4_sel */
>  		.num = 3,
>  		.pin = 12,
>  		.reg = 0x68,
>  		.bit = 8,
>  		.mask = 0xf
>  	}, {
> +		/* gpio3b5_sel */
>  		.num = 3,
>  		.pin = 13,
>  		.reg = 0x68,
>  		.bit = 12,
>  		.mask = 0xf
>  	}, {
> +		/* gpio2a2_sel */
>  		.num = 2,
>  		.pin = 2,
> -		.reg = 0x608,
> -		.bit = 0,
> -		.mask = 0x7
> +		.reg = 0x40,
> +		.bit = 4,
> +		.mask = 0x3
>  	}, {
> +		/* gpio2a3_sel */
>  		.num = 2,
>  		.pin = 3,
> -		.reg = 0x608,
> -		.bit = 4,
> -		.mask = 0x7
> +		.reg = 0x40,
> +		.bit = 6,
> +		.mask = 0x3
>  	}, {
> +		/* gpio2c0_sel */
>  		.num = 2,
>  		.pin = 16,
> -		.reg = 0x610,
> -		.bit = 8,
> -		.mask = 0x7
> +		.reg = 0x50,
> +		.bit = 0,
> +		.mask = 0x3
>  	}, {
> +		/* gpio3b2_sel */
>  		.num = 3,
>  		.pin = 10,
> -		.reg = 0x610,
> -		.bit = 0,
> -		.mask = 0x7
> +		.reg = 0x68,
> +		.bit = 4,
> +		.mask = 0x3
>  	}, {
> +		/* gpio3b3_sel */
>  		.num = 3,
>  		.pin = 11,
> -		.reg = 0x610,
> -		.bit = 4,
> -		.mask = 0x7
> +		.reg = 0x68,
> +		.bit = 6,
> +		.mask = 0x3
>  	},
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
