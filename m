Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7DF0C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 21:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZUUe/U9ruhRC0m8nDv3tGGg/dLgODMDtf1FUi4fE/Q=; b=NR2xLUJM82lN1K
	z70HHvgWWhmQH8l/aCovivMA1sQyMhyDZzXSkmmrSzpzzQht1qN62n9dymAyvK4g3i7eiV5DSXQUA
	OnpMzxAWAZ1FGYsbvZ3lLvLP/fZey90tSCpJxnXpOPbhFdk4VIWg5vHd8d9HrWNfLAndAaq4L7GVi
	anSzSwQIIhUqJ7BquwpR/YNyUfnwmda0nxAV/qWDA+y7s4r5tvxKqeqexW4WLAdeNazZaH/56Kwgo
	qKMjnTocHoU93wt7gkgNO2XNwt0+Dh21IkYQX8ltuBWhjJxrAwRkGWVSlfKiKs2UJwyNBEhyK8rjV
	tsh40lZutrAJ1QaIj6jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB0lE-004s0L-VG; Mon, 11 Jul 2022 21:16:08 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB0lB-004ryq-Hn
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 21:16:06 +0000
Received: by mail-ej1-x635.google.com with SMTP id os14so10950302ejb.4
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Jul 2022 14:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R0dZKbSqpa4RMujXbJGg6O0Ik7zsKtCn/44ZHpByEck=;
        b=e6FVL2N1GoCx6ewvM5xcIt8X8A6DT47CZWwxmgZ6VEhVfW/hLzx4AqmMaA8ZxTGFWS
         uYsECq9XltW1jX3WXVDCSl4hyA9wycz2iyuri01alyZn2ODyJEot44R/twY9O5rDye4a
         okyW5qblZM0/RglcNNdkRWagXv8tPsS3+AXd314ElWLjuM77zrlG4L/FF+NpVR2YLvre
         Egz2+eM0ShDiJiiv8apuJHGtKQXg0HaU7gPvRPFxF6UE4x4PTRSalTbp4Nan52wvFcYl
         c/LTWEM3iI+8HolUo3hHSptP5Ux92BrNrF/ln3ThBN9BCLSH90A3+Pd7o1pLhD6YRk89
         TP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R0dZKbSqpa4RMujXbJGg6O0Ik7zsKtCn/44ZHpByEck=;
        b=0xesVR4iyXfjjRS8kHu3KrjKcvYWGAPCOAi/B5fvnlGVDuWvEEDRasMQXpTOdMoGZs
         qOGlSnmHi9S5NnVTsZ/uIDRRA4QhQfiYVkkBvqgbLkOfiK9V7ZUDHl4Sm+sLQdeh8VqE
         +rAm8+virytNq3iZ9juHSwRv4R/R2MANKk4Tm/SD/Y64theBsvh0IUrfIejaVpM8oWWZ
         439mhdF7+E1qeD8TR2Kib6aJTw2Ay3m4A2c9C9Q7MU87h3R5xfWgPZchO8Ne6mcKmdY7
         cuJKfwuxdQNUl1rcdRiUViHGJpgJlDfPiSk7lb6FcgzK3MuGq0TKvkGumXAb8zjn15kZ
         wMjA==
X-Gm-Message-State: AJIora/CGBkxyLbHmIhWZ8rpi1AzQ3Mqq96hgN0eIh++sjtqFobdtAbH
	qMqr0XOHHZRLYjgwy69cEcZN+OmElvgDTaiOFm7NnQ==
X-Google-Smtp-Source: AGRyM1tGmmZU3SpBCKiz6GQosaxZhhIYryeBP+xKYRre/YM9KWGoV/EtlPDw7fJzN8sXY5wD80lfJtt1tOD20TpLJD0=
X-Received: by 2002:a17:906:5a5b:b0:72b:39cf:6042 with SMTP id
 my27-20020a1709065a5b00b0072b39cf6042mr13921828ejc.301.1657574163407; Mon, 11
 Jul 2022 14:16:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220706182901.78949-1-jernej.skrabec@gmail.com>
In-Reply-To: <20220706182901.78949-1-jernej.skrabec@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 11 Jul 2022 18:15:52 -0300
Message-ID: <CAAEAJfBYXXZ2CGFTQFEsBNGu8++MW=jsXNpO1F8T-K2m-jAu7A@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] media: hantro: Add 10-bit support
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-media <linux-media@vger.kernel.org>, 
	"open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_141605_610414_C4181B0C 
X-CRM114-Status: GOOD (  17.80  )
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

Jernej,

On Wed, Jul 6, 2022 at 3:29 PM Jernej Skrabec <jernej.skrabec@gmail.com> wrote:
>
> This series adds support for 10-bit format handling in Hantro driver.
> Most patches adjust postproc behaviour to be more universal. There is
> a lot of assumptions, which need to be replaced with more generalized.
>
> Tested on Allwinner H6. Tested with vp92-2-20-10bit-yuv420.webm sample,
> which produces correct checksum.
>
> Please take a look.
>

Looks really good.

Thanks for working on this.
Ezequiel

> Best regards,
> Jernej
>
> Changes fron v2:
> - rebased on media-stage/master
> - added P010 4L4 format documentation
> - added t-b and r-b tags
>
> Changes from RFC:
> - fixed typo in function name
> - removed merged patch (P010 format)
> - removed broken patch (sunxi frequency change)
> - added new patch (media: hantro: postproc: Properly calculate chroma offset)
> - added r-b from Ezequiel
>
> Ezequiel Garcia (1):
>   media: Add P010 tiled format
>
> Jernej Skrabec (6):
>   media: hantro: Support format filtering by depth
>   media: hantro: postproc: Fix buffer size calculation
>   media: hantro: postproc: Fix legacy regs configuration
>   media: hantro: postproc: Properly calculate chroma offset
>   media: hantro: Store VP9 bit depth in context
>   media: hantro: sunxi: Enable 10-bit decoding
>
>  .../media/v4l/pixfmt-yuv-planar.rst           | 18 +++++--
>  drivers/media/v4l2-core/v4l2-common.c         |  1 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          |  1 +
>  drivers/staging/media/hantro/hantro.h         |  4 ++
>  drivers/staging/media/hantro/hantro_drv.c     | 23 +++++++++
>  .../staging/media/hantro/hantro_g2_vp9_dec.c  |  8 ---
>  .../staging/media/hantro/hantro_postproc.c    | 38 +++++++++++---
>  drivers/staging/media/hantro/hantro_v4l2.c    | 50 +++++++++++++++++--
>  drivers/staging/media/hantro/hantro_v4l2.h    |  3 ++
>  drivers/staging/media/hantro/sunxi_vpu_hw.c   | 27 ++++++++++
>  include/uapi/linux/videodev2.h                |  1 +
>  11 files changed, 151 insertions(+), 23 deletions(-)
>
> --
> 2.37.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
