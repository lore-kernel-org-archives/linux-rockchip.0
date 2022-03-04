Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA32C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYKc3FcryJ2LZCyzxGy8cQ7BqnKMlRcBxjx700IN3ag=; b=W/NHHhA6EbdbQR
	SfP8/kh7rUlQ868kejldcLuDS0rQRvSAs8/eKkCm92yzlblGO9BDaqsthWbppgB9Osz1f7TrJx7Mp
	g5o0IwzUgxfTtkSAYinhEQOpE3i2zdE51LcIVYWT1IFHp68QAO2dAz31V1PgFHlKl84pjQVyf/GE3
	miDwY95A5vPJ++mE6nkJyypqdQsziV83rYhO+DKHraBgt6IZz6U0eKrEILCgf6aMoKIPdUeX85uPK
	cKPtn6mFswogaYIRWmOt5/hucsOqSXkMh98YMSOv/GDvjm+LjtRHZ0sU8YKMcdirLp1h4mCmrZs0e
	XWMyYCKkjEqo3SCzf2XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ9Rh-00AdvB-IM; Fri, 04 Mar 2022 15:02:17 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ9RU-00Ads0-H3; Fri, 04 Mar 2022 15:02:06 +0000
Received: by mail-ed1-x535.google.com with SMTP id x5so11077438edd.11;
 Fri, 04 Mar 2022 07:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=GU8UB6TON4VenNNLOM6Y8KYCnXRjIdD5gZ9A5OMk8Fk=;
 b=If/0zGbiuK3yY47gqLG0585NAxBoPdu39NK737vawufjZ239O5wd1D6cDSd9lKNOg2
 7Y24wNvwo/CMM9rBs6FPjoq+rp6mOdMRExj4l2EKDdtKoP1P56MmFedB1XVykKE3GrNZ
 9vHOyVBQzZJNrgyTMGdt8gxuGmtpnEVGKOragTRZdAUatZCs+78gV75urVEEii5LXlz2
 Q+S091bTDyfrhl3boEeJ4A667JYijoN3u1Ndps4cYQ/xCpPJa76XFiMWer2umxTYskVa
 9U+XtIFkd+qAokpcrpcWXlTMvcBFJ7TRAxVzeTCX4+POPoXpllPCHSgOZfpFkBkvn27n
 yEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GU8UB6TON4VenNNLOM6Y8KYCnXRjIdD5gZ9A5OMk8Fk=;
 b=FdGwbbtZnUvlTVBuiE31sapVWah6/Jo8Ett4XnBXyKqbW5bHdaDOmSyRlRgsK0kp0r
 rUqXA54gVLb3fTCG6B44VTZDqrhHOr4eqQEGIZIZ3DkuljaS9Kp6nSCb79LAX74YLcaB
 wlS+MoNTT5Cvx/gJDGrRLDomxUFScCZbeVILS7mMH8r7V3I3LYQcb91Ic4wQLaj8ZD2T
 wIDZ4uZubet2m4l4QK+rtk7zdahGaacB+BGx7xLFyY77+1zuYnPeyObrL0mWiSrBiUg2
 kxZ8+0MZfCnBK8FCbxStgkCKHdLe7/1X+ZzAYdh1bfayWmCAnz88HmPNalLRUQEuEBlW
 FmGQ==
X-Gm-Message-State: AOAM531FSwNtVAWvjkW5FReRjZAm7vESvNl9A25VpDobTEFgNZR8O2hm
 MueQ3lm1Vr5VKWN4ELrjd9c=
X-Google-Smtp-Source: ABdhPJwbeg+zMrY7HvyZLfPCoywd61S1zgix/OQC8hvmSEFI8VN2hn1c66x0LTx0Yi88SvTVQPFpBw==
X-Received: by 2002:a05:6402:3487:b0:40f:fa53:956c with SMTP id
 v7-20020a056402348700b0040ffa53956cmr39023279edc.22.1646406120238; 
 Fri, 04 Mar 2022 07:02:00 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 l19-20020a056402255300b00415f526c6b0sm1084798edb.30.2022.03.04.07.01.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Mar 2022 07:01:59 -0800 (PST)
Message-ID: <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
Date: Fri, 4 Mar 2022 16:01:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 11/18] crypto: rockhip: do not handle dma clock
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-12-clabbe@baylibre.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220302211113.4003816-12-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_070204_630330_815478C6 
X-CRM114-Status: GOOD (  25.14  )
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

Hi Corentin,

