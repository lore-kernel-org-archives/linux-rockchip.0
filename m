Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084F6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 19:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2hftyy2V7l/0i9HGvCjlSwsOOYwfS/eKFrBvPWPs7g=; b=v104bDUb2j19AL
	uDxDAlZtzIB8+gyEULfYZFvSC7761OUTQASYJyKdl71K7VXdWfoD2fkalFIxhjzlp37xi9wU+j8N0
	osr9dCVNzXQcXWi5FE81iskEFHriCQbIctkMPiX6OjzKSTerw3+pO/Q3s2t1dZGfA8lYIJlefgBFc
	OZH/48CIAvTQU7WZAgYGEJyCCUN76YifzGPB4hRPHvm5wheTu/+gpOLxXa7RtHG+2vMbOxddHbaxc
	RFZXCiC4rBeKbaBiaUy8G9Quz1xR6cPFhEB7bohjEDL9IJQR/wFaYSY1Ao6mBYx8QhV35wOjBlYQ2
	xjecbThR1tPgoQEPlMJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxu1-005fDw-8e; Wed, 24 Nov 2021 19:25:57 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxtg-005f5q-7N
 for linux-rockchip@lists.infradead.org; Wed, 24 Nov 2021 19:25:37 +0000
Received: by mail-lf1-x131.google.com with SMTP id r26so9978417lfn.8
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Nov 2021 11:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KeS8gzA/xfPhh34ugNpumxJ4yVD03DKGSAXtYcv0CNY=;
 b=SAc/SLcjr/Co2yuN16R4GlaVzZSj3SGoLB+z8GEtc5h3aU8zidJIe+uJIfa5Bt3D1m
 nuadLC4dAavDlWMr1PeQuweQd+2WdTckNNsIconSEReAJErSpN6N4gfv9qVsidgXYX4W
 DgLzz9OtmsjjUCln49Mp1puk5J/PS0oP5pNQGW6/PODbWKgIQA2683kIWTMVDF2u1GaU
 zUk/hBrZv/Y5JYpAKGEZV59d7yKkGNXiC8ECZpl5WSyDCfVqbJatNNvZekBqH872CrLv
 DnkBT6Ag/Y+r1nbhQmm3dynY5ZAPZOqTB78XiVuqR4zUUwyampX0urGluugIt56Dj2tu
 WlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KeS8gzA/xfPhh34ugNpumxJ4yVD03DKGSAXtYcv0CNY=;
 b=W8fuQy9/X/jHY7zgaoYfEAEUF/qlkS36Yqs8QflS5oT8gXc0JYcFDPtmD6KgysfxjJ
 5TdsPUn+go0+j4CQn3CgRVyLHRgncXD9u90hDO9pEZ15EXYYGOIcN70unLyBc/6Y8pwg
 tsLyAqmu52FYcFQJjolQQiJC3Zcq43ozhMx8epmPRbKNj23BLw4Fn3l20ecSNZtD8iTS
 jIUH65KzdOxrKYtUD2Nl4Qa7GACgUwwjalsavZZV5q/xR9S6bEe5KqVa2OTatvmFnMEi
 aUKAZk8IU1R25SMSFxBJG1PsHqD+E44Br36BFso1jF3wSBUMXTqNherQR3XEQbv9eAEO
 GV0A==
X-Gm-Message-State: AOAM531SnfoVs7Qgo/u6MBUssQGvwj5IL9ksJwXY5DGVivt2lh2HuEB7
 47siTR5vrJRMUM7hdjCC6YfTO8Y98R07bwHZUIgLyA==
X-Google-Smtp-Source: ABdhPJzSEYCURJSiTw//vdik61HAkzTY0+VAOHaDC/VmX4bo1DEpc6xicGzGrpeh42Ukrn7jGcsGzS4EiBrSWD3re9Y=
X-Received: by 2002:ac2:5a46:: with SMTP id r6mr18103844lfn.358.1637781932136; 
 Wed, 24 Nov 2021 11:25:32 -0800 (PST)
MIME-Version: 1.0
References: <20211124184603.3897245-1-john@metanate.com>
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 24 Nov 2021 20:24:56 +0100
Message-ID: <CAPDyKFr=ok3uKXS8bWtZPvyLOeA2cF_4Z2c7ROcoMfBF2G1uhA@mail.gmail.com>
Subject: Re: [PATCH 0/4] mmc: dw_mmc: start deprecating mshcN aliases
To: John Keeping <john@metanate.com>
Cc: linux-mmc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_112536_306750_EB05DC08 
X-CRM114-Status: GOOD (  19.00  )
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

On Wed, 24 Nov 2021 at 19:46, John Keeping <john@metanate.com> wrote:
>
> This series is prompted by discussion on a previous patch set [1] but is
> a totally different approach and only a partial solution.
>
> With these patches, the dependency on the mshcN alias is totally removed
> from dw_mmc-hi3798cv200 and dw_mmc-rockchip and dw_mmc-exynos moves
> towards being able to consider the mshcN aliases deprecated.
>
> I haven't changed dw_mci_hi6220_caps here, although it looks like it's
> possible to apply MMC_CAP_CMD23 to all controllers there with no change
> in behaviour as the final entry is SDIO for which CMD23 is not
> applicable IIUC.  But I'm not familiar with that hardware and don't feel
> confident making that change.
>
> [1] https://lore.kernel.org/all/20211116190244.1417591-1-john@metanate.com/
>
> John Keeping (4):
>   mmc: dw_mmc: add common capabilities to replace caps
>   mmc: dw_mmc: hi3798cv200: use common_caps
>   mmc: dw_mmc: rockchip: use common_caps
>   mmc: dw_mmc: exynos: use common_caps
>
>  drivers/mmc/host/dw_mmc-exynos.c      |  9 +++++----
>  drivers/mmc/host/dw_mmc-hi3798cv200.c |  9 +--------
>  drivers/mmc/host/dw_mmc-rockchip.c    | 11 +----------
>  drivers/mmc/host/dw_mmc.c             |  3 +++
>  drivers/mmc/host/dw_mmc.h             |  3 +++
>  5 files changed, 13 insertions(+), 22 deletions(-)
>
> --
> 2.34.0
>

This looks good to me, I intend to apply this later this week, unless
objections of course.

In the meantime, I will continue to look at what we can do to resolve
the exynos/k3 issues around this.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
