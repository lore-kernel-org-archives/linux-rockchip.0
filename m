Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8491BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 12:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSdt+TxCzvEn58BRaV8A5gE4dRmW437aArQ+uVl1AKY=; b=0X1f5stjJUdKnP
	Iragq1CdNb6Xmp/P32QJ57FIaf4FtTurcD+TfyI5vXgWe6Yge2/J0D4s7LNRfbac1B+vphsrFtd2D
	FNr4HvFbcaUacTkcGvdpHr/lk8TGWOxFqFCQN56w4wzQY1DptJx/2HMYZcmm3IFGfIuOijGUgy+Pw
	yHwteXW6z+QItN+umWiF/RBs9GaIKKgE7MPT2EFnvdiigef2w2QYS6PmPueXdNujJ6cz3aQNVR8Qt
	3yooWqQS3hJ4CpfAEU5kHHummylKITz9zdN5hFTnOEVfKosHwi/fH4ZHyfGgiMOA3Eg4VwvUg6FTM
	1c8bSg/WCOMHoMvVMYpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA9dM-005ID4-7S; Wed, 19 Jan 2022 12:00:12 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA9dI-005IBk-SZ
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 12:00:10 +0000
Received: by mail-ed1-x530.google.com with SMTP id j23so4944453edp.5
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 04:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8BZXEWpLZHNGFLnHvF+VUrdwjsLd9cNgSucSnPROzJ4=;
 b=OzbGVXBL5geph+h5UpYKQFMaYOvOFUNOW9r1GtHvF42MqCILSEJuzWweeMYMiVywz2
 HIWYHcUvDh8D1JM1GPIIqNL+UYPrBNH/BN0Vx+hhuAGi8Rd/QYIjii/K81k0nSBGY9qg
 tEdOi9gydP/ZKVyHMhD5nflgNWmoOZ7EC4sRylfCwNI0OjBN9xqW8/fOuBaNXFFHDevA
 TDloC4Lcx9EsoIL0rl+Vq05B6PQLVDuFpLcBbEG6f6jOa1KsyGRDyuIfg+eiyizj0GvX
 163UvWCZZZtx7r6z9TIn0lwEGPQpbvJpa9NEEtZ3NPCKKce9ZLL6B3X5/opzn/anpWK9
 HwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8BZXEWpLZHNGFLnHvF+VUrdwjsLd9cNgSucSnPROzJ4=;
 b=unco4W+A+nM+DUys9qcradecbrSZSG5xUBPAvxiMhGw3IcncVE/6Mdmjo7vKWpg+pG
 zuKBzbyb25WKSQ9nT82957GiIbPBsiatKeJ3HxAjq7bGiQjNuQQDZeVkPZ8RLGjM3zAV
 rD4CbOcWGEa2hC22oSzhs7J/gCMK36I0Ih+eHxmx+In6PNTgdui24xMyanx9ZqE1FpDL
 DOv5soJ4lysmc6v0Bstp9dJCBAteiGC2auKKpHsTrpq9PQGZLBaODnrJRBM6tjXL95qG
 A74Zn55EJjAAt308Fv4BIDcK9enwW9Asv/6cU16xNrJUu3pSVOv/dGVuOgoiGQ2KCbGV
 Y6XA==
X-Gm-Message-State: AOAM531WfAAdRavtEtQJAr7TcG2W4PHPQhIVrX6jP4d21l4xraa8G4gG
 J0zcGzxrG5INbPG4sl9xWDnbZ6/QfixVuOnehlkXkA==
X-Google-Smtp-Source: ABdhPJx698OCGgL9gobCcTHcx/x3zyqw6IuDjzeKHZeQHHEMq40nl0OIDYQzfYebVsR+hUN+VulaPBPAjUESyzV4Gqc=
X-Received: by 2002:a17:907:972a:: with SMTP id
 jg42mr25276206ejc.757.1642593607306; 
 Wed, 19 Jan 2022 04:00:07 -0800 (PST)
MIME-Version: 1.0
References: <20220107093455.73766-1-wenst@chromium.org>
 <20220107093455.73766-2-wenst@chromium.org>
 <Yecq111pZDP9XFNO@eze-laptop>
 <CAGXv+5GfNgQGJOBihdpGQDbdx-1co_wi0m=-HyxiHDn-kKZBsA@mail.gmail.com>
