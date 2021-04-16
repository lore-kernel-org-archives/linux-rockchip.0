Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0821C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 13:14:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F336F61153
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 13:14:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F336F61153
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AovuKKVOB8DvvmNlUkHGJ15iTKD+YSk/q1SJ8/NDU68=; b=cCeJu0eOAYFFfW3iHhl58zHgG
	YX9ZK1u+RIE3NbFQjXnZ6J6J6T2hQNG2Ll8r6WkU8DHy+91qxsqRZbdAZKVfiEyWJCxYJYk2j+8N9
	L/7NAoGD3yJh+b3J5KKYTATM1lPZEV05Ep896nCiIAXkOLpAa7LbNPWRgLLs+4iZcrMDHiW2mKwO1
	zcYTnkf8IMqVw24FY8EvXAToUMo72lmkfTER6TeuQGtNWxsIooCUfLD1IqnWcV41uXjf127OnxaYN
	Vkpt8W863WxlB5/bW4HnIcsWaGPiSNS8anmi7GpJD9nHFyQIuofoAqkKxXW9avq/rxmzPBe715Cq0
	F4CsEmQDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXOIR-002B6y-Pg; Fri, 16 Apr 2021 13:14:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXOIP-002B69-Af
 for linux-rockchip@desiato.infradead.org; Fri, 16 Apr 2021 13:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=FBWxrzeqmT+fcqxM3CIZlLxZmv01hbyHOX79oGcgBNU=; b=Cj84LD237XsgF4U795dcAxAhoJ
 DzJOY7AvyF4UeE9GOulyEO3gt6UdOiWbWVD5lCEs55F4aRW8RzBWdrAi0p58y3ttMMmSyXIT2ITn8
 75mqHhJnSoSiW0m6iMAyq3oDtXuqJEtwu3XpLZ7McswlEtp/dqgXnO/Go2/vepXyHuuH8VIPz+Um1
 AF4PebCxkZMPY7prfMuEf3RPdlgapFD4HZapmW0/ecloGG/sSA+xG17UQIIC+CrvznuZq9naykSak
 gW8DR8HjtKnsuvmlujPSFsedobakHFp8UOBgT/4q1RuGvONBNVuyh5ySO3Yrn0chHo/XvvwrO7l5q
 DaZuDK0g==;
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXOIK-009Nus-3q
 for linux-rockchip@lists.infradead.org; Fri, 16 Apr 2021 13:14:03 +0000
Received: by mail-ua1-x929.google.com with SMTP id 33so8535681uaa.7
 for <linux-rockchip@lists.infradead.org>; Fri, 16 Apr 2021 06:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FBWxrzeqmT+fcqxM3CIZlLxZmv01hbyHOX79oGcgBNU=;
 b=bdJmr44iMOBmUSUkDpgxXY3Jty1xvHbjqaqVPUMm9rf8YT8a5vNd7dGU3LjNJD/iSb
 vWumSD8PEjrDXu/vEUsdkZ8C15ZJf3uHZrlA/e2i9NKfeJZjV6wPSwNUzQB90HbbVbXx
 DzvexOCebDj6P+QzYWuiqzob8j4kIIrEF9Wg19RTRaIg3UK71pDM6fM5aR4tFgrrETHU
 uHniyKuQHV9bEpzGIO9Bl3vNKxbyiByErGnH7fXSBJwKDcGFUbi52TFxuv+ztS16J2Ui
 c3GNHwzKU5GcOjkUWLez9gTKEUJf7WHwFtRntt+/zUXp64k5uP6zT4IrZJhdhrEAWJq9
 9JJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FBWxrzeqmT+fcqxM3CIZlLxZmv01hbyHOX79oGcgBNU=;
 b=kJ4qFdvOPppaARVCw24RZ1u7qXS668qYyZE/KXt8bTBoCSc1sU3ftPObCm1Vca1wWA
 II7J6j0ShGn5905w/+8OAyHA/fBxrr1U4RNK6wZ4Gwl/tS3HuS01yq6t0PuswICq+qsG
 Oc7TMhr+4eOJ46fH8nsZmeiCUIbm7/VA1ZYRKMVxc/AgkqhR2iCIotQzmT5CX1EBX+f2
 L/+McHdLQgFxBcJZD9rjMu7j2VqQ5Z236mLFKhTeDsNqXMA/DB9hYgP3PWYkEXngB8lo
 XwL8YYMd9Y0HxkAViZ+h3tPQ5WIifPXOnfOrO6Rd9Yzxm1+rSSbqDXX7anVcfKqofvvJ
 DlKQ==
X-Gm-Message-State: AOAM531LLW5+csYv2gxidlWifDv27plNeZqQhXetruieZ8eq+Qnstuhi
 fnUGuvOA866GEHlw0ZL41eoc/3MYQu25MAbtZyHcJg==
X-Google-Smtp-Source: ABdhPJy/1ARqgMcxbv36kBpNiVuJTz8nsWTI3plbA4LGjirAcRyHtrPAViAMFfbbTMmvG6YbZNHCj7ebG0ZClcAki8c=
X-Received: by 2002:ab0:12a:: with SMTP id 39mr5934046uak.19.1618578837741;
 Fri, 16 Apr 2021 06:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <1618539454-182170-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1618539454-182170-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 16 Apr 2021 15:13:20 +0200
Message-ID: <CAPDyKFqi8V6WC9Rdtb0hEXpP=aSigq6+P2-+X=O3XpmX-9Tyug@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Just set default sample value for
 legacy mode
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc <linux-mmc@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_061400_243560_63501168 
X-CRM114-Status: GOOD (  18.17  )
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

On Fri, 16 Apr 2021 at 04:17, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> .set_ios() is called from .resume() as well. For SDIO device which sets
> keep-power-in-suspend, nothing should be changed after resuming, as well
> as sample tuning value, since this value is tuned already. So we should
> not overwrite it with the default value.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe

> ---
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 753502c..d36991a 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -61,7 +61,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>         }
>
>         /* Make sure we use phases which we can enumerate with */
> -       if (!IS_ERR(priv->sample_clk))
> +       if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS)
>                 clk_set_phase(priv->sample_clk, priv->default_sample_phase);
>
>         /*
> --
> 2.7.4
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
