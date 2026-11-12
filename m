Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A55606A324
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 00:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uAQKSaiw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ogmkXiS8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hA8f4u6Xt9johPY9ew16xSwB0Pa8bVU8blUXLcLe8bE=; b=uAQKSaiwXW4ONUY+56zq5NiMiX
	fYdK7HlBlKjkZaBOGP3Ru16QNVFuh4pru44oX2EJPPUrJExQN2W203CK3esDqRxut5BUB2PSdb9Hx
	Lig7Rp3q3JhuvmD0Ml69kwwWn7fDUaVERfV4Dg//gkfgXQs3bFbYJHNHDmiM4XQp/KOW1H71ODzkW
	I4DVEwe1SIGinLzdf0IvHQqoe1qOCy+4hzcATxmfFbSni3+MMqkjUsZ7fZFFnM/r978BuOa+yE5xV
	y11nW+8Dw2w62SkD8WcmpkIBR7TZoP/a55uZdHYm5SbEWZYEW8leQpGy90SFPRRVAZfTJVF1+6J9i
	jfd/hL9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIcz-00000008EcN-1mXy;
	Thu, 12 Nov 2026 00:25:21 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIcw-00000008Ebd-3jf9
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 00:25:20 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-3704d30b84fso4709735eec.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 16:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794443117; x=1795047917; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WmDxcQotq3NgeobvzOlqzwVczvRUhsveENxWAqE5LCM=;
        b=ogmkXiS8n4Mq6gKzWanOtpgAepR1RpzvQdNjM5Y6B2p2Id7Nrlebh1O7keFbjBNntp
         WADvBzUM7kdPnQQjp8rDNzKpbFoAer1bsLHvNjS46PF/SfXmoPsxz1ltqr8hrSMGLe9D
         TE4Zrxxv9glLZsAl194TfoMBxCdmsWCYUVHHAeB/McjppE/Zof9lyNqvXHYcjGQLSr+a
         P7q3NutjwNmjnHTDmtzEheXHgTn1CHglonAJqMVm7YNNA0YuuWh9IzyjTbxR1x+A6wtY
         WchtZBJoQ11XWdDIaWax5eTHEbruOFUMxCJ/kJC69tqqYWhr+GZNO4yxJ6KNQXaZB9IS
         SxSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794443117; x=1795047917;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WmDxcQotq3NgeobvzOlqzwVczvRUhsveENxWAqE5LCM=;
        b=ZVfjxBPwiQC5Nz4YMrigPchet772gQj36ZCCDulf6KR9KGF52kO6WMlKA3AwZPFfO+
         wOyk89mn2bObEhLw95D++RXUWojy+pI9/EhniUG2U6ZKY/Di0cWWgYqjGh/j3APZZo7w
         wbpDr0oASJvjea7oZxycdTnchvm6NVeD9KHD9z7IvpmgYkyqDMr9FmVYwTVu5yJ+eon7
         4ZqJMbWDphGDrdIlY2uuUQl2bE6db/0cLT9JnHsdsS0OqCLjlZ1Y8EfKiNKAU3xcxU9N
         VF7Zllsv0COTgdQ0RDKJxWNd5gtiWBPOmvN59KNo9cR+OHJ8RTIgRRegQ9XZOCvMq1/F
         L5UA==
X-Forwarded-Encrypted: i=1; AL+hErGH/baIvE8p1YuPoQ+NLJeA1P/fK5R1WCZciMvSUjO7Df9RuObkMDi5NEm405Csc4eMjumO3h7J2Bb8lJPn3Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z+rDKbWDECNB6IYUh/bWU1GMZje36Rm+OG8Jt+Nlm/UOX342K9M
	WcdBMxuB+v3LnQfo7rTxsfEj+xoGvcMxwTcNnj1Oo3+lfp9MfFT8LfWB
X-Gm-Gg: AYBFou298VdALYympGONtt98bxcmUQepFiTjfBNGlkMjMwys7iXBtA0PQ/Z0A6fZGi7
	X81sfLnpmT8/y6kqp9zundwzVRVihbC7UDPBY0a4NlmQ3EXBUL0w47DBtFJm2pdz6Vy/zQABq4H
	6J8dBOuxfpMW8e9oU22adYyAR43kz7I9gM+CbgW6tDoY+k2OdYBDZFBO7MJh52Ca/Mf16Vxv/Qv
	VduZldaLCfc9zPfpXL7FoKht1bkuscaW+wOU8h9eXh9mq51oL8lYHtWRZyQuK1LCLPWxLkf/Tjm
	sePez3IteA6e+HrJA8+i7/oVLkcmhUtyBZO0tuUkZnK8xVOlyOvIxM5Xbv9QULGgjTzc1VD32Mi
	iTIO7yDhGNgkM9eW2jJRzi7UJZF0FHqNZmBnyIJl5op2AY6s0zLr+u9BhsU4aSIPnOp7Tt6O6bj
	GIv2ZZAUERgoMq66n1qq3cx7X/m9ch0yTge1vxoQf8T+tWK+aM8N60CnlQY+fSjcTMGMOI9TQUs
	4qLUgvb2fwUnpOvxu1z3OMqEHhlF3tTRooynR4x3SIGuVMjVHMCBVKPe/RGSTHLNj9kQ0nIFZPt
	CxRAW3Zt2VwOxyf6Xg4v/AWcKV7K7wLzkBYHfXmviksz0ZCFQTgOL7WILrZrj80z9vtX5w==
