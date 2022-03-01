Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F765C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rntQ9M+1V3qFxCUCQ5WuBclH11wO+ZeJKJxrVMjcc5s=; b=bJFPZ8v83KiAJ0
	eTxQd+OuoU1h3ZcjK6wLxoNTXimLYA6QIyQkdq01DmbaUcriua99sd4p8TZrBbRcoTFooyT1vz77+
	UL24UFJF7HQc7TTG97oDKTT8UOeF8OWZTdQL2I8C273Lf0ltKhxmq8AxEV2kIl0TFQrjZ9GVqx92Z
	oIOB2wIYyN6v4YQ+9DPCreaW6cZ7n8ucmxRiBRr27slgo/KohSPKCFxrGpBv4JCNtTOADKcFMn9Cl
	b+alKAZL1K7aSSuntjMMfSwz6XQ8+v5ZpGAprAa5IRUUTsiXLgZmlqtQA75vYmU++YomR3N2so9X+
	OgdFecdPBA+ZLvJdIedw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP1u3-00Gd0H-I7; Tue, 01 Mar 2022 12:46:55 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP1tp-00GcvW-UN; Tue, 01 Mar 2022 12:46:43 +0000
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-2d07ae0b1bfso143028637b3.6; 
 Tue, 01 Mar 2022 04:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNYxb0caqFJflVe0lFiSRpMQbq4T7re3mr98tPyMuVo=;
 b=DORDBK+OJopp5XZDr6HfOMo/j0vGvwW4iR9plo/nRoxkVlxirWPLuod9CUyzZQEfYF
 QMp1jPOB0BiN9GnnNUvbfjIzr2UGb7gAt/OVaq3eeIIUPFMlqGmNXcHtmoPpz6YjqBhU
 v1HKfQiLle1O4AS5KSpGMAP4rD5pFcdVW7aP0+1LB80mPoedNOXL78WsxvkXUFTsAgFG
 kk5TqxfCnOq3wo9oxr3ZnNho3lyZtt/lIBRtgKCt7KkhoEZPxhQVYwrn9RYAyFsTOxfx
 RMwJ27OFEewB1EF02ls7lRGfvPvOoG48KpJjL8dBgd/6gaBpqb2rzPGDiDrQw1YTwH2E
 YGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNYxb0caqFJflVe0lFiSRpMQbq4T7re3mr98tPyMuVo=;
 b=Wc4oqzXlGJvuoK1JQkG4FDczTDTY28DRbtR4PwV/0XkV6YXOKUPqkyPo2a67kyNyc6
 Nb4RRfdSJvrZd5Cs3DwH+Q0QlXE1wiOujH0QSyzyXl8RmuUK1G8P7mguu9y+V3g9GGiW
 WMFwSgYwG8RqTvm/z4HrJtKPaWoFKJWl6MeqwKnBFzON7zs2XyiuXgCkB9sTzo5K3Emv
 QHbMlpSVBSd2D0EH3gWXDEloeBexvW4PbQyduzZXorJYuZp5j/aCcO67eBXy4EtYPx0G
 v0oFZygx/nXZlcRIvg3VnG30uss/Ww1lnBnO4WI6kywZpkSjIVBDVDaLOi9BUtx6Syjw
 l8sw==
X-Gm-Message-State: AOAM532/Z7c44ANHQitwIZd1NRbuitAtHYzSAXuRcoNF4k1MYgezQ9ni
 cZV3bYiRdvEUyk/LL3mMle+a6as8D1aUuXVqkwU=
X-Google-Smtp-Source: ABdhPJxf5FpLziaFlmJ5Pr6hxG+fTN8jkthHfFVs81qUqpxpu+9OJnZ6uScFADTXcxf0WK0pd0r+PCOvNd9GvTdLEaI=
X-Received: by 2002:a81:3807:0:b0:2d8:2ed:1d19 with SMTP id
 f7-20020a813807000000b002d802ed1d19mr24305957ywa.519.1646138800565; Tue, 01
 Mar 2022 04:46:40 -0800 (PST)