Make your clock driver parsing portable.

===
    oneOf:
      - const: rockchip,rk3288-crypto
      - items:
          - enum:
              - rockchip,rk3328-crypto
          - const: rockchip,rk3288-crypto

Compatible string must be SoC related!

rk3288 was the first in line that had support, so we use that as fall
back string.

===

Make binding fit for more SoC types.
Allow more clocks by using devm_clk_bulk_get_all.
Drop reset-names requirement for devm_reset_control_array_get_exclusive.

===

Use a patch order to prevent the scripts generate notifications.

- dt-bindings conversion

- add rk3328 compatible string in a separate patch

- your driver changes

- dts patches

A proposed maintainer must be able to submit patch series without errors. ;)

===

When you remove a clock in a YAML conversion you must add a note to the
DT maintainer.

===

Johan

On 3/2/22 22:11, Corentin Labbe wrote:
> The DMA clock is handled by the DMA controller, so the crypto does not
> have to touch it.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.c | 16 +---------------
>  drivers/crypto/rockchip/rk3288_crypto.h |  1 -
>  2 files changed, 1 insertion(+), 16 deletions(-)
> 
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
> index 94ef1283789f..645855d2651b 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> @@ -40,15 +40,8 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
>  			__func__, __LINE__);
>  		goto err_hclk;
>  	}
> -	err = clk_prepare_enable(dev->dmaclk);
> -	if (err) {
> -		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
> -			__func__, __LINE__);
> -		goto err_dmaclk;
> -	}
> +
>  	return err;
> -err_dmaclk:
> -	clk_disable_unprepare(dev->hclk);
>  err_hclk:
>  	clk_disable_unprepare(dev->aclk);
>  err_aclk:
> @@ -59,7 +52,6 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
>  
>  static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
>  {
> -	clk_disable_unprepare(dev->dmaclk);
>  	clk_disable_unprepare(dev->hclk);
>  	clk_disable_unprepare(dev->aclk);
>  	clk_disable_unprepare(dev->sclk);
> @@ -199,12 +191,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
>  		goto err_crypto;
>  	}
>  

> -	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
> -	if (IS_ERR(crypto_info->dmaclk)) {
> -		err = PTR_ERR(crypto_info->dmaclk);
> -		goto err_crypto;
> -	}
> -

rk3288:
 		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "aclk", "hclk", "sclk";


rk3328:
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "aclk", "hclk", "sclk";

The HCLK_CRYPTO_MST not is related to ACLK_CRYPTO.
You are reusing rk3288 names to not to change the driver.
Give it an other name.

===

The sclk goes through a crypto_div_con.
Does that need a frequency set?
Or does that come from nowhere?

From crypto_v1.c
	priv->frequency = dev_read_u32_default(dev, "clock-frequency",
					       CRYPTO_V1_DEFAULT_RATE);

	ret = clk_set_rate(&priv->sclk, priv->frequency);

===

Could you make this portable?
Example:

	int i;

	priv->num_clks = devm_clk_bulk_get_all(dev, &priv->clks);
	if (priv->num_clks < 1)
		return -EINVAL;

	priv->sclk = NULL;
	for (i = 0; i < priv->num_clks; i++) {
		if (!strncmp(priv->clks[i].id, "sclk", 3)) {
			priv->sclk = priv->clks[i].clk;
			break;
		}
	}

	if (!priv->sclk) {
		dev_err(dev, "no sclk found\n");
		return -EINVAL;
	}

Also add optional "sclk1" clock for rk3399.
Use "sclk" and not "sclk0" to be backwards compatible.

===

Also make the resets portable for rk3399.
Remove the requirement for "reset-names".

Example:
	priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
	if (IS_ERR(priv->phy_rst))
		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy
reset\n");



>  	crypto_info->irq = platform_get_irq(pdev, 0);
>  	if (crypto_info->irq < 0) {
>  		dev_err(&pdev->dev, "control Interrupt is not available.\n");
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
> index c741e97057dc..963fbfc4d14e 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.h
> +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> @@ -191,7 +191,6 @@ struct rk_crypto_info {

>  	struct clk			*aclk;
>  	struct clk			*hclk;
>  	struct clk			*sclk;
> -	struct clk			*dmaclk;


	int num_clks;
	struct clk_bulk_data *clks;
	struct clk *sclk;
	struct clk *sclk1;


>  	struct reset_control		*rst;
>  	void __iomem			*reg;
>  	int				irq;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
