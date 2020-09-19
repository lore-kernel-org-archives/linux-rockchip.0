Return-Path: <SRS0=Km5Y=C4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD36C43464
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2020 08:35:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA4732073A
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2020 08:35:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jrVpVC7j"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA4732073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wh0K5OL6MPWGPzfxzMn8HTYDUTNLD950CorxiF2GyN8=; b=jrVpVC7jVHZOi4mPLb8/LXA5W
	O7LkuoI35ZcAJT5qFol0BkZRntE28ACk/+4yN1s2841Yk5P+bGJLJ1AYrlWBgeNsD5q+N6TuaQ20g
	DfiCe26slG2TO+Sg21be64MaeIigb/h4c4DacSaBTk8wfhwB8cE9gqnbLIdXa/eeDyxFuE+QD1QvC
	eqqpqksHGDvNWOD9x7D3YEbuhFEIoDMoAOO24ohDs1jlE7z8bzkoNPsXGbrlxSTVZPPe1hWuc3BHA
	Jan6iuRGxFw8U86xGpcnPRMGsFvTzuf1Ih057mlNkwWK6mBnRdHn/L4VRPvI6XSDXfIfTvhyX9Lg4
	m2c8wp+bA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJYL9-0000Xt-6N; Sat, 19 Sep 2020 08:35:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJYL6-0000XT-Gn; Sat, 19 Sep 2020 08:35:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kJYL2-0003Wu-UK; Sat, 19 Sep 2020 10:35:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simon South <simon@simonsouth.net>
Subject: Re: [PATCH] pwm: rockchip: Keep enabled PWMs running while probing
Date: Sat, 19 Sep 2020 10:35:20 +0200
Message-ID: <5907731.26MhtTZbrF@diego>
In-Reply-To: <20200918204825.4744-1-simon@simonsouth.net>
References: <20200918204825.4744-1-simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200919_043524_569646_A15F4650 
X-CRM114-Status: GOOD (  22.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Simon South <simon@simonsouth.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

Am Freitag, 18. September 2020, 22:48:25 CEST schrieb Simon South:
> Following commit cfc4c189bc70 ("pwm: Read initial hardware state at
> request time") the Rockchip PWM driver can no longer assume a device's
> pwm_state structure has been populated after a call to pwmchip_add().
> Consequently, the test in rockchip_pwm_probe() intended to prevent the
> driver from stopping PWM devices already enabled by the bootloader no
> longer functions reliably and this can lead to the kernel hanging
> during startup, particularly on devices like the Pinebook Pro that use
> a PWM-controlled backlight for their display.
> =

> Avoid this by querying the device directly at probe time to determine
> whether or not it is enabled.
> =

> Signed-off-by: Simon South <simon@simonsouth.net>

On first glance this looks like a good catch but there is a bit of
housekeeping missing.

The patch should get a fixes tag like
Fixes: cfc4c189bc70 ("pwm: Read initial hardware state at request time")

Can you resend the patch and include relevant other parties like you get
from  'scripts/get_maintainer.pl -f drivers/pwm/pwm-rockchip.c' like

Thierry Reding <thierry.reding@gmail.com> (maintainer:PWM SUBSYSTEM)
"Uwe Kleine-K=F6nig" <u.kleine-koenig@pengutronix.de> (reviewer:PWM SUBSYST=
EM)
Lee Jones <lee.jones@linaro.org> (maintainer:PWM SUBSYSTEM)
linux-pwm@vger.kernel.org (open list:PWM SUBSYSTEM)


Thanks
Heiko

> ---
>  drivers/pwm/pwm-rockchip.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index eb8c9cb645a6..098e94335cb5 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -288,6 +288,7 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	const struct of_device_id *id;
>  	struct rockchip_pwm_chip *pc;
>  	struct resource *r;
> +	u32 enable_conf, ctrl;
>  	int ret, count;
>  =

>  	id =3D of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
> @@ -362,7 +363,9 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	}
>  =

>  	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
> -	if (!pwm_is_enabled(pc->chip.pwms))
> +	enable_conf =3D pc->data->enable_conf;
> +	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
> +	if ((ctrl & enable_conf) !=3D enable_conf)
>  		clk_disable(pc->clk);
>  =

>  	return 0;
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
