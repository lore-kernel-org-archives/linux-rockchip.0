Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB303C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLU4zQmRs4SSAtDsijyUsLho+KkeDhdL8gHmtPVx3zU=; b=3QYPet4joK5Kou
	qO01HFKkvOOfbZSDNCLknJTuUdeypp0F4F6c+DlOU2Dz9Z1NizY1/5YREiVF+Iot409VJPsrxNrD1
	k9UkxnJJSG0jI6nlkrpgmunyvTqdxgFf/4bfdKZ4OUMcRw1aSct2TizcKESEWGXcA7Plt1gxhzZmU
	fHGUmNFKjHvHYYDKbA9RMGAgSObligRMNkObOJUxpVV14k1JAE3R74qGY3qpuV+Gdu9BKn5dbPH4q
	rR7pljyYcxYYJ5EUB3ZXsjGy3k2Th3dpkK+X/PyGWGPhh3dT4rScXMWCGj2TiyUXw1MIU/31oZihQ
	f47n0t034qmmXV1etR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTYe-00Dyth-2b;
	Wed, 15 Mar 2023 16:00:56 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTYc-00DysL-0X;
	Wed, 15 Mar 2023 16:00:55 +0000
Received: by mail-wm1-x32d.google.com with SMTP id m35so3363688wms.4;
        Wed, 15 Mar 2023 09:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xOOiowO4I0qT+YSivly3gWfp0aGWe0FO+V1Ii1L2DRI=;
        b=hSbewgL+LcYq/IeCIN5E3CjlRluYSO8YjBLyNWHVRHLUNKkBnZtt3LYy/YR9taFATl
         ZQEiphz79hWc/Fw/o3D0fCjRCwBXsxvMHMKsR8DfOusKm6hjylbA4oosTiekNFVEXHzB
         CY6URGvjpWs0UTfnrgOyX2LNltXN9uRn1xoiwGnI6Dt5olV7NhFMpnGcNCCiLJXKWiOw
         hjPWFV9rMOzv2ABipzSlCwRNhTpVhZc3mvjZTyacrCA1gD650BxTh5ylJvQxjOXA2npG
         LrPlNR8tYG9vahe9SD5fB7sj5dW7+JH30hr9zVEp3RAeEjs0JLvJ+scQGV3JobzJmIOk
         DlhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOOiowO4I0qT+YSivly3gWfp0aGWe0FO+V1Ii1L2DRI=;
        b=xkiFOpiB2rh/0cGIvzilOj+k9c4O5at4zhuFmbo0Tfl6i4BLsH0ki2v4FaXT77um8B
         AMYr+hcR/I6WmaA5v3WfCM5lgHKrYGY2rdJOpS04dl6nUoRQT7dGbtw+CvLE5nhasBRB
         CYlowSiUaWxCwqLcOEOitRG4L0JO0fL+CiYddDnRgNhTWToIjv+5BOOg7On7duv2UK19
         BiAVh2XOX6mcfz3v8W/iOhUrSp0+2FPboXSWgzOK+fbdZKb4ZZex9QbGL2Qq86uVkcer
         /cGFsqV9zcZ0v7aMAsY9iEpT8AkBhs0seUTsejwi3gmc/iEBDfaPaMK3V4uCmAdW8Y2+
         6sJw==
X-Gm-Message-State: AO0yUKWFyr34orQ730bODQQxS9jyQjqO6PJRhbodDRN35vD3lqhgmDFs
	souR6c9630q5hHg44pTJ2bw=
X-Google-Smtp-Source: AK7set8w3LxA2bu94VH0xr00h9EYIDFMKc9rEj1ry3wNKkEOg6/OKJUc9xvFT7SJHjy8Ti+2artC+w==
X-Received: by 2002:a05:600c:1e0b:b0:3ea:d610:f059 with SMTP id ay11-20020a05600c1e0b00b003ead610f059mr20098605wmb.4.1678896050736;
        Wed, 15 Mar 2023 09:00:50 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c214700b003eaf666cbe0sm2274836wml.27.2023.03.15.09.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:00:50 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject:  Re: [PATCH 120/173] ASoC: rockchip: rockchip_i2s_tdm: Convert to platform
 remove callback returning void
Date: Wed, 15 Mar 2023 17:00:49 +0100
Message-ID: <3717794.rJMogTuNcH@archbook>
In-Reply-To: <20230315150745.67084-121-u.kleine-koenig@pengutronix.de>
References:  <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
 <20230315150745.67084-121-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090054_205784_CB478CC7 
X-CRM114-Status: GOOD (  24.32  )
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

On Mittwoch, 15. M=E4rz 2023 16:06:52 CET Uwe Kleine-K=F6nig wrote:
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is (mostly) ignored
> and this typically results in resource leaks. To improve here there is a
> quest to make the remove callback return void. In the first step of this
> quest all drivers are converted to .remove_new() which already returns
> void.
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Hello,

this looks fine, but the commit prefix should either be
"ASoC: rockchip: i2s_tdm:" or "ASoC: rockchip: i2s-tdm" to align
with previous commits. We've already broken convention once before,
hence the two names, and I'd rather not have this convention broken
again.

Kind regards,
Nicolas Frattaroli

> ---
>  sound/soc/rockchip/rockchip_i2s_tdm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> =

> diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/r=
ockchip_i2s_tdm.c
> index 166257c6ae14..c2e9fd5ab05e 100644
> --- a/sound/soc/rockchip/rockchip_i2s_tdm.c
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> @@ -1722,14 +1722,12 @@ static int rockchip_i2s_tdm_probe(struct platform=
_device *pdev)
>  	return ret;
>  }
>  =

> -static int rockchip_i2s_tdm_remove(struct platform_device *pdev)
> +static void rockchip_i2s_tdm_remove(struct platform_device *pdev)
>  {
>  	if (!pm_runtime_status_suspended(&pdev->dev))
>  		i2s_tdm_runtime_suspend(&pdev->dev);
>  =

>  	pm_runtime_disable(&pdev->dev);
> -
> -	return 0;
>  }
>  =

>  static int __maybe_unused rockchip_i2s_tdm_suspend(struct device *dev)
> @@ -1764,7 +1762,7 @@ static const struct dev_pm_ops rockchip_i2s_tdm_pm_=
ops =3D {
>  =

>  static struct platform_driver rockchip_i2s_tdm_driver =3D {
>  	.probe =3D rockchip_i2s_tdm_probe,
> -	.remove =3D rockchip_i2s_tdm_remove,
> +	.remove_new =3D rockchip_i2s_tdm_remove,
>  	.driver =3D {
>  		.name =3D DRV_NAME,
>  		.of_match_table =3D of_match_ptr(rockchip_i2s_tdm_match),
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