In-Reply-To: <CAGXv+5GfNgQGJOBihdpGQDbdx-1co_wi0m=-HyxiHDn-kKZBsA@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 19 Jan 2022 08:59:51 -0300
Message-ID: <CAAEAJfBM4d4hd1Av_TO-WVXQoUCNUckm+YHawdg6PY3urkB9nA@mail.gmail.com>
Subject: Re: [PATCH RFT v2 1/8] media: hantro: jpeg: Relax register writes
 before write starting hardware
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_040009_145930_1D2C9080 
X-CRM114-Status: GOOD (  41.17  )
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

On Wed, 19 Jan 2022 at 07:09, Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> Hi,
>
> On Wed, Jan 19, 2022 at 5:02 AM Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
> >
> > Hi Chen-Yu,
> >
> > The series looks good, thanks for picking up this task.
> >
> > Just a one comment.
> >
> > On Fri, Jan 07, 2022 at 05:34:48PM +0800, Chen-Yu Tsai wrote:
> > > In the earlier submissions of the Hantro/Rockchip JPEG encoder driver, a
> > > wmb() was inserted before the final register write that starts the
> > > encoder. In v11, it was removed and the second-to-last register write
> > > was changed to a non-relaxed write, which has an implicit wmb() [1].
> > > The rockchip_vpu2 (then rk3399_vpu) variant is even weirder as there
> > > is another writel_relaxed() following the non-relaxed one.
> > >
> > > Turns out only the last writel() needs to be non-relaxed. Device I/O
> > > mappings already guarantee strict ordering to the same endpoint, and
> > > the writel() triggering the hardware would force all writes to memory
> > > to be observed before the writel() to the hardware is observed.
> > >
> > > [1] https://lore.kernel.org/linux-media/CAAFQd5ArFG0hU6MgcyLd+_UOP3+T_U-aw2FXv6sE7fGqVCVGqw@mail.gmail.com/
> > >
> > > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > > ---
> > >  drivers/staging/media/hantro/hantro_h1_jpeg_enc.c        | 3 +--
> > >  drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c | 3 +--
> > >  2 files changed, 2 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > > index 1450013d3685..03db1c3444f8 100644
> > > --- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > > +++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> > > @@ -123,8 +123,7 @@ int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
> > >               | H1_REG_AXI_CTRL_INPUT_SWAP32
> > >               | H1_REG_AXI_CTRL_OUTPUT_SWAP8
> > >               | H1_REG_AXI_CTRL_INPUT_SWAP8;
> > > -     /* Make sure that all registers are written at this point. */
> > > -     vepu_write(vpu, reg, H1_REG_AXI_CTRL);
> > > +     vepu_write_relaxed(vpu, reg, H1_REG_AXI_CTRL);
> > >
> >
> > As far as I can remember, this logic comes from really old Chromium Kernels.
> > You might be right, and this barrier isn't needed... but then OTOH the comment
> > is here for a reason, so maybe it is needed (or was needed on some RK3288 SoC revision).
>
> I just realized that my commit log is wrong.
>
> " ... a wmb() was inserted before the final register write that starts the
> encoder. ... " . It is actually before the second-to-last register write.
>
> > I don't have RK3288 boards near me, but in any case, I'm not sure
> > we'd be able to test this easily (maybe there are issues that only
> > trigger under a certain load).
>
> I see. I do have a Veyron around that I haven't used in awhile. But as you
> said, it might not be an obvious hardware limitation.
>
> > I'd personally avoid this one change, but if you are confident enough with it
> > that's fine too.
>
> Unfortunately they didn't leave a whole lot of clues around. For most hardware,
> as I mentioned in the commit log, I think the final non-relaxed write should
> suffice. I'd point to the decoder drivers not having any barriers or
> non-relaxed writes except the final one, but IIUC they are actually two
> distinct pieces of hardware.
>
> I suspect we will never know. This JPEG encoder doesn't seem to get used
> a lot. The VP8 and H.264 encoders on ChromeOS work correctly without the
> extra barrier and get tested a lot, but that's only testing the RK3399.
>
> Hans, would it be possible for you to skip this patch and pick the rest?
> Or would you like me to resent without this one?
>

If you decide to resend, feel free to add:

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

to the whole series.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
