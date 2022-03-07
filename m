Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB6BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 12:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTbvnXbh6LeTkIGjUT7aANMFymYxArBg+bysMt1nNnY=; b=i9RyTloGQf5bjs
	Xep0zWo16E8uqe4tP/Wa/md2y/XiOVw4/QV4dp86hFcwSawC9BFE6xY6eMIOd8cJ1rOQjL3HYH3DM
	vE78mdkrreyWyZteHX6MYi3l6IM5bsvkBTuLW9fYlg86lKVUwuNgALaPO2rTxcLVqLrcPo8T7/psW
	dfGgWB3de6DsyKvxCyQTX2YZnQUCpzqQC5JUU2Tohergr04fbFX2AUP5tK5M1Khbkebp5QvitFUJa
	xZbhybSwgxjCm+NROFDgkXHlbCK9KYEIO1U2oiHaWtI3sYmlGD367dB6B+EGySyYU3lN4/LbwjBW+
	yapCy28Wm88493WvADLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRCQ1-00HYyK-RG; Mon, 07 Mar 2022 12:24:53 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRCJN-00HWNi-DZ
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 12:18:02 +0000
Received: by mail-lf1-x136.google.com with SMTP id l20so1195549lfg.12
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 04:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DH+oocjZoheS2ppzlV3GMLdC/wnkrMQ+M6DhJ2OkEzo=;
 b=g708jxdHQUWcHu5206IcwS0xblL+SDdIq9n4R9CDqFeF5xNyeTcEOUcAqUVvzZDz8V
 hQn+nU+0TDuRJLO8SuFKWAJ+9W0CE8OPVyPeDvyG6SJISgOoEwburixXTLjO635V9Xl6
 eb6vEZ2sOM+IMYzzk65k+um889M6lSU+PdFr5zBazLPAiaWCBfJOHDI1el+dl8DtqFti
 HbpqegtfT0Zi9oKXVlX/XPgr0WUans98HRzlt836rH+FoCRKnF4RUK82+xTHJsq3QpnE
 hY7rL4SEc2ZEEr4fTMmSEyyYjnWLgSB/c0F2zPhxewUkASzctE4WEcfQDsD8dewD605S
 AO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DH+oocjZoheS2ppzlV3GMLdC/wnkrMQ+M6DhJ2OkEzo=;
 b=cnnVLwZVpAmUyAmnvJaBCG9/EjAcB1gW9e9vNrFkV9n+BoMroswESvCSBrbTxcNHi+
 lSnTSe4+4wVlGxgr+LmCOu+GQN7fh+s4z+DM5rdiSCDuzYgA9kLI5/zl9lto5waXB7wq
 5dZ1Zp2RzLJbA7afUAiqUPXB9tbAcfNqXgfHzm0f3C7ysYbSTFMwX+tTYIXezbVZvfvA
 v0wVaIkJVn6t46hYyM1uBYKS7W8/ftRWkkWASdq9lVsfIVHTJ5X6SKbwKwyxV1Mp+8bM
 Dfx0cRcW1VFO+PiTd67fiLSwv7itBqo0L7zGYc0mwZqpE5rRx1MIV/uRA0coUDxHAK6d
 MEoA==
X-Gm-Message-State: AOAM53312kUcIV5k1E13mEnRr82Iqutb8SMmXlzzAc9mNRhM+FFTBHVY
 Z03mQtvvRLucj+GJ3wfcSzp9Yo45cv0VVdpQFCFjlA==
X-Google-Smtp-Source: ABdhPJwbfy+LHJAnH3WR3mpkDHlEFZcuNi7GqXx9Xn7uVcgj3VU5VVdqiFlAV+K811utx5kneHGx2bTp2eJ1bDPK9e8=
X-Received: by 2002:a05:6512:260b:b0:445:c54c:4157 with SMTP id
 bt11-20020a056512260b00b00445c54c4157mr7377045lfb.254.1646655478490; Mon, 07
 Mar 2022 04:17:58 -0800 (PST)
MIME-Version: 1.0
References: <20220305215835.2210388-1-pgwipeout@gmail.com>
 <20220305215835.2210388-2-pgwipeout@gmail.com>
In-Reply-To: <20220305215835.2210388-2-pgwipeout@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Mar 2022 13:17:22 +0100
Message-ID: <CAPDyKFpE-oSa1+rORK12X5uZLV4147hOiVZPG=j15b4QCU3muw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] mmc: host: dw_mmc: support setting f_min from host
 drivers
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, robin.murphy@arm.com, 
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_041801_506696_127105E6 
X-CRM114-Status: GOOD (  21.82  )
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

On Sat, 5 Mar 2022 at 22:58, Peter Geis <pgwipeout@gmail.com> wrote:
>
> Host drivers may not be able to support frequencies as low as dw-mmc
> supports. Unfortunately f_min isn't available when the drv_data->init
> function is called, as the mmc_host struct hasn't been set up yet.
>
> Support the host drivers saving the requested minimum frequency, so we
> can later set f_min when it is available.
>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/dw_mmc.c | 7 ++++++-
>  drivers/mmc/host/dw_mmc.h | 2 ++
>  2 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index 42bf8a2287ba..0d90d0201759 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -2898,7 +2898,12 @@ static int dw_mci_init_slot_caps(struct dw_mci_slot *slot)
>         if (host->pdata->caps2)
>                 mmc->caps2 = host->pdata->caps2;
>
> -       mmc->f_min = DW_MCI_FREQ_MIN;
> +       /* if host has set a minimum_freq, we should respect it */
> +       if (host->minimum_speed)
> +               mmc->f_min = host->minimum_speed;
> +       else
> +               mmc->f_min = DW_MCI_FREQ_MIN;
> +
>         if (!mmc->f_max)
>                 mmc->f_max = DW_MCI_FREQ_MAX;
>
> diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
> index 7f1e38621d13..4ed81f94f7ca 100644
> --- a/drivers/mmc/host/dw_mmc.h
> +++ b/drivers/mmc/host/dw_mmc.h
> @@ -99,6 +99,7 @@ struct dw_mci_dma_slave {
>   * @bus_hz: The rate of @mck in Hz. This forms the basis for MMC bus
>   *     rate and timeout calculations.
>   * @current_speed: Configured rate of the controller.
> + * @minimum_speed: Stored minimum rate of the controller.
>   * @fifoth_val: The value of FIFOTH register.
>   * @verid: Denote Version ID.
>   * @dev: Device associated with the MMC controller.
> @@ -201,6 +202,7 @@ struct dw_mci {
>
>         u32                     bus_hz;
>         u32                     current_speed;
> +       u32                     minimum_speed;
>         u32                     fifoth_val;
>         u16                     verid;
>         struct device           *dev;
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
