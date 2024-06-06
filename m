Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CCF4C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 09:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLUChMQbVzDZObkNDwFymigMDe6ylzI7bTbgIdsXAYg=; b=zVhttgwZ71GXnq
	JNavh0O0UJqQM6KwDkFsuaMXI4/Y3w36LnQR2hSx6fWsR3iMrI5wz7ZYj+h30GADe5UfmIRwGdxvC
	StwNEzKGaMUEZh8eFfj8nk1WJ+7UmxmiyxwWtWFW4iScQcThkCZYKFacS/i+XGEu4aUhCEsNZUDAj
	d1ezSeU7ITa84MBT2XVTx3W4yJzBiIZNpfsK1puESaxwc9ZSwiRq9TWsBhJQ7B4CGirH9pnFt3Rbn
	zk43M9xDHkjD5kIhhVQ5LQCzLtMko1U0qTzVnOPCAvIzsqWhJz5Gpal09eARUym7eekXXPZ4nS7Oq
	oI8E2Wx6Pp2N20zdVFBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF9m2-00000009HK4-1Ez1;
	Thu, 06 Jun 2024 09:51:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF9ly-00000009HIi-3exv;
	Thu, 06 Jun 2024 09:51:08 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sF9lw-0007hw-5J; Thu, 06 Jun 2024 11:51:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH 3/3] pinctrl: rockchip: fix pinmux reset in rockchip_pmx_set
Date: Thu, 06 Jun 2024 11:51:03 +0200
Message-ID: <2308120.IFkqi6BYcA@diego>
In-Reply-To: <20240606060435.765716-4-i@mail.eh5.me>
References: <20240606060435.765716-1-i@eh5.me> <20240606060435.765716-4-i@mail.eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_025107_092583_C0EDAC94 
X-CRM114-Status: GOOD (  20.99  )
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

Am Donnerstag, 6. Juni 2024, 08:04:35 CEST schrieb Huang-Huang Bao:
> rockchip_pmx_set reset all pinmuxs in group to 0 in the case of error,
> add missing bank data retrieval in that code to avoid setting mux on
> unexpected pins.
> 
> Fixes: 14797189b35e ("pinctrl: rockchip: add return value to rockchip_set_mux")
> Signed-off-by: Huang-Huang Bao <i@eh5.me>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 24ee88863ce3..3f56991f5b89 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -2751,8 +2751,10 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
>  
>  	if (ret) {
>  		/* revert the already done pin settings */
> -		for (cnt--; cnt >= 0; cnt--)
> +		for (cnt--; cnt >= 0; cnt--) {
> +			bank = pin_to_bank(info, pins[cnt]);
>  			rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);
> +		}
>  
>  		return ret;
>  	}
> 

Oh, nice find - and wow that original code is actually 10 years old :-)
For context, original mistake is in the error handling (probably the case
it never turned up)

The first loop counts upwards doing pinmuxing and in the error case,
wants to reset everything back to the "standard" gpio muxing.
The first loop correctly retrieves the bank for each group, but the
error handling will always operate on that last retrieved bank:

 	for (cnt = 0; cnt < info->groups[group].npins; cnt++) {
 		bank = pin_to_bank(info, pins[cnt]);
		ret = rockchip_set_mux(bank, pins[cnt] - bank->pin_base,
				       data[cnt].func);
		if (ret)
			break;
	}

	if (ret) {
		/* revert the already done pin settings */
		for (cnt--; cnt >= 0; cnt--)
			rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);

		return ret;
 	}

So, TL;DR:

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
