Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44099C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 11:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bF9OSv9JNF0pyQvJflnPhM6HvTgT3LTqgXJyGhM4b5w=; b=VZqVGixTd1UHaf
	pyP5fv8FtEXd/VSvGe4Ah9ZdMY5zxjoeAA5XMNXl2j6thaftafPQQqL1feJ/j/NMXBrNPxqDmC40M
	qWSZS3I8gDvUd+2qIRbdl2RBwir+wjvxHwITsra34Df7Y1xH1TTkPHJB6XOk5Wa7nErYjNzudOwqy
	NTgKLjJDQY4joocYimerq37dIF2Mt4QNOjABNJZulvDu774J2Rs5nVwigVl8vzbsSlEoEpUFtshNP
	VoA5IVA1ANHe7IWSJ5azihSWIMURhdDr55xP9vUnX98/bVWQ8O5+pe9SxpoZun5Ekd3wH/0ecHycS
	pyM5NKpsHKROPlqnXuwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FDv-0000fK-Mx; Mon, 20 Jun 2022 11:05:39 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FDh-0000Ol-E0; Mon, 20 Jun 2022 11:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=JtWYZV1ZUB9zWxnOO4bgicY4RQzn+QgQFFTY9VvrXQw=; b=n8sIg
	XF3SiOc5XAmJlqEPRH9w4T59X6m+7fZ5y/F/Qb6F7qWo0h1ajoVkArF7YcYfpp+TZQF4c7i1aJubw
	LqhGrGilz8QDOo/hoZUC2DO0heXPlc3eC+RbrCVvOVaoxDNANduUUyMy/t1a12wzWtcnFs6yOoh9J
	DUlSHMLnjeqXeunHjxFjtL0izeiyMyfr3Q6f0h0RhFGWSHaQJhd+dVwtpGX31R6WM1ybVzm32DjMG
	DzNcZLqUbbMtWjdn57XS9KRslbU+ZvrvpAPiA9ibsWTccyd4rYC0Ukwo6Um+iP77+PCsyopPTGamH
	vxvHbVfim8mrn9zqJS5N+kBJZKQhA==;
Received: from 92.40.170.2.threembb.co.uk ([92.40.170.2] helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <john@metanate.com>)
	id 1o3FCk-0002O9-Hw; Mon, 20 Jun 2022 12:04:26 +0100
Date: Mon, 20 Jun 2022 12:04:24 +0100
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Message-ID: <YrBUODGF51oUsF1f@donbot>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-15-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220508185957.3629088-15-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_040525_500693_14D0BB5A 
X-CRM114-Status: GOOD (  21.79  )
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

On Sun, May 08, 2022 at 06:59:38PM +0000, Corentin Labbe wrote:
> reset could be handled by PM functions.

Is there any further rationale for this?

After this change there is no longer a guaranteed reset pulse on probe
since the reset control may already be de-asserted.  This is normally
the most important case for a reset as it's the only time when the state
of the hardware is unknown.

The original use of devm_add_action_or_reset() seems a bit weird already
since there doesn't seem to be any need to assert reset when the driver
is unloaded.

> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.c | 19 ++++---------------
>  1 file changed, 4 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
> index d9258b9e71b3..a11a92e1f3fd 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> @@ -73,6 +73,8 @@ static int rk_crypto_pm_suspend(struct device *dev)
>  {
>  	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
>  
> +	reset_control_assert(rkdev->rst);
> +
>  	rk_crypto_disable_clk(rkdev);
>  	return 0;
>  }
> @@ -81,6 +83,8 @@ static int rk_crypto_pm_resume(struct device *dev)
>  {
>  	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
>  
> +	reset_control_deassert(rkdev->rst);
> +
>  	return rk_crypto_enable_clk(rkdev);
>  }
>  
> @@ -222,13 +226,6 @@ static void rk_crypto_unregister(void)
>  	}
>  }
>  
> -static void rk_crypto_action(void *data)
> -{
> -	struct rk_crypto_info *crypto_info = data;
> -
> -	reset_control_assert(crypto_info->rst);
> -}
> -
>  static const struct of_device_id crypto_of_id_table[] = {
>  	{ .compatible = "rockchip,rk3288-crypto" },
>  	{}
> @@ -254,14 +251,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
>  		goto err_crypto;
>  	}
>  
> -	reset_control_assert(crypto_info->rst);
> -	usleep_range(10, 20);
> -	reset_control_deassert(crypto_info->rst);
> -
> -	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
> -	if (err)
> -		goto err_crypto;
> -
>  	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(crypto_info->reg)) {
>  		err = PTR_ERR(crypto_info->reg);
> -- 
> 2.35.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
