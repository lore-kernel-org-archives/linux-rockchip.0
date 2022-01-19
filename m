Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6B5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 10:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSp8wTnhFRaar598kkU4BQySiHBLdE+8fHbAKc8l7T0=; b=Hn9Tk+qQ6yZgRk
	Bwr4oFU57PKdJfQRjrkHhY6gsj7/g2wE0sXPgycZCfUnvyTbamfKb3y7oE4yey5UkzH3zMBoyuOOR
	JqpwuhbExTbmvvpfqrZPm2vgW7KenBLTo1AEjsfVhg8WnyzJHl7nrVbAL1nB3zlkmT7A7mjoQ7DFq
	xEgMdgGV03EmjSzttqq8wcVSJWlaaYaWCu9tz87H/86C1FNHolxwyHmvzn5GrNtyjE3rqrCkBczlo
	eMSjnd52tbpTW+ZvJzPnRtesmftVlrREV1f+1hUbX1KStK7F1CD+cU5/gg4AHZe8+xlvvr0IJ0Ra+
	7g/hIKFWAHmKmzsi/xfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA7tx-004oic-Hp; Wed, 19 Jan 2022 10:09:13 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA7tu-004ogE-55
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 10:09:11 +0000
Received: by mail-lf1-x130.google.com with SMTP id x7so7221235lfu.8
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 02:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mp8cMbcJDEiYzY+0yULuk+0IcGw5L33ZvIFmWfHUqAU=;
 b=CQvRhkfnbC+xD8QF/rVpqr3rywffgrz1rcm8TJg2p+6bTu3kG30nI17/JHEnfynDsf
 I8kq5s8xsY/LoxUk82328JCQ29XQ0FWGLnpoTGfWTP7M4F8bBb+2vTWmj4KT2oaiAWCF
 z853+DhFFiedtMMyOhmrHprbwX9L0OWxfRbCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mp8cMbcJDEiYzY+0yULuk+0IcGw5L33ZvIFmWfHUqAU=;
 b=F2G/cc2oJuQyPrA9YzGGb0sfsmkIcb6IPw1r06irMlx3/kdeAAe/gEC35QGDP9xPZD
 uSvtg7ZVol1ukvJW5iyEv0QGJV3fOBb8iH2feYTzvLze38N61dklHs9gle1XGqQRJ0fq
 dCo5sRauDMNmmwYw0Pma6hDk+6M9PTCnOh1H3dIfkIxR3pUkY3cjTRSDiOMBjSqesKcL
 smWZPxPUMu9KdJXTuA0tsCESCzrwYeJ/B2JLgqI9+fIcKBkJHwa6R3iHH6QlouxHQVz5
 SKPuIyOYmUKaeLTh0e8jyRwyLmOqpx2YZ+4k2q330Rc6eYLPMnXFvB4bVK/E4CqJDoYT
 BBPQ==
X-Gm-Message-State: AOAM531CJOHuBSleIWQ3ItsC3+i4rvMt/nkyqWTElbwAhYicHPNy1qhM
 s1Im3HfNV4m4fm5E7a1zvBNF2DSyBwWfSuIfCRbsAA==
X-Google-Smtp-Source: ABdhPJzzCt9OqNfhyesxI3ZvR/vgllDW+/NJmVfRwMNDy+lAtRJIOv/McQhcCJ+BEdYu/p5s21P0oPy1na3quUG/R40=
X-Received: by 2002:a2e:2285:: with SMTP id
 i127mr13773495lji.414.1642586948036; 
 Wed, 19 Jan 2022 02:09:08 -0800 (PST)
MIME-Version: 1.0
References: <20220107093455.73766-1-wenst@chromium.org>
 <20220107093455.73766-2-wenst@chromium.org>
 <Yecq111pZDP9XFNO@eze-laptop>
In-Reply-To: <Yecq111pZDP9XFNO@eze-laptop>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Jan 2022 18:08:57 +0800
Message-ID: <CAGXv+5GfNgQGJOBihdpGQDbdx-1co_wi0m=-HyxiHDn-kKZBsA@mail.gmail.com>
Subject: Re: [PATCH RFT v2 1/8] media: hantro: jpeg: Relax register writes
 before write starting hardware
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_020910_262947_87677826 
X-CRM114-Status: GOOD (  33.94  )
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

Hi,

