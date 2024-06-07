Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D55C0C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 12:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eq+UImvmjMfdpHk7CZYeBLNJUGOC0E3HlUZUS1qEZoI=; b=iKk4E3wYhM5kVa
	UTXdXpEhHS1/Yvp0ilq1dX+FF0msfK4l4qe83ddfhTMmz0flrbOrfrzqEUQAkho5VV6nAKgK7iYzM
	lhIi2xmdFnEKccqQrUOlplEsnj0yiVZ0T4t+dX9x5bTgP9uI7LBfHSAkKVfvfr6JGT3dwaQcyusX7
	BGc851eFGJrCzkqkYaEq9Df+7yV+J5Zv4tAgNyOZa7ix3QW7E0ufvx02jMTNuv0ELepIhkYLxcMyq
	4ajpAUSm6QGCELsKF/2gbZEfnwufe4SYweQeVpjtEkBlynGMFzdHz5YReotilLmCs0fSy4FPk/5Co
	t4a9mtOo3+mlLytKJIEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFYlj-0000000DxY1-2Uum;
	Fri, 07 Jun 2024 12:32:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFYlf-0000000DxWO-3yAW;
	Fri, 07 Jun 2024 12:32:29 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFYlc-0002sh-3l; Fri, 07 Jun 2024 14:32:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>,
 kever.yang@rock-chips.com
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH v2 2/4] pinctrl: rockchip: fix pinmux bits for RK3328 GPIO3-B pins
Date: Fri, 07 Jun 2024 14:32:22 +0200
Message-ID: <4786379.ElGaqSPkdT@phil>
In-Reply-To: <20240606125755.53778-3-i@eh5.me>
References: <20240606125755.53778-1-i@eh5.me> <20240606125755.53778-3-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_053228_018046_95E876A1 
X-CRM114-Status: GOOD (  20.53  )
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

Am Donnerstag, 6. Juni 2024, 14:57:53 CEST schrieb Huang-Huang Bao:
> The pinmux bits for GPIO3-B1 to GPIO3-B6 pins are not explicitly
> specified in RK3328 TRM, however we can get hint from pad name and its
> correspinding IOMUX setting for pins in interface descriptions. The
> correspinding IOMIX settings for these pins can be found in the same
> row next to occurrences of following pad names in RK3328 TRM.
> 
> GPIO3-B1:  IO_TSPd5m0_CIFdata5m0_GPIO3B1vccio6
> GPIO3-B2: IO_TSPd6m0_CIFdata6m0_GPIO3B2vccio6
> GPIO3-B3: IO_TSPd7m0_CIFdata7m0_GPIO3B3vccio6
> GPIO3-B4: IO_CARDclkm0_GPIO3B4vccio6
> GPIO3-B5: IO_CARDrstm0_GPIO3B5vccio6
> GPIO3-B6: IO_CARDdetm0_GPIO3B6vccio6
> 
> Add pinmux data to rk3328_mux_recalced_data as mux register offset for
> these pins does not follow rockchip convention.
> 
> Signed-off-by: Huang-Huang Bao <i@eh5.me>

This matches the information that I found in my TRM, thanks to your
detailed explanation.

Though I of course can't say if the TRM is just wrong or the hardware
changed after the pads-description was written.

Did you test the usage of these pins on your board?


Heiko



> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 51 ++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 78dcf4daccde..23531ea0d088 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -634,17 +634,68 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>  
>  static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
>  	{
> +		/* gpio2_b7_sel */
>  		.num = 2,
>  		.pin = 15,
>  		.reg = 0x28,
>  		.bit = 0,
>  		.mask = 0x7
>  	}, {
> +		/* gpio2_c7_sel */
>  		.num = 2,
>  		.pin = 23,
>  		.reg = 0x30,
>  		.bit = 14,
>  		.mask = 0x3
> +	}, {
> +		/* gpio3_b1_sel */
> +		.num = 3,
> +		.pin = 9,
> +		.reg = 0x44,
> +		.bit = 2,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b2_sel */
> +		.num = 3,
> +		.pin = 10,
> +		.reg = 0x44,
> +		.bit = 4,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b3_sel */
> +		.num = 3,
> +		.pin = 11,
> +		.reg = 0x44,
> +		.bit = 6,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b4_sel */
> +		.num = 3,
> +		.pin = 12,
> +		.reg = 0x44,
> +		.bit = 8,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b5_sel */
> +		.num = 3,
> +		.pin = 13,
> +		.reg = 0x44,
> +		.bit = 10,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b6_sel */
> +		.num = 3,
> +		.pin = 14,
> +		.reg = 0x44,
> +		.bit = 12,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b7_sel */
> +		.num = 3,
> +		.pin = 15,
> +		.reg = 0x44,
> +		.bit = 14,
> +		.mask = 0x3
>  	},
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
