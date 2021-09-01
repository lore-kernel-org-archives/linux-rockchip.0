Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F18C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 09:43:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A31106103A
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 09:43:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A31106103A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shYT+smPbncvb2ghlSwSG2W3JrksBHKGa2eO2EhiMso=; b=aVA949KAWzTeJr
	2dvCaap3A+v4N/D956KK339/Mm7BUx9dCZ9nQ57i7R0/egesJOo5Txkgpz2Zd6aRbKRUOa0JSGuO0
	1JGAyLmUCbq/1OjyqaR6gkSIveS15dPYsFiIyh83V2fWtFPABO6E+jl8fPpC/NjFIymjeHIdxv71U
	B+11JvUwl009HVsAwq0/i6ZR513T2RmS05E/UURi+rVeB+imBNmWehbIozaTiXB3Q3j0DN3UOI+/0
	P0NE0068SthtOpHDPEf9WOL1XBHS+c21MEjoU8cGkGtAe4W3+xhePMXODK588Ybfb0AhWUJdNCRDN
	A1jX6Ow5H3jSDhgn0qTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLMmI-004y9v-FX; Wed, 01 Sep 2021 09:43:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLM4T-004hfd-Uh; Wed, 01 Sep 2021 08:58:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E56561057;
 Wed,  1 Sep 2021 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630486693;
 bh=ZcSl8QL3Am4u64j0N4jzg6z8iqyPZvH/GTxd9dmID44=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DzJxNfbO4d1POC9HiOg6GTVB2nb79d7u6Gk9zibLhwQ7FsfDg2hcRjjf2axLvu+a1
 NKuHrWlmWwDsqfERS1v58hEYgNvotYdqf3IXmxNEVsMjWwZHv/a4kaWZJnwkuE0e/I
 ErWiNd4Xv3XgeatW0ppkBrfsp8SLJyeUnval/M4Zy+wwoJtkmPZ3Joy8g7lok9YHN0
 HbkFCEpW8J3aDEpMun+eZduhFcy+VgQ0ZhaNYMEQauTEtAo/yQdoJ4wcR4h2GoeUYs
 0FXuZ2SPswV8DnogdWOjcirnKrnxcAiLgeSnvwAhhenUdfFGFyz2dJdB2+tDwI9Ht9
 gWY/BqCtfdsPA==
Received: by mail-pf1-f174.google.com with SMTP id x19so1518147pfu.4;
 Wed, 01 Sep 2021 01:58:13 -0700 (PDT)
X-Gm-Message-State: AOAM531BFDW3liGuJgehorbU7F+jZmWglkBCa3MAfpsY0q/qZyrSQWGR
 T0L8rM1FwHy/5ZOIo6g8iGHxI2LF0lkF0I4YoKM=
X-Google-Smtp-Source: ABdhPJwpTPUpQdq5T0AR48YEzddc/vy9Z3Y2xoBz+84Jmlem+SOZYT8hVVX2SsREOlHS2AB4t3z71ndScuxOOBNtZSk=
X-Received: by 2002:aa7:8116:0:b029:346:8678:ce26 with SMTP id
 b22-20020aa781160000b02903468678ce26mr32911123pfi.15.1630486692769; Wed, 01
 Sep 2021 01:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210831125159.29282-1-zhaoxiao@uniontech.com>
In-Reply-To: <20210831125159.29282-1-zhaoxiao@uniontech.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 1 Sep 2021 10:58:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfJFgg4ZkfW85mSg8+YaNFJ2G5OyRqJ=Hz-iZTpyNTndA@mail.gmail.com>
Message-ID: <CAJKOXPfJFgg4ZkfW85mSg8+YaNFJ2G5OyRqJ=Hz-iZTpyNTndA@mail.gmail.com>
Subject: Re: [PATCH] pwm: rockchip: Simplify using devm_pwmchip_add()
To: zhaoxiao <zhaoxiao@uniontech.com>
Cc: thierry.reding@gmail.com, lee.jones@linaro.org, heiko@sntech.de, 
 u.kleine-koenig@pengutronix.de, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_015814_089439_11FC5C1F 
X-CRM114-Status: GOOD (  24.06  )
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

On Tue, 31 Aug 2021 at 14:52, zhaoxiao <zhaoxiao@uniontech.com> wrote:
>
> With devm_pwmchip_add() we can drop pwmchip_remove() from the device
> remove callback. The latter can then go away, too and as this is the
> only user of platform_get_drvdata(), the respective call to
> platform_set_drvdata() can go, too.
>
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
> ---
>  drivers/pwm/pwm-rockchip.c | 29 +----------------------------
>  1 file changed, 1 insertion(+), 28 deletions(-)
>
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index cbe900877724..c22856916e63 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -347,8 +347,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>                 goto err_clk;
>         }
>
> -       platform_set_drvdata(pdev, pc);
> -
>         pc->data = id->data;
>         pc->chip.dev = &pdev->dev;
>         pc->chip.ops = &rockchip_pwm_ops;
> @@ -358,7 +356,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>         ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
>         enabled = (ctrl & enable_conf) == enable_conf;
>
> -       ret = pwmchip_add(&pc->chip);
> +       ret = devm_pwmchip_add(&pdev->dev, &pc->chip);
>         if (ret < 0) {
>                 dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
>                 goto err_pclk;
> @@ -380,37 +378,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>         return ret;
>  }
>
> -static int rockchip_pwm_remove(struct platform_device *pdev)
> -{
> -       struct rockchip_pwm_chip *pc = platform_get_drvdata(pdev);
> -
> -       /*
> -        * Disable the PWM clk before unpreparing it if the PWM device is still
> -        * running. This should only happen when the last PWM user left it
> -        * enabled, or when nobody requested a PWM that was previously enabled
> -        * by the bootloader.
> -        *
> -        * FIXME: Maybe the core should disable all PWM devices in
> -        * pwmchip_remove(). In this case we'd only have to call
> -        * clk_unprepare() after pwmchip_remove().
> -        *
> -        */
> -       if (pwm_is_enabled(pc->chip.pwms))
> -               clk_disable(pc->clk);
> -
> -       clk_unprepare(pc->pclk);
> -       clk_unprepare(pc->clk);

NAK, for the same reason as pwm_samsung.

Please test your patches.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