On Wed, Jan 19, 2022 at 5:02 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Chen-Yu,
>
> The series looks good, thanks for picking up this task.
>
> Just a one comment.
>
> On Fri, Jan 07, 2022 at 05:34:48PM +0800, Chen-Yu Tsai wrote:
> > In the earlier submissions of the Hantro/Rockchip JPEG encoder driver, a
> > wmb() was inserted before the final register write that starts the
> > encoder. In v11, it was removed and the second-to-last register write
> > was changed to a non-relaxed write, which has an implicit wmb() [1].
> > The rockchip_vpu2 (then rk3399_vpu) variant is even weirder as there
> > is another writel_relaxed() following the non-relaxed one.
> >
> > Turns out only the last writel() needs to be non-relaxed. Device I/O
> > mappings already guarantee strict ordering to the same endpoint, and
> > the writel() triggering the hardware would force all writes to memory
> > to be observed before the writel() to the hardware is observed.
> >
> > [1] https://lore.kernel.org/linux-media/CAAFQd5ArFG0hU6MgcyLd+_UOP3+T_U-aw2FXv6sE7fGqVCVGqw@mail.gmail.com/
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  drivers/staging/media/hantro/hantro_h1_jpeg_enc.c        | 3 +--
> >  drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c | 3 +--
> >  2 files changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > index 1450013d3685..03db1c3444f8 100644
> > --- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > +++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > @@ -123,8 +123,7 @@ int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
> >               | H1_REG_AXI_CTRL_INPUT_SWAP32
> >               | H1_REG_AXI_CTRL_OUTPUT_SWAP8
> >               | H1_REG_AXI_CTRL_INPUT_SWAP8;
> > -     /* Make sure that all registers are written at this point. */
> > -     vepu_write(vpu, reg, H1_REG_AXI_CTRL);
> > +     vepu_write_relaxed(vpu, reg, H1_REG_AXI_CTRL);
> >
>
> As far as I can remember, this logic comes from really old Chromium Kernels.
> You might be right, and this barrier isn't needed... but then OTOH the comment
> is here for a reason, so maybe it is needed (or was needed on some RK3288 SoC revision).

I just realized that my commit log is wrong.

" ... a wmb() was inserted before the final register write that starts the
encoder. ... " . It is actually before the second-to-last register write.

> I don't have RK3288 boards near me, but in any case, I'm not sure
> we'd be able to test this easily (maybe there are issues that only
> trigger under a certain load).

I see. I do have a Veyron around that I haven't used in awhile. But as you
said, it might not be an obvious hardware limitation.

> I'd personally avoid this one change, but if you are confident enough with it
> that's fine too.

Unfortunately they didn't leave a whole lot of clues around. For most hardware,
as I mentioned in the commit log, I think the final non-relaxed write should
suffice. I'd point to the decoder drivers not having any barriers or
non-relaxed writes except the final one, but IIUC they are actually two
distinct pieces of hardware.

I suspect we will never know. This JPEG encoder doesn't seem to get used
a lot. The VP8 and H.264 encoders on ChromeOS work correctly without the
extra barrier and get tested a lot, but that's only testing the RK3399.

Hans, would it be possible for you to skip this patch and pick the rest?
Or would you like me to resent without this one?


Thanks
ChenYu

> Thanks!
> Ezequiel
>
> >       reg = H1_REG_ENC_CTRL_WIDTH(MB_WIDTH(ctx->src_fmt.width))
> >               | H1_REG_ENC_CTRL_HEIGHT(MB_HEIGHT(ctx->src_fmt.height))
> > diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> > index 4df16f59fb97..b931fc5fa1a9 100644
> > --- a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> > +++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> > @@ -152,8 +152,7 @@ int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx)
> >               | VEPU_REG_INPUT_SWAP8
> >               | VEPU_REG_INPUT_SWAP16
> >               | VEPU_REG_INPUT_SWAP32;
> > -     /* Make sure that all registers are written at this point. */
> > -     vepu_write(vpu, reg, VEPU_REG_DATA_ENDIAN);
> > +     vepu_write_relaxed(vpu, reg, VEPU_REG_DATA_ENDIAN);
> >
> >       reg = VEPU_REG_AXI_CTRL_BURST_LEN(16);
> >       vepu_write_relaxed(vpu, reg, VEPU_REG_AXI_CTRL);
> > --
> > 2.34.1.575.g55b058a8bb-goog
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
