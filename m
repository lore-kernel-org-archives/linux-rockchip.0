Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71413CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 11:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tilexyMBoDJgSIi6iVL2SZhcpHD9jff7g8wcLM1rN+w=; b=uCaRbgjlZMJsNq
	0YktMViXwaHxQmgDiCjlOMdOS4/DvslAEzGgI4zDAuvgYnmq5MFKLxUJuKTcosC7YSMYi2tyE511y
	wmz2BsCw4/mD8++ioI+x/Zxas63CdIM73vO58i26lQDLDJa7k6CYBhw3nKjowS4RLn9f2sa58SfQf
	4RGuRymy2G1OJfCXwxhWvFfiGhg/BwYz4Q6BETZa/j3cmdmdLKhKut4Id5Qb4NUg8SCVNzgV5UNy/
	BjzTWYYPFDeGE2CnhB7Fdb1sDCCAWpTY9+1rYypCDHXnCteX7X60cewnltUFdRfKW/SxYFtyUhcFR
	DG4IGRpCRjqTUSz+MBOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ9KZ-00000008iXk-3p5m;
	Wed, 12 Nov 2025 11:48:07 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ9KX-00000008iXG-47po
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 11:48:07 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-7866aca9ff4so7934087b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Nov 2025 03:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762948085; x=1763552885; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7NYJ5WXgey5rhIW+17o6Oy776CE+t0Py5K1K/GHn60w=;
        b=bdOm80BX2fsQcY7ChRahBdxICTjalwC4+rnc5XVgL1d2+H4Ef+PxyA1WGVrqRj8nwX
         umpTPr25NXahBqQLtxrIbMJL+kSt8hvBw7TI8HgrCZFeG8kQPx2HWo9r4t7CGLZra8pO
         FcW3NZuVw+sXWRmF0LX2Oj9UK7j18AV/wf0zao4czuIfNegQvb278Ew90v8eu/Ve+v3S
         4wcKeErJDQaNcnnIV0+xDrWHthBKoOdbcrAN4ouRhzQwTcBNuy11NTP5aBY8+Gl64sKj
         ZpGaQSIXej84JI2LME8ZxIvv5g7nREd434qyOlHR3pQfbTT73As3Az3bt4dPRECvEhuz
         a30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762948085; x=1763552885;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7NYJ5WXgey5rhIW+17o6Oy776CE+t0Py5K1K/GHn60w=;
        b=OaFVIfmTasYcvflMcB0ybEYArYxmF0Sgs6Y1M71SRXeVd/FPXJEjo0Y3WS1nksnxeU
         k+/yHY4kMq5b6DfNm6b1A5BmOqRQaEIRDiKhDcEk6VEoUNtNjjxfdi7ogcKeciaXDtTo
         8Lqwq9LdXb+JyLKVf5jNlQmVlOvg3lYHIkjDCrP6GjYuRIpwzwhdbfngsmsv84U5IG7p
         ZzxcBpumVf329fqz3Ya9ulYdCjh2SwKq1GKtSO0ftt24RwbDZwgESt7Bmopb3Fu+SvCI
         R8IZkVZBCyhpGLU2VO5DvjDioU2x/iZ/TeONsvuBx6KaArtv3vr+v4wi1vMIYAJ5s30f
         p8rQ==
X-Gm-Message-State: AOJu0Yypo9FAqaIpkVUEL9jYSdgxC+wU9Yqt0hZB40xUxGsWFA3MXqxj
	8sXN/HxIdRtPbumMa8jMQ0iNL2cci1cXBPOeqETjNn2yaYxmi640coFTP+IXihae4fkY5Ohb0EY
	Vfwr/Lb+8Mo3ShR8XRhrdPm1wzC3308blGkF37Oa8kF/rLIYh8ZvX
X-Gm-Gg: ASbGncspj3Om7vNgFPu7MzIi8ZB7nHrwvMIeGNYpXUzoLX5ZNmHpoZhAIndj7ryR8eh
	YtLF2oFO4iHYahlYjlPQ+Qh5jp2dymmXevMunvr4v1IqHaZ2xR6llCgYfeXm0a7PHqjWg9nGtNj
	IEBUXau8NgLgb2GQHDEe2I6xRGabndXYpZ/dxzwvlebdXXXVDEb8yjnU5b8ULoQw+H1XTCNDwmh
	JvU8C+EwT4SoyXad9ip+XF4xQ0TnC6XVoYBQYgCE9vYDwPE1/KKh0CWhverYA==
X-Google-Smtp-Source: AGHT+IFiUv9DZGhLP17pAviEb4zykVtbiDE2N23Gp6WltS2iVYg5GcikToAPGfGrPEL4MPtOHRWU5J8Khj4lVV7ZSGc=
X-Received: by 2002:a05:690c:39a:b0:788:c07:25d0 with SMTP id
 00721157ae682-7881363c8eemr23751057b3.16.1762948084802; Wed, 12 Nov 2025
 03:48:04 -0800 (PST)
MIME-Version: 1.0
References: <1762242094-55346-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1762242094-55346-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Nov 2025 12:47:28 +0100
X-Gm-Features: AWmQ_bkZ1Y2Ii5nZkzj_CzoJh36uphyJIU_qIDOUvcUy8PYPZsxhRvAdRL_lH9w
Message-ID: <CAPDyKFrGPYKB4eY+r6LKxbujJQt-5F_Ha4paeV0AT3kmY6DQwA@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Add memory clock auto-gating support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_034806_044420_0F6E81E0 
X-CRM114-Status: GOOD (  17.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 4 Nov 2025 at 08:41, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Per design recommendations, the memory clock can be gated when there
> is no in-flight transfer, which helps save power. This feature is
> introduced alongside internal phase support, and this patch enables it.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 6813549..62c68cd 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -19,6 +19,8 @@
>  #define RK3288_CLKGEN_DIV              2
>  #define SDMMC_TIMING_CON0              0x130
>  #define SDMMC_TIMING_CON1              0x134
> +#define SDMMC_MISC_CON                 0x138
> +#define MEM_CLK_AUTOGATE_ENABLE                BIT(5)
>  #define ROCKCHIP_MMC_DELAY_SEL         BIT(10)
>  #define ROCKCHIP_MMC_DEGREE_MASK       0x3
>  #define ROCKCHIP_MMC_DEGREE_OFFSET     1
> @@ -470,6 +472,7 @@ static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
>
>  static int dw_mci_rockchip_init(struct dw_mci *host)
>  {
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
>         int ret, i;
>
>         /* It is slot 8 on Rockchip SoCs */
> @@ -494,6 +497,9 @@ static int dw_mci_rockchip_init(struct dw_mci *host)
>                         dev_warn(host->dev, "no valid minimum freq: %d\n", ret);
>         }
>
> +       if (priv->internal_phase)
> +               mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
> +
>         return 0;
>  }
>
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
