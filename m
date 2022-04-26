Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6987DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 23:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrJ5gLLMnU/xJqMgFgA3IfoBcjz+1G3lUOO008hakrc=; b=zWrbTehGmQNPWX
	Ksjo63a26gjVNC6+UZxJx3eNLNJq4Shpdl6VJVNVCxRDVaI+a0FEtjLcrlVajmRZGj6Wzt66MFq8R
	0pApAbeYA8CxGp8aljzDmvEBt+o5166X8Y6O0P2rh3+vmPq95EMDbOz6f4w5TXIHRl+Wx3r6N8z3i
	aZE+OVsxE5gP57AyenzdJWxZelLr+crrZuKxAolnV/UxPCidF2961yLkjY16rb6b03i19Qzjr/TrZ
	TqvyGsvv2B8sY3LECvolsL6KL6khOb+LWsqGYPR6+hD6pHsx6xsT2Kf4nSoade6JmFIo3r5OABnbY
	2uqRU6+heMNqo9PzzJjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njV1c-00GiF2-2P; Tue, 26 Apr 2022 23:55:20 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njV1Y-00GiEh-VU
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 23:55:18 +0000
Received: by mail-yb1-xb35.google.com with SMTP id w17so485486ybh.9
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 16:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nlt5qC+wvX5QcXEUX3mdcdWLCql1FNsd3/g2ToCHKcU=;
 b=aO9N7IfdWDlkYSXheT2CnTYqLmWETHZgTvHopWHBxHIRPnCHtG+d2P8fseumLmleiK
 XCjpLuWHvHtP3sAvSblNcRUz36ij1Ka+uhe4+hxA0JyF8nJWfkSWPLa/K+cqk8VbyoXl
 qh1AjswHxttcFaICPkdy5Zs8ecRYAZjidd543EcpsqmWRLE7mnlzXwe1OJpMKzYQPKgy
 KA72QY9Nx0woIqJKKvLZn4dEOoT5ex3klxZv7Ld+xzXikBITIqHj3PryMn/rYTtPmS8y
 AIg34upVQalYNavbxTu49mipu5FLybaW2WgXFAvQ7hMJGW4DWTXCIDT8Ijct5QZOp6RT
 MwLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nlt5qC+wvX5QcXEUX3mdcdWLCql1FNsd3/g2ToCHKcU=;
 b=ng7ppo9IdERZ0sECEjkPcGhHl5A0avxv4qFOPt54k2ZtbVjKv1pIwrw7gIviIl5qMl
 Xx/uCRTSlO55GnKayio/wTM7svxTBIPDGhYVNz+EYJPed9erT+FvauqbM6kCObNbZ6LN
 s56mrUNqR9cW/PXKj0GLPwZsd1e39R0w0jqd6Fzy78WXAFESqAuO5v+nwUPMLaMWYSjS
 yFkYCHisnxpWSoKLSugAP/px01asHK7rGJjPNuJ6+P+75F4yjJN8UGYqQKyVgUb3d3F/
 vEbDilol2Jumkzil4qYDhIz1rhXiBmxsG+p7pFaXnS0XbMdRaELQPVNG0a+MZ/d5IhDj
 wSAA==
X-Gm-Message-State: AOAM5323PxTCI0TLwCUboCmnrkSTtG5E73yfNNWNHnrT7pGrREcTmMIr
 fyBLruH8AToaiuvZ9hKhw7ZB9sPE1zyOpOd5ahM=
X-Google-Smtp-Source: ABdhPJw1e5UpoiyY0rnTzfkQyWo+TP1DNsQS+nw0hkXS+1iwawNqWqm0B17hT9qfFi7HJuY7QKDXpWEhpwzdtzMLkOQ=
X-Received: by 2002:a05:6902:1249:b0:644:d8bb:e741 with SMTP id
 t9-20020a056902124900b00644d8bbe741mr24530799ybu.585.1651017314763; Tue, 26
 Apr 2022 16:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220426014545.628100-1-briannorris@chromium.org>
 <20220426014545.628100-2-briannorris@chromium.org>
In-Reply-To: <20220426014545.628100-2-briannorris@chromium.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 26 Apr 2022 19:55:02 -0400
Message-ID: <CAMdYzYqyDr1HFYB4p8NK8ssq60qfjR2jyoSJ=tcRn8CWsZr16g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] soc: rockchip: power-domain: Replace dsb() with
 smb()
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_165517_072761_D293AB42 
X-CRM114-Status: GOOD (  21.65  )
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

On Mon, Apr 25, 2022 at 9:46 PM Brian Norris <briannorris@chromium.org> wrote:
>
> It's unclear if these are really needed at all, but seemingly their
> purpose is only as a write barrier. Use the general macro instead of the
> ARM-specific one.
>
> This driver is partially marked for COMPILE_TEST'ing, but it doesn't
> build under non-ARM architectures. Fix this up before *really* enabling
> it for COMPILE_TEST.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v3:
>  * New in v3
>
>  drivers/soc/rockchip/pm_domains.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
> index 1b029e494274..cf16ff9b73b3 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -178,7 +178,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
>                 regmap_update_bits(pmu->regmap, pmu->info->req_offset,
>                                    pd_info->req_mask, idle ? -1U : 0);
>
> -       dsb(sy);
> +       wmb();

Just curious, shouldn't this be mb() instead of wmb()?
From the arm64 barrier.h:

#define mb() dsb(sy)
#define wmb() dsb(st)


>
>         /* Wait util idle_ack = 1 */
>         target_ack = idle ? pd_info->ack_mask : 0;
> @@ -285,7 +285,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
>                 regmap_update_bits(pmu->regmap, pmu->info->pwr_offset,
>                                    pd->info->pwr_mask, on ? 0 : -1U);
>
> -       dsb(sy);
> +       wmb();
>
>         if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
>                                       is_on == on, 0, 10000)) {
> --
> 2.36.0.rc2.479.g8af0fa9b8e-goog
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
