Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CDC0C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 22:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy+/CWG3TX1qEhSEtq9ZQhevZ8Yb0AtZ9Z52SQWqMSI=; b=Yu+8ZrWNPXYHxJ
	h5V1mDVf/PPc68FEhvsem21BOcQlWTWMU9LTtb84xAJlBtYV0X7hcQPgac8ySgQeTWZJKsrPye4rl
	rhbaIr4tYQbX0YKpk8PneH9dlcm7SnE6WzzBqrVOgyYO8tPFsujR6zbC4iNCroUann8epKuKktEVw
	yW/4D3dcyCgpmoCGH8eq94NMPV2Lw6FN8s4WZ72PMMj9wNToWwFKgmKMyKlYbEAdGBt7h0eW5UeML
	urThcqy/0x/rsYPR7yQAzEPttTxJMiqmCFjPCHyzPDstV/jvGRIUq/5OS0TuDKeIzM01UqbykCbdl
	1oDIZOouCOQAU7Cvm1Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOlB7-00000005Mfs-24SC;
	Mon, 09 Jun 2025 22:41:17 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOl7O-00000005MI4-0bp8;
	Mon, 09 Jun 2025 22:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1749508640; x=1749767840;
	bh=ePwAWTLBP0goybEt9LUIGj7rug40FGOIf/8aHv/KjBQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=WrJD5m+ipdpSFadzxKB0513AbmaX9XQq4ZXwkX0b9R5PNLMlLgSklRsCqnqGmCz+B
	 l/FvELmUNanPkE9pn6163SFxF58VU5ztnU1KpG0xLGC3385+Q7m9SH5zr7D/HFHHCc
	 Hr99Mx7Xm01Q8YuABJDhPPpeg/4FrmCcSFX2sDdc9K7VEHcWkhXhZv/pqjtN9M3QqL
	 k2kvPFMdeb8ZTlmssngBovN8oQ11PhLI2Ibe1GUtTRmXzHwaY5+pbW77WPMvsnupJ2
	 4udTcopn6ZWkYH0TrRXqiZb55EFInMJVJOkBtEGvuRyjE1en5IXcVW4J0bR2hMawtS
	 QTjYTQ9YtZUXA==
Date: Mon, 09 Jun 2025 22:37:13 +0000
To: Diederik de Haas <didi.debian@cknow.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, Dang Huynh <danct12@riseup.net>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH drm-misc-next] rockchip/drm: vop2: don't check color_mgmt_changed in atomic_enable
Message-ID: <4z0y_F1ZT_xfO0-DwU-D5NwL3t3wHuGmivOB3QFjDsn0hzpz_hOeU63pRVBIgSU1j89jmYPq-TJHPqMCj3fAygwwX6IaPoVsqKqVi2jxmCc=@proton.me>
In-Reply-To: <DAH3S8O66J47.3NT18EJCXWKL9@cknow.org>
References: <20241206192013.342692-3-pZ010001011111@proton.me> <DAEVDSTMWI1E.J454VZN0R9MA@cknow.org> <mArHDRo5bhIAjG8sDOR-kM7DsVdbXxxcC8hfuEEPfUWIdMwNnSUy8ZFoLis66DFSuIEq8TrnAxUGkyo5IUTGw3AG4k3vuVVz0fsoI27BAms=@proton.me> <DAH3S8O66J47.3NT18EJCXWKL9@cknow.org>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 21961013ddd1adef816f64a8c4bc9f75454c6cf5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_153726_791164_F7598F7B 
X-CRM114-Status: GOOD (  29.21  )
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

Hi Diederik, sorry for late response

> Interesting that it also happened with drm=y.

I actually checked now and i don't have the issue with drm=y, sorry for 
misinforming you all, hopefully no one's time was wasted.

> As you're more knowledgeable then I am with this, maybe look through
> https://lists.sr.ht/~diederik/pine64-discuss/D9AM2OOLREO0.2JMAI42J06TW0@cknow.org
> 
> to see if you may spot something relevant?

Heh, I'm not that knowledgeable but I will look through it.

> > happened twice and at short interval and since this patch allows for gamma
> > LUT update regardless of color_mgmt_changed state this makes DSP CTRL GAMMA
> > LUT EN bit to be unset twice too. It seems that VOP does not like it. I
> 
> 
> Happy to see you found the cause :-)
> Do you happen to know why it was unset twice? That sounds suboptimal.

It is due to DRM modeset which can happens when CRTC (display) config changes 
"significantly". AFAIK modeset happens def. when you go out of suspend or
display timings change. I might have been fooled by serial console last time
as it does not appear to happen twice in short interval when i review the 
journal entries.

> But (IIUC) setting a bit to a value it already has causing issues,
> sounds surprising as well.

Depends on what hardware does, when you write to a register it might cause
many other things to happen and seems like for vop2 it messes something up.

I made a second patch so that the first write is not permitted but all 
subsequent are permitted (regardless of lut en state) - issue disappeared 
too. So it might be that very first write to dsp lut disable happens too 
fast (in relation to something else)?. It is not intuitive because when drm is
a module it happens usually like ~second later.

part of the log with drm=y
```
[    6.543099] rockchip-drm display-subsystem: [drm] GAMMA LUT DISABLE
```

part of the log with drm=m
```
[    7.944120] rockchip-drm display-subsystem: [drm] GAMMA LUT DISABLE
```

> > patched vop2_vp_dsp_lut_disable function so that dsp_ctrl is set only if
> > GAMMA LUT EN bit is set. I checked that this also does not break the gamma
> > lut functionality with emphasis on out-of/into suspend behavior.
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > index d0f5fea15e21..7ddf311b38c6 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > @@ -897,6 +897,9 @@ static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
> > {
> > u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
> > 
> > + if ((dsp_ctrl & RK3568_VP_DSP_CTRL__DSP_LUT_EN) == 0)
> > + return;
> > +
> > dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
> > vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> > }
> 
> 
> I built a kernel with 6.14-rc1 + this patch and can confirm the screen
> has output again :-)

cool :)
 
> > I will wait with sending a patch because maybe Andy has something to add
> > to this.
> 
> 
> Sounds like a plan. It could be that this issue surfaced an underlaying
> issue and if so, fixing that would be even better.

When i have time this week I will check on what version of the kernel i 
tested gamma lut when i sent the patches and test there.

> Thanks a lot!
> 

Thank _you_ for taking your time to do all the bisecting.

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
