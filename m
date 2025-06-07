Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D578FC61CE8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 15:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyBPfWq+aerdxCro1kAEo08j5csB7RKZMNpZhJX6bsg=; b=rFfL4X8dX0SvHx
	3CMGMlAoslp3bKT16NucLFdLlhG9QbaD3AqeQir+ymxNu+SmYV3W/QENaZhFmderkeDK2wDmM/T28
	QQTA+/vKWvtqbyXPGZE8cHQAudnhTBDWMHdRdJFiQHrC4lqs23q81CBQtqeMeEX4MwNoXs850+9ZZ
	a8W2vLdEKyZ1ULp8rhucTbvHbPkAyYxpJwA9blDOREz9uTbABMhJFxSrlBwJYINFamKWlmMfo9jgP
	cO4zxtLwaDbhOoc7RC+MJ3+PGyXHg99Zo2LxmVux1MfC5L8trGyP+xHBgYdodaScGI8evU81YiIFC
	sbJDwIXDyXSMz+wGKvDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNvX4-00000001oJg-1Z71;
	Sat, 07 Jun 2025 15:32:30 +0000
Received: from mail-24417.protonmail.ch ([109.224.244.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNvWt-00000001oIn-1jdl
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Jun 2025 15:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1749310333; x=1749569533;
	bh=gvbxnUgRFBMWdeIANvRl8BGLckj66c+EtDmClvsMtfU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=BdhtvZMVRJQEFBsaQIeeUMjlWEDt/rtSZs19jXDkD9EPgtm7gExe4UQHnESUmwq5B
	 VjikVewQf+brgldPU7fHlppj/aotNxznUHAE6VqGGpVk0Oz2DM24Jws8W9eAi/gtnL
	 3JPbO/xC30AAqiAQTN6tDtt8+cAxJBSbWKqFGxmAj96GlHKjY+f9onEQSZcdGvxaFt
	 duTjYhRLqVFmlj/8MJHWBqq/uekhJH6jRke199b+RzbFiJJVXGw1bAfS42zAP20k7w
	 NcQXN+hVVwPXqIngyrmeFoKBDCJW0Uzz3iVYHvN6e9YsYKAAMSRsamROauO0GM/t2Q
	 na1NozBdCZXdA==
Date: Sat, 07 Jun 2025 15:32:07 +0000
To: Diederik de Haas <didi.debian@cknow.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, Dang Huynh <danct12@riseup.net>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH drm-misc-next] rockchip/drm: vop2: don't check color_mgmt_changed in atomic_enable
Message-ID: <mArHDRo5bhIAjG8sDOR-kM7DsVdbXxxcC8hfuEEPfUWIdMwNnSUy8ZFoLis66DFSuIEq8TrnAxUGkyo5IUTGw3AG4k3vuVVz0fsoI27BAms=@proton.me>
In-Reply-To: <DAEVDSTMWI1E.J454VZN0R9MA@cknow.org>
References: <20241206192013.342692-3-pZ010001011111@proton.me> <DAEVDSTMWI1E.J454VZN0R9MA@cknow.org>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 352bfcde3cb3dc6da16c674e8ab61db239ac70f4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_083219_657667_EDD67CEF 
X-CRM114-Status: GOOD (  18.26  )
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

On Thursday, June 5th, 2025 at 10:13 PM, Diederik de Haas <didi.debian@cknow.org> wrote:

> Hi Piotr,
> 
> Since kernel 6.14-rc1 I have the problem that visual output is no longer
> shown on my PineTab2 and a `git bisect` pointed to this patch/commit
> as the culprit. What is important to note is that `CONFIG_DRM=m` seems
> to be required as the problem does not occur with `CONFIG_DRM=y`.
> 
> Near the end of my bisect session, something interesting occurred.
> I was booted into a 'bad' kernel (ie no visual output) and when I
> started to build my final kernel, I closed the lid of the PineTab2 which
> made it go into suspend. When my final kernel was built, I opened the
> lid again, which made it resume, to transfer my final kernel to it.
> And much to my surprise, I then did have visual output.
> When I read the (below) commit message of the 'offending' commit, it may
> not be such a surprise after all.
> 
> When I build a (new) 6.14-rc1 kernel with a revert of this commit on
> top, then I did not have the above mentioned problem, confirming this
> commit was the 'bad' commit.
> 
> I did try it on a Quartz64-B (also rk3566) and it did not have any issue
> (output via HDMI).
> I don't know what the cause for this issue is, hopefully you do.
> 

Hi Diederik,

I tested and confirmed that this happens with drm=m but also in my case 
it happened when drm=y. After some testing I found out that at boot modeset
happened twice and at short interval and since this patch allows for gamma 
LUT update regardless of color_mgmt_changed state this makes DSP CTRL GAMMA 
LUT EN bit to be unset twice too. It seems that VOP does not like it. I 
patched vop2_vp_dsp_lut_disable function so that dsp_ctrl is set only if 
GAMMA LUT EN bit is set. I checked that this also does not break the gamma 
lut functionality with emphasis on out-of/into suspend behavior.

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index d0f5fea15e21..7ddf311b38c6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -897,6 +897,9 @@ static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
 {
 	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
 
+	if ((dsp_ctrl & RK3568_VP_DSP_CTRL__DSP_LUT_EN) == 0)
+		return;
+
 	dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
 	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
 }

I will wait with sending a patch because maybe Andy has something to add 
to this.

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
