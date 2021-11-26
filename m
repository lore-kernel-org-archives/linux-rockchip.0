Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85407C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 13:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmhXDsc7Aw2fimkI2dv2eA1vwIH8LTgNmLy/fJ7/WBA=; b=RaiZffc+IKdVfT
	4zMXj5rrCy8jrppcpdvXotvaZBNMGjmtQig+QwhdLdwgQXU5ZpPbdzZdkhXKyVkRVpYEgTUeH1yng
	OoTkrNkkxioq51dniPqXCSpc3nb8auB2d1qqZokO+hw1X1YVpCuFs4DDXpUaWtW2HUoGek+OstCSB
	mpYRXYNt9eLZzkIHmV3UcGregyBQfvMY/OQsoTZLeZAYSyUJoL7fGkS6cpiVQc5EJpNtChVpvZFLx
	qiwDJwIJIo2S6vVYhb1Hi/HsZyk53EEUtj6A0Had4ChPnqdLPrf6Iqp4d3pPjl5CNtFIjCnZnW3Hy
	OI7e0oO7Doi591Fl9sTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqbL4-00Abr0-Qa; Fri, 26 Nov 2021 13:32:30 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqbL1-00Abo5-Ca
 for linux-rockchip@lists.infradead.org; Fri, 26 Nov 2021 13:32:29 +0000
Received: by mail-lj1-x22d.google.com with SMTP id i63so18816287lji.3
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Nov 2021 05:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BihJj1qpi6FzzYvrNJZtab4h849IlijBgKxFTqdVcok=;
 b=lE+PYnpDr4XYfE0rLaRAQtWaz2Ks2mMu9n1rZVymx2rgHoJAITvz559plBVApGYtUZ
 5INIqFHDmCIP9B/+nDcxBK28yZiP6c8COBl7Aa0hcA5X5B3jL+HCF+3qHnaEquoLrwdz
 aMnCviANj/UutBT84isZSwj3tz8Yt4qD+Y2YOVWzf6D8AZL0xAr8lvG9Zn7JegsUqeU2
 5mn9kTy0lPf34z/6whn0mN3eQcxWdds2i+mORvr6lTpxL161CTeKsZVkyTA8WKy0G6IN
 tBGjA4e+W3F+K+thIQ7cHZRMFUNkf9qUb3Gpapa+HwOPMOXdnqeKS3cCoFqg6zJCgYUC
 532w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BihJj1qpi6FzzYvrNJZtab4h849IlijBgKxFTqdVcok=;
 b=qyEcoEFdHXsgF2xeUzSJAGXQx3fi5tOYcjKcERdHFAFHWUbnLqNPvYMVAK1nLNRM7E
 Pa/ugG56u6sl1r7Tk3+fh6Wy1Ncle7QvOB38I8Q6v/XwV20Fej45GZNTX2gS1lDmtVo5
 Ptotbg7lwLrEkaqVNtfcOog/tJki+g2PoHrMyKGSUlH0EDNGTXnKOLO4DZu8NNCQh1/q
 P3U44S8dr9qol7R//e1h8XCKL7HLGsx3IwRl3v7LiRGT0eq8bFv9B2zTO03sfn00mjod
 VnZqPGbmKjAx9NLKMVinHK46I5GiPBvBvK4gY8YBtOBM1mWA24pCRsvT535/QlSfpMIo
 8dEA==
X-Gm-Message-State: AOAM532d3pQ9iUziyIbGeswBuxTsFpAwAu2BYfzUn23ESqfApIeA8wxk
 8x4bQUzkpckuFWgKhGkzlwJPtBMNHgH3HiC6gB2HhQ==
X-Google-Smtp-Source: ABdhPJzywiDDQKC6yFc3WwKw4jiKbh02+WUllDWYJLGKGv2knX9b5u54YH9Xh2KPDV4cD5Ewh2BWBkykMbYrS9LL70c=
X-Received: by 2002:a2e:a22a:: with SMTP id i10mr31783402ljm.16.1637933539553; 
 Fri, 26 Nov 2021 05:32:19 -0800 (PST)
MIME-Version: 1.0
References: <20211124184603.3897245-1-john@metanate.com>
 <CAPDyKFr=ok3uKXS8bWtZPvyLOeA2cF_4Z2c7ROcoMfBF2G1uhA@mail.gmail.com>
In-Reply-To: <CAPDyKFr=ok3uKXS8bWtZPvyLOeA2cF_4Z2c7ROcoMfBF2G1uhA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 26 Nov 2021 14:31:43 +0100
Message-ID: <CAPDyKFo8c51KR+1ju+WCp2xk7_uYKzS+_vBjWxnB7Y3zGYasFg@mail.gmail.com>
Subject: Re: [PATCH 0/4] mmc: dw_mmc: start deprecating mshcN aliases
To: John Keeping <john@metanate.com>
Cc: linux-mmc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_053227_461505_45D70594 
X-CRM114-Status: GOOD (  24.02  )
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

On Wed, 24 Nov 2021 at 20:24, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 24 Nov 2021 at 19:46, John Keeping <john@metanate.com> wrote:
> >
> > This series is prompted by discussion on a previous patch set [1] but is
> > a totally different approach and only a partial solution.
> >
> > With these patches, the dependency on the mshcN alias is totally removed
> > from dw_mmc-hi3798cv200 and dw_mmc-rockchip and dw_mmc-exynos moves
> > towards being able to consider the mshcN aliases deprecated.
> >
> > I haven't changed dw_mci_hi6220_caps here, although it looks like it's
> > possible to apply MMC_CAP_CMD23 to all controllers there with no change
> > in behaviour as the final entry is SDIO for which CMD23 is not
> > applicable IIUC.  But I'm not familiar with that hardware and don't feel
> > confident making that change.
> >
> > [1] https://lore.kernel.org/all/20211116190244.1417591-1-john@metanate.com/
> >
> > John Keeping (4):
> >   mmc: dw_mmc: add common capabilities to replace caps
> >   mmc: dw_mmc: hi3798cv200: use common_caps
> >   mmc: dw_mmc: rockchip: use common_caps
> >   mmc: dw_mmc: exynos: use common_caps
> >
> >  drivers/mmc/host/dw_mmc-exynos.c      |  9 +++++----
> >  drivers/mmc/host/dw_mmc-hi3798cv200.c |  9 +--------
> >  drivers/mmc/host/dw_mmc-rockchip.c    | 11 +----------
> >  drivers/mmc/host/dw_mmc.c             |  3 +++
> >  drivers/mmc/host/dw_mmc.h             |  3 +++
> >  5 files changed, 13 insertions(+), 22 deletions(-)
> >
> > --
> > 2.34.0
> >
>
> This looks good to me, I intend to apply this later this week, unless
> objections of course.
>
> In the meantime, I will continue to look at what we can do to resolve
> the exynos/k3 issues around this.

Let's consider additional changes to be on top of this, as this is
certainly a nice step forward.

So, applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
