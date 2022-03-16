Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A95FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 19:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E31qKw8nsPNNlX4EwXnvG7EaMTqMPvVtSUm0Hb39Jek=; b=JvBJ8k3o/EzXFU
	08fmeUbIetXN61qEUwO3zIz2da+ApFojdVA9Yqe9epx0VRKBXH7ZFQRhr40ypofNFPwZEkWWswavg
	5TKWXI0/y4GKzHGp2dQhWuQeUrRHDGj5SpelrTKxjRO0C2jNDp87LnxA398d+GaVSxnDmwNtpFeFi
	FWmGRcJVQGkIj9VwSl5A5iJyFV14wyhkrrOXuh4qSBxcKtva8ltIpO7I+rqpXC42IayQGjNzGkpsl
	As2YoFDZU/BFQgzJfPgB4tmo1ENOLwkAkylv5RFvm7VuuZEXHU8JuFtDGQjOFNKIuEC406h1G1QXC
	EgSjw3MpHndCQ/Xo0jKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUZ1F-00EA81-Bn; Wed, 16 Mar 2022 19:09:13 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUZ1D-00EA7M-JU
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 19:09:12 +0000
Received: by mail-ed1-x531.google.com with SMTP id b15so3955358edn.4
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Mar 2022 12:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VVfMjKpWZT15x3YmijRgD/PsoH/JU8/gZdMzQJYY3Vo=;
 b=f1KGeTKNRPlW2bxfPuz7YJQyJOt6IG0u9P3n8uPR+HGigs9dSG92B8QDT0zfj7vTEW
 V/hP6iqRm3vUa0PYWNY36M/Xc8n8ImIY+hKw6yNxF1NtZ1NWy3kmmqrYRfbdD15d+YwJ
 WppwBX8VTAK5R0uIoTgGwOIVixNm909RuFt8i7hsRLg3SATtE9keIFyl+iY7TzsbrxgH
 3T/n8/9DIphZOaPbbWDGqe2iFwogXiYnf+yclKB2dcxLgZ3q+8j4NUqT9BlCcjYeVoQd
 YMvKcsBqDGHVOvFTnxE0Djyrfo2HQpnrJk2nWyzzGeXMU83y6c2/F8b2LB/ygK4fEZFa
 LBcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VVfMjKpWZT15x3YmijRgD/PsoH/JU8/gZdMzQJYY3Vo=;
 b=5m7n3FDYFYR8QZdiJHYtg0QsdFweLqaAezeZoNYmI1rFpmKKUiuRjnc4ll45kd7gml
 ZRHv0m3XWm4Wu0Nf8wGYf+J5YnlqmwVZGu6D7sV4py8UXuIP3WPt5pR2YtIQq5RCZtLZ
 PQqD3gFBNTQB7lfjbd45jXemV+zUWarcm4SQz34eoIrul4gkA6vQuVEJGJcRjrLZ+VZ7
 LwvQgVsi6rXu3o098dXscwajOxaZG/8zNYr60/yf/Q0s91ARHV6ZlzyNdzlMC4bzDw6V
 HI04D5RBpzBIhQTYnIa+Ee5c/RS6jv4/7/G+iyMPT9sznv3fPBPP1EcQbhz7+9lnkOcp
 960A==
X-Gm-Message-State: AOAM530Q+ZJtBEzHqGYJboQRHhUm4LtlYc3NOLVf5q4R/VKNYUWPS65u
 DCefBoNUzYRhaZ3rIo8gHAU=
X-Google-Smtp-Source: ABdhPJwIzIeWywntOm/DKOdAQPY6vhVMqtNL1DNvWohxRlzRQheXrQRP10LSbkpz1RLlQP3iBJt5Tg==
X-Received: by 2002:aa7:cc82:0:b0:410:d2b0:1a07 with SMTP id
 p2-20020aa7cc82000000b00410d2b01a07mr874230edt.359.1647457748274; 
 Wed, 16 Mar 2022 12:09:08 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 kw3-20020a170907770300b006d2a835ac33sm1209759ejc.197.2022.03.16.12.09.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 12:09:07 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: tiwai@suse.com, perex@perex.cz, heiko@sntech.de,
 zhangqilong <zhangqilong3@huawei.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org
Subject: Re: [PATCH -next] ASoC: rockchip: Fix PM usage reference of
 rockchip_i2s_tdm_resume
Date: Wed, 16 Mar 2022 20:06:38 +0100
Message-ID: <2972526.jVqemH3vzA@archbook>
In-Reply-To: <20220315025415.2593762-1-zhangqilong3@huawei.com>
References: <20220315025415.2593762-1-zhangqilong3@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_120911_676437_C76E8430 
X-CRM114-Status: GOOD (  14.14  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Dienstag, 15. M=E4rz 2022 03:54:15 CET zhangqilong wrote:
> pm_runtime_get_sync will increment pm usage counter
> even it failed. Forgetting to putting operation will
> result in reference leak here. We fix it by replacing
> it with pm_runtime_resume_and_get to keep usage counter
> balanced.
> =

> Fixes:081068fd64140 ("ASoC: rockchip: add support for i2s-tdm controller")
> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>

Hello,

Reviewed-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Thank you for fixing this!

Regards,
Nicolas Frattaroli

> ---
>  sound/soc/rockchip/rockchip_i2s_tdm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/r=
ockchip_i2s_tdm.c
> index 5f9cb5c4c7f0..d3b710406941 100644
> --- a/sound/soc/rockchip/rockchip_i2s_tdm.c
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> @@ -1738,7 +1738,7 @@ static int __maybe_unused rockchip_i2s_tdm_resume(s=
truct device *dev)
>  	struct rk_i2s_tdm_dev *i2s_tdm =3D dev_get_drvdata(dev);
>  	int ret;
>  =

> -	ret =3D pm_runtime_get_sync(dev);
> +	ret =3D pm_runtime_resume_and_get(dev);
>  	if (ret < 0)
>  		return ret;
>  	ret =3D regcache_sync(i2s_tdm->regmap);
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