X-Received: by 2002:a05:7301:d807:b0:378:2e89:3958 with SMTP id 5a478bee46e88-3782e893b15mr345363eec.19.1794443117438;
        Wed, 11 Nov 2026 16:25:17 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:182d:659:ffce:39a4])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3766146551asm12082193eec.1.2026.11.11.16.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 16:25:15 -0800 (PST)
Date: Wed, 11 Nov 2026 16:25:11 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jakob Unterwurzacher <jakobunt@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Tony Lindgren <tony@atomide.com>
Cc: Joseph Chen <chenjh@rock-chips.com>, Lee Jones <lee@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	mfd@lists.linux.dev, devicetree@vger.kernel.org, 
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Subject: Re: [PATCH 1/4] Input: rk805-pwrkey - enable the wakeup interrupt
 during system suspend
Message-ID: <avUGEQhSKlko0Fm9@google.com>
References: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
 <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-1-cb12621c1fb4@cherry.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-1-cb12621c1fb4@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_162518_939165_F98301E4 
X-CRM114-Status: GOOD (  34.87  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Jakob,

On Thu, Oct 29, 2026 at 11:06:23AM +0100, Jakob Unterwurzacher wrote:
> From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
> 
> The driver marks the device as wakeup capable, but never enables the
> power key interrupt as a wakeup interrupt. As a consequence, the PMIC
> interrupt line is masked during system suspend and the power key cannot
> wake up the system, e.g. from suspend-to-ram on RK3588 with an RK806.
> 
> Enable the interrupt as wakeup interrupt in the suspend callback if the
> device may wake up the system, and disable it again on resume.
> 
> This is done in the regular suspend phase on purpose, rather than with
> dev_pm_set_wake_irq(), which arms the wakeup in the noirq phase: there,
> enabling it updates the PMIC's interrupt registers through regmap-irq,
> which fails when the PMIC is connected via SPI:
> 
>   spi_master spi2: Failed to power device: -13
>   rk8xx-spi spi2.0: Failed to sync masks in 7a

Sounds like this needs to be solved in PM core rather than hacked around
in individual driver? Let's CC Tony and Rafael.

> 
> Fixes: 5a35b85c2d92 ("Input: add power key driver for Rockchip RK805 PMIC")
> ---
>  drivers/input/misc/rk805-pwrkey.c | 42 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/input/misc/rk805-pwrkey.c b/drivers/input/misc/rk805-pwrkey.c
> index 76873aa005b41..9b64ec7463c62 100644
> --- a/drivers/input/misc/rk805-pwrkey.c
> +++ b/drivers/input/misc/rk805-pwrkey.c
> @@ -15,6 +15,10 @@
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  
> +struct rk805_pwrkey {
> +	int irq;
> +};
> +
>  static irqreturn_t pwrkey_fall_irq(int irq, void *_pwr)
>  {
>  	struct input_dev *pwr = _pwr;
> @@ -37,10 +41,15 @@ static irqreturn_t pwrkey_rise_irq(int irq, void *_pwr)
>  
>  static int rk805_pwrkey_probe(struct platform_device *pdev)
>  {
> +	struct rk805_pwrkey *priv;
>  	struct input_dev *pwr;
>  	int fall_irq, rise_irq;
>  	int err;
>  
> +	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
>  	pwr = devm_input_allocate_device(&pdev->dev);
>  	if (!pwr) {
>  		dev_err(&pdev->dev, "Can't allocate power button\n");
> @@ -84,16 +93,47 @@ static int rk805_pwrkey_probe(struct platform_device *pdev)
>  		return err;
>  	}
>  
> -	platform_set_drvdata(pdev, pwr);
> +	priv->irq = fall_irq;
> +	platform_set_drvdata(pdev, priv);
>  	device_init_wakeup(&pdev->dev, true);
>  
>  	return 0;
>  }
>  
> +/*
> + * Arm the wakeup in the regular suspend phase rather than with
> + * dev_pm_set_wake_irq(), which does it in the noirq phase: enabling the
> + * wakeup updates the PMIC's interrupt registers, which is no longer
> + * possible once the bus to the PMIC (e.g. SPI on RK806) is suspended.
> + */
> +static int rk805_pwrkey_suspend(struct device *dev)
> +{
> +	struct rk805_pwrkey *priv = dev_get_drvdata(dev);
> +
> +	if (device_may_wakeup(dev))
> +		enable_irq_wake(priv->irq);
> +
> +	return 0;
> +}
> +
> +static int rk805_pwrkey_resume(struct device *dev)
> +{
> +	struct rk805_pwrkey *priv = dev_get_drvdata(dev);
> +
> +	if (device_may_wakeup(dev))
> +		disable_irq_wake(priv->irq);
> +
> +	return 0;
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(rk805_pwrkey_pm_ops, rk805_pwrkey_suspend,
> +				rk805_pwrkey_resume);
> +
>  static struct platform_driver rk805_pwrkey_driver = {
>  	.probe	= rk805_pwrkey_probe,
>  	.driver	= {
>  		.name = "rk805-pwrkey",
> +		.pm = pm_sleep_ptr(&rk805_pwrkey_pm_ops),
>  	},
>  };
>  module_platform_driver(rk805_pwrkey_driver);
> 

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
