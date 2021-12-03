Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C461DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Dec 2021 15:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3WCdDwzJsThv4WerBauvLPjM9OUR2GDeSJ+op3cKEc=; b=uDAzfXzwDgV3bZ
	xjijwRQI/KHjUVWQ8aD2ITS8o7zfYEDSNsXfdUjahr6hiE3vhDC/8kJc/7RY1q8HDdhs0FX64nbXZ
	TnFwY9PJgBeUG+ajQJfmIsBLcMHOzIQNynGKp/ELaFeeP1OhrCroY6Dn/xAsqjwMHtsqboxWU4XV/
	0QxwGqi6Zs/7h2qF8uv3lwZl8N8UAVDg8tTCWa1TS6TG5319bxelGG+1frUIC8qSl1bZu1wGNPFoF
	5AFN7uPkVDifueEZU9Bvfp7yzN3ZQQfUgEAWDO92RHsXfPbYANDOrUXb9yCKB8JfmZK5w6e7pC2t1
	5fQ27LHAOBXLHq/QJNyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtAD1-00GJrY-Sq; Fri, 03 Dec 2021 15:10:47 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtA2j-00GGxC-DT
 for linux-rockchip@lists.infradead.org; Fri, 03 Dec 2021 15:00:10 +0000
Received: by mail-ed1-x52e.google.com with SMTP id r11so12502596edd.9
 for <linux-rockchip@lists.infradead.org>; Fri, 03 Dec 2021 07:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VtY25LFKl7eTwEuZldGmVgghmm7bTt72/KAhGH0LlbA=;
 b=xZblMOLDD/4vn7XuHfYaLUYz8nzMlGw5OVJuJkQKzdTE+KgvZqhURXkgUYHiDKkJCc
 90Fh0VtXFstEEf84KgJxhrDr4bxyr7kakzODwLWCgO+0SfJQv6s6sJGNhEpZq6tcNT2r
 0h8uhV2L+wxQ46QB6RaFmH30r/kf+T/tR+m3/6Qa5Lvgcm87GG10SHnidvjXuvukbYoy
 4FdR/BPCk7cxFBV/24fnF22tZFwZwwSz+OVQXlpuPDDjvfe1A8Uvf0YjWD19I846/FLG
 NEXUJTvEuopX+8gvEPAR/VG2+Cr/AjjLhodDAukQM7hOfwl9yJuMRgD505pKD6bF5cTi
 PkSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VtY25LFKl7eTwEuZldGmVgghmm7bTt72/KAhGH0LlbA=;
 b=GdIxBnsgRvJDJcxAEEf9aGkW38UrBxJaf8HUJQZsIu7wmuKF9oH+kyYcmEuIcvsVld
 YQIGQEiXTCGpjp/wO0kcGAaLBx4ek0et46p0r2aSNmYnBbE+ruD3Vq2Hib1yLa1EblJ1
 cjUgyt5LJH6ok1aH+PxJ8+BfJ4RyaOzmw8RJRmqSmh37YLx/bmA/e3Vq1cWkTSwkMCsN
 J4GEKyrrYPEQEXi5NIdufVwRptQicDaxHzmDAkSvopGBLDfkoeVJzP7W3ZXwHB3xkEqf
 IQYaLGdXXQ2ojgx6/Ry1RvQF0/gOEjW/ZcB4j1knI8hnfGODnWslIa+UTG/0o/vvITCs
 oWkw==
X-Gm-Message-State: AOAM53288JfRwCpv80fEhfTN6W8NBU/8PA9D//TC6g+pQ1TicR1SSZx/
 A2F9zV0XZsi/5lEaYEnN18UVUsZVuz4acKrOmd8Ycg==
X-Google-Smtp-Source: ABdhPJy4TGv4Xq8YWqsEzg5l8Oga2d3eqJo4J7nkcgTKE3wluMMUK6+HGidcMspgGZho9/MvzfDTKV/Hl4J/2S9m9h4=
X-Received: by 2002:a05:6402:2805:: with SMTP id
 h5mr21287297ede.267.1638543602223; 
 Fri, 03 Dec 2021 07:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20211202155022.2972779-1-john@metanate.com>
In-Reply-To: <20211202155022.2972779-1-john@metanate.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 3 Dec 2021 15:59:51 +0100
Message-ID: <CAMRc=MdPCTQm_4_D4WApkL8y1tL__qt-2jnnreGQL0d=tjCADg@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: lock GPIOs used as interrupts
To: John Keeping <john@metanate.com>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_070009_512877_CCEB2EA9 
X-CRM114-Status: GOOD (  17.67  )
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

On Thu, Dec 2, 2021 at 4:50 PM John Keeping <john@metanate.com> wrote:
>
> Use the standard gpiochip request/release resource functions so that any
> GPIOs used as interrupts are properly locked.  This allows libgpiod to
> correctly show these GPIOs as in-use.
>
> Signed-off-by: John Keeping <john@metanate.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index ce63cbd14d69a..c1b8e5dbbcc47 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -465,6 +465,22 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
>         return ret;
>  }
>
> +static int rockchip_irq_reqres(struct irq_data *d)
> +{
> +       struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
> +       struct rockchip_pin_bank *bank = gc->private;
> +
> +       return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
> +}
> +
> +static void rockchip_irq_relres(struct irq_data *d)
> +{
> +       struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
> +       struct rockchip_pin_bank *bank = gc->private;
> +
> +       gpiochip_relres_irq(&bank->gpio_chip, d->hwirq);
> +}
> +
>  static void rockchip_irq_suspend(struct irq_data *d)
>  {
>         struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
> @@ -536,6 +552,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>         gc->chip_types[0].chip.irq_suspend = rockchip_irq_suspend;
>         gc->chip_types[0].chip.irq_resume = rockchip_irq_resume;
>         gc->chip_types[0].chip.irq_set_type = rockchip_irq_set_type;
> +       gc->chip_types[0].chip.irq_request_resources = rockchip_irq_reqres;
> +       gc->chip_types[0].chip.irq_release_resources = rockchip_irq_relres;
>         gc->wake_enabled = IRQ_MSK(bank->nr_pins);
>
>         /*
> --
> 2.34.1
>

The title should be: gpio: rockchip: ...

Queued for next, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