MIME-Version: 1.0
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
 <c12e74b7-0bef-ac7a-20c1-2a17ddd050dd@arm.com>
 <CAMdYzYq0A4FitRGe49fxvjbwLUCi_KGwCtfz7pmayt_dK=r32w@mail.gmail.com>
 <54b24f3d-3762-abbd-5ac4-dc5728f2fe4e@arm.com>
In-Reply-To: <54b24f3d-3762-abbd-5ac4-dc5728f2fe4e@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 1 Mar 2022 07:46:29 -0500
Message-ID: <CAMdYzYp=Po08pap9w5s8PV0mKfFZSPSOhM1U1AUdrRkYV-FRZQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
To: Robin Murphy <robin.murphy@arm.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_044642_048736_30D30AD2 
X-CRM114-Status: GOOD (  34.98  )
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

On Tue, Mar 1, 2022 at 7:38 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-03-01 11:49, Peter Geis wrote:
> > On Tue, Mar 1, 2022 at 6:23 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2022-02-28 22:36, Peter Geis wrote:
> >>> The dw_mmc-rockchip driver drops a large amound of logspam constantly
> >>> when the cd-broken flag is enabled.
> >>> Set the warning to be debug ratelimited in this case.
> >>
> >> Isn't this just papering over some fundamental problem with the clock?
> >> If it's failing to set the expected rate for communicating with a card,
> >> then presumably that's an issue for correct operation in general? The
> >> fact that polling for a card makes a lot more of that communication
> >> happen seems unrelated :/
> >
> > Good Morning,
> >
> > This only happens when a card is not inserted, so communication cannot happen.
>
> Well, I suppose there's a philosophical question in there about whether
> shouting into the void counts as "communication", but AFAIR what the
> polling function does is power up the controller, send a command, and
> see if it gets a response.
>
> If the clock can't be set to the proper rate for low-speed discovery,
> some or all cards may not be detected properly. Conversely if it is
> already at a slow enough rate for discovery but can't be set higher once
> a proper communication mode has been established, data transfer
> performance will be terrible. Either way, it is not OK in general for
> clk_set_rate() to fail, hence the warning. You have a clock driver problem.

Alright, I'll look into this.
It seems only extremely low clock speeds fail and I know rockchip
chips have a hard time with extremely low clock rates.
I'll trace out where the failure is happening.

Thanks!

>
> Cheers,
> Robin.
>
> > I found it while lighting off the SoQuartz module.
> > As it is pin compatible with the RPi CM4, and the CM4 does not have a
> > card detect line, sdmmc is non functional without cd-broken.
> > This led to the fun spew when there wasn't a card inserted as this
> > function is called every poll tick.
> >
> > Thanks,
> > Peter
> >
> >>
> >> Robin.
> >>
> >>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> >>> ---
> >>>    drivers/mmc/host/dw_mmc-rockchip.c | 9 +++++++--
> >>>    1 file changed, 7 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> >>> index 95d0ec0f5f3a..d0ebf0afa42a 100644
> >>> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> >>> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> >>> @@ -50,8 +50,13 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >>>                cclkin = ios->clock * RK3288_CLKGEN_DIV;
> >>>
> >>>        ret = clk_set_rate(host->ciu_clk, cclkin);
> >>> -     if (ret)
> >>> -             dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> >>> +     if (ret) {
> >>> +             /* this screams when card detection is broken */
> >>> +             if (host->slot->mmc->caps & MMC_CAP_NEEDS_POLL)
> >>> +                     dev_dbg_ratelimited(host->dev, "failed to set rate %uHz\n", ios->clock);
> >>> +             else
> >>> +                     dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> >>> +     }
> >>>
> >>>        bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
> >>>        if (bus_hz != host->bus_hz) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
