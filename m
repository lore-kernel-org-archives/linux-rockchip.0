Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7A8C07545
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 13:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGf407cT/nOC98OEQKF8OprXG9rkyV2jGCoL1McAivQ=; b=vb0AKc9lEbQmys
	o9yt34J/4W4PGVJSxKf6OuVtlDRj+AybnooxsjSVqbZnL4G7eCurzJLhjOz7HhUu6YNx6CG1OIviH
	/L28boOe6rEtJwBx3DCm3y+hEtQ5frSIZMPgd3IViTCky1JkxD7V4x5GExQa3JR16GnnytRc86/ho
	+L6JA+ndZ4H3UWpl+AzkbLN/GzbBcp3QV0oOn3ULp7d4W05MKeX9WVu0pmgXWdA80dLbZGsx6h2Go
	2F5uQbNG7EPgdwYxJ0wBls+ZaKlhXZcoXpxQvuPL8/BdfXGvvzQhPW8Xne57kg6FfyHcHuFaVaw3G
	gk9rD0I914PYaNEObizA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvdz7-00CPZd-1T;
	Wed, 25 Oct 2023 13:31:45 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvdyc-00CPKe-04
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Oct 2023 13:31:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so3857329f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Oct 2023 06:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698240672; x=1698845472; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WJHhodEo9Mg5Sb1D06HbWzBXmtfErODVASwmg4rpCew=;
        b=QFi00ybndCQ7ch7mKZmR0dv2ErkuHufOX6fO440+synytrND8vxBwbD7iUezv1ine/
         IpHhEhKRBSDNSiD8gEN+iqVg7oRDDjMq8Z4bk/Llj/FOzkzCfJj1Ky+vif1CFbl1Prgy
         xk5CyrrEDS/wJWpFo1XVKAez5SjrT0Wh6WGGKSFz+4llEolS89yoiqeE0xGVLsq/KshZ
         Bob8Jaq2on4M6u9Pk6XCc5FRk1FFECclOpxxGtrJsK8KJloyjwx29PuqJOn75UWwMPYC
         RLEqe6M0sev9yvy3EtSmtdXYzZ/8eqTE8V4IbPzQSG1xkGO/PSTIKz/Y4u9uRPVcmWjJ
         yEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698240672; x=1698845472;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WJHhodEo9Mg5Sb1D06HbWzBXmtfErODVASwmg4rpCew=;
        b=AsxqCD3kB8loYULNPbpApFP9mNKOAviZKUiFrZV3mvOPJV9CXZkCCOwTtb+2yTjLSH
         lkh8E5iDcxlDIJYRm+NVuD1/HcBuT/s2m1/RnfQKrWsGZcSpAWwBxrOhL4EuKd0buDA2
         6qOvXRudk9YqYZQNQ47cR3rkKo4v+Rfw9dBSEd0W57llSmvnaCGaKpLhtiC/ZkQktg94
         WqLH8HhzUNQnWWuJeLX8PcAKfCl056SXgWGD9HQvC6YtJiYqOp3oH/o4bp9SKOl8+jOS
         fQokm5sOe+COIkgWW7xXs5zvIGBm9mkItvq88NdjKatuP4hcIJWkWDu4RA/Fq372lt78
         FMjA==
X-Gm-Message-State: AOJu0YwL+rMca/RmuYeygcSoCtvH0G5YShgkYtiD2sEJe0YJiw6RvDDc
	ENAdVEJ8MJ6AXiJq9qxdlzPUg5WBOTMEEzuxTGk=
X-Google-Smtp-Source: AGHT+IG5TmoQSWagYVZDYEFtA3xQyjVPh4wRtdL4nDgviNvJdR54Bqa+t6mU4jxmEiLEOP/aqcQnpg==
X-Received: by 2002:adf:e943:0:b0:329:6bdc:5a60 with SMTP id m3-20020adfe943000000b003296bdc5a60mr10530917wrn.12.1698240671827;
        Wed, 25 Oct 2023 06:31:11 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id f4-20020a5d50c4000000b0032da319a27asm12213088wrt.9.2023.10.25.06.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 06:31:11 -0700 (PDT)
Date: Wed, 25 Oct 2023 15:31:09 +0200
From: Corentin LABBE <clabbe@baylibre.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH 34/42] crypto: rockchip/rk3288 - Convert to platform
 remove callback returning void
Message-ID: <ZTkYnTY7VxIaIUak@Red>
References: <20231020075521.2121571-44-u.kleine-koenig@pengutronix.de>
 <20231020075521.2121571-78-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231020075521.2121571-78-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_063114_061355_A24B4628 
X-CRM114-Status: GOOD (  24.55  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Fri, Oct 20, 2023 at 09:55:56AM +0200, Uwe Kleine-K=F6nig a =E9crit :
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is ignored (apart
> from emitting a warning) and this typically results in resource leaks.
> =

> To improve here there is a quest to make the remove callback return
> void. In the first step of this quest all drivers are converted to
> .remove_new(), which already returns void. Eventually after all drivers
> are converted, .remove_new() will be renamed to .remove().
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/roc=
kchip/rk3288_crypto.c
> index 77d5705a5d96..70edf40bc523 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> @@ -405,7 +405,7 @@ static int rk_crypto_probe(struct platform_device *pd=
ev)
>  	return err;
>  }
>  =

> -static int rk_crypto_remove(struct platform_device *pdev)
> +static void rk_crypto_remove(struct platform_device *pdev)
>  {
>  	struct rk_crypto_info *crypto_tmp =3D platform_get_drvdata(pdev);
>  	struct rk_crypto_info *first;
> @@ -424,12 +424,11 @@ static int rk_crypto_remove(struct platform_device =
*pdev)
>  	}
>  	rk_crypto_pm_exit(crypto_tmp);
>  	crypto_engine_exit(crypto_tmp->engine);
> -	return 0;
>  }
>  =

>  static struct platform_driver crypto_driver =3D {
>  	.probe		=3D rk_crypto_probe,
> -	.remove		=3D rk_crypto_remove,
> +	.remove_new	=3D rk_crypto_remove,
>  	.driver		=3D {
>  		.name	=3D "rk3288-crypto",
>  		.pm		=3D &rk_crypto_pm_ops,
> -- =

> 2.42.0
> =


Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
