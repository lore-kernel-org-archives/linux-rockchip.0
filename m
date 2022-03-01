Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4711C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 11:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlwtBNU8c4rzFer+Z0y7k7HPHL9a9e9sm/jjQFXy5VI=; b=4ht1zOqsGQNvXq
	bZHZdux6mhR/3geI0sZF9+hSm35umbd+Cav7AkGfp+fs022q1CLktkz5xsewc6+KBA4R5CnftTJpC
	tdFOGb7b11FZzt6TpEZEbx4dAvVrb2AhA/OLenyATKo7JTdz3waNZ6vstd8pW1SVnTQsbd8iECkbM
	veCK/+ePdXU2xfd5WCHJk/ZcF6J1E0nGuRx8QPHLfnhte7IfdyvlbghIZuDJ3Zmp5rZld9oI27Bm7
	HJeRfZcD6HOvcFaaV2m0weWjzwxmIRL+x5kWWutQfYDntZE29JZYe4TkOaGIZfov57FJUUYac9q33
	1ZTJhWHMvfqJcbmMW4mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP10i-00GTgg-6M; Tue, 01 Mar 2022 11:49:44 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP10W-00GTe9-Ed; Tue, 01 Mar 2022 11:49:33 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id j2so26769292ybu.0;
 Tue, 01 Mar 2022 03:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CJxq8hFGZ7YgUPO3gAshsHAMHYt7CVLZZRFS388ANNA=;
 b=V6AVmqeZy1f/bTbL+s+DaCq0O/FOGV/CDQvTklr01/wY5ZrZUroJIa+XfUinfbjw4/
 XeZO+f9uCJ7TMIspvtknhohs2+2HYoP5cvUcjWdxHLKI8smpO1DXKcgbASWzOsSDcZYg
 PS0mGbWLvWNFIVaLBT0sSGSujHx365wu0Ar86+m1F6cvG5s6FZsnBHs6blRmb8GXdMaE
 G0G3fvICzeMgST8T+ZNlFgRcsxJX2fljF7JMqQ2xRMiKDK/dgwDCprHzmh16Jh2pWurG
 sGI2FXp/lDXpnqHxdzaVu+/01dxTAPMyTiRYx3Wuh3jbKcBFuwxppjo9KFGU6bwtLEXS
 5MHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CJxq8hFGZ7YgUPO3gAshsHAMHYt7CVLZZRFS388ANNA=;
 b=NvSKwuzPaJwVvw/vB2qSViYO70FHFoyuJYktSguNFIFdGbqGecPnVUtaDJXHQ8bf4N
 kVEG/fFCn4+BbF5jGwgHwMcljJVf6zC6NyK6d3063wuqzrV9XPIWKcLrALVUN2ds8xXr
 uQp/QH8OCRFnRbSPNh07sihC42x13oWpxNtJ8fH+MUDV4Y+TcXkYyzZKYi+o4pxutRAI
 p2WGwS6xMEBvsPjDYdYGlHkidKSYKvblsI1gsA8/HiAJnGYJOyy17HPnmOWeHnPRreQH
 InolZBwuuHWu+nroACLnMMyxFC8qpfwE4idl1XmAeLu2ks2DMYQT62liFlnl65iJE5Gp
 6Umg==
X-Gm-Message-State: AOAM531VeuCr3YO1Mkf6CHFv7vscqeVH8oiUDhW/A+6KE3NEXKWNuNQp
 v/A+vTNoLT8nzU/OLC/Y2s95jUr+v0bZXYsU35k=
X-Google-Smtp-Source: ABdhPJw7T5LznYqNo8yoWuelEscL8WQZsOdXOT5tE/hEZodPnEUKYv2ihEe5yfueKVrP+yKitWhMA5wCI58gim5O+6w=
X-Received: by 2002:a05:6902:143:b0:628:7cf1:f2a9 with SMTP id
 p3-20020a056902014300b006287cf1f2a9mr1723551ybh.51.1646135371065; Tue, 01 Mar
 2022 03:49:31 -0800 (PST)
MIME-Version: 1.0
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
 <c12e74b7-0bef-ac7a-20c1-2a17ddd050dd@arm.com>
In-Reply-To: <c12e74b7-0bef-ac7a-20c1-2a17ddd050dd@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 1 Mar 2022 06:49:20 -0500
Message-ID: <CAMdYzYq0A4FitRGe49fxvjbwLUCi_KGwCtfz7pmayt_dK=r32w@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
To: Robin Murphy <robin.murphy@arm.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_034932_521895_BF04D045 
X-CRM114-Status: GOOD (  24.87  )
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

On Tue, Mar 1, 2022 at 6:23 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-02-28 22:36, Peter Geis wrote:
> > The dw_mmc-rockchip driver drops a large amound of logspam constantly
> > when the cd-broken flag is enabled.
> > Set the warning to be debug ratelimited in this case.
>
> Isn't this just papering over some fundamental problem with the clock?
> If it's failing to set the expected rate for communicating with a card,
> then presumably that's an issue for correct operation in general? The
> fact that polling for a card makes a lot more of that communication
> happen seems unrelated :/

Good Morning,

This only happens when a card is not inserted, so communication cannot happen.
I found it while lighting off the SoQuartz module.
As it is pin compatible with the RPi CM4, and the CM4 does not have a
card detect line, sdmmc is non functional without cd-broken.
This led to the fun spew when there wasn't a card inserted as this
function is called every poll tick.

Thanks,
Peter

>
> Robin.
>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >   drivers/mmc/host/dw_mmc-rockchip.c | 9 +++++++--
> >   1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> > index 95d0ec0f5f3a..d0ebf0afa42a 100644
> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > @@ -50,8 +50,13 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
> >               cclkin = ios->clock * RK3288_CLKGEN_DIV;
> >
> >       ret = clk_set_rate(host->ciu_clk, cclkin);
> > -     if (ret)
> > -             dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> > +     if (ret) {
> > +             /* this screams when card detection is broken */
> > +             if (host->slot->mmc->caps & MMC_CAP_NEEDS_POLL)
> > +                     dev_dbg_ratelimited(host->dev, "failed to set rate %uHz\n", ios->clock);
> > +             else
> > +                     dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> > +     }
> >
> >       bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
> >       if (bus_hz != host->bus_hz) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
