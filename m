Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D043FC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 21:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHS5f1wJS5e7QUgEpTdufqQCYaZu+7FAyXLjK08Zi6s=; b=UQivQoHNW2s5sI
	FXYL+hpwuv80hplxvhy22NEThF4J0hIVrjkbynFKCAWRteVR/FoYGnoeY/EEuj1zjigWczxsK3Hac
	5u7XRjiSS762Zt2UFWnHyScmbbkcI2Qw6EhSOQnitAtMYsbu+cKdpbny5DADBUsOUMDEz+HQk5ZTE
	jf/BiST9Vxo174/XtSFaQnlKzq9lnRnpOUPYec6DSJuepCFE+qJGdXMLMs2ho/OQiewrXp3pdZpUh
	Fozqd+hQMak1GIjPIcQLz66tiyEUdyzwM09/0ZWK65vGj6EybDw762KY3Zz9lj5QaUmFhdxhY2B0z
	+martpMkVIZGtZrqu7AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYukI-0000000GZzC-3hP9;
	Tue, 30 Jul 2024 21:51:02 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYujo-0000000GZua-2vEg;
	Tue, 30 Jul 2024 21:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1722376228; x=1722635428;
	bh=RI+MO1DUmLECB6a6KqRs8Ki6aLcuzWc/MPzcype02eU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=UGz7Gj0iD8b72ONMMp3U48oCY1W36JIttlQHOkCcqR/Dc+w7CYGPg/YufXPF7KsU7
	 KrkG/ONaPjUaam0ECrUVRVP9lLELqvIRgkPZ5Wzt33lSRrR51bfosllpoWRvDYhlPM
	 i+BO6sachtnZvkwHB3zF7yfzZUPJV2YRgtzb0p4nBIo0kQ/q4WPkYFF970mcx34y7l
	 xf21DkbiDQ0LjJZKW1vcpdZBQf5oEofESJneA2veF6E5Yo+qYjnqK7wBhv6wB904lr
	 HyjJ1ZpVKiKP37xoyGxjSAGb3VNEZW+14yO/pRLreonkwfz+3mNpmelQPApyJeyPuN
	 JChuwW8z7tP7g==
Date: Tue, 30 Jul 2024 21:50:23 +0000
To: Andy Yan <andy.yan@rock-chips.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com" <hjc@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
Subject: Re: [PATCH v3] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <jmdWz62Mhq515i3Kg6STPlrgiBbmxcryXENKYO5ov3fNtDwuF3_6eeq-sC4DC5HB0BDzlCGnPNnuNQoXYgVRI9YZDiUxKlXsS_bf27IwdEo=@proton.me>
In-Reply-To: <7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com>
References: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me> <ec283a7c-845b-4c58-8d86-cdd07862a0dc@rock-chips.com> <KbOjWzFKMM_fwDora8CjaLFBHWypRP1Mk6nPzHkwNAGxFHzJIynx3W8_jyZvbygH99lRAXDdrJmdFEQuY8M2Ao-a8F42zt8no4B1DCBiQIs=@proton.me> <48249708-8c05-40d2-a5d8-23de960c5a77@rock-chips.com> <y_bpV0FizWkAqq0XPIKrauaZ07r_Ds-MnDr696Y1qFTLNiLsx7pL4C-Zsu-K9TzVBJ85L5cdkzDQOExcXXTf0owUYramMHdZd4erMRpJUXI=@proton.me> <7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: d2e110ff2b83b052d01e54318b01eb36611f3ec6
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_145033_370944_D82C30F2 
X-CRM114-Status: GOOD (  36.36  )
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

On Tuesday, July 30th, 2024 at 12:43 PM, Andy Yan <andy.yan@rock-chips.com> wrote:

> Hi Piotr,

Hi Andy

> On 7/30/24 05:20, Piotr Zalewski wrote:
> 
> > 
> > On Monday, July 29th, 2024 at 4:35 AM, Andy Yan andy.yan@rock-chips.com wrote:
> > 
> > > > > > +
> > > > > > +static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
> > > > > > + struct drm_crtc_state *old_state)
> > > > > > +{
> > > > > > + struct drm_crtc_state *state = crtc->state;
> > > > > > + struct vop2_video_port *vp = to_vop2_video_port(crtc);
> > > > > > + u32 dsp_ctrl;
> > > > > > + int ret;
> > > > > > +
> > > > > > + if (!vop2->lut_regs)
> > > > > > + return;
> > > > > > +
> > > > > > + if (!state->gamma_lut) {
> > > > > 
> > > > > What's the purpose of checking !state->gamma_lut here,
> > > > > 
> > > > > and you check it again at the end for return.
> > > > > This makes me very confused.
> > > > 
> > > > I understood it this way - since the vop2 lock is unlocked after disabling
> > > > gamma LUT, the CRTC state can change while waiting for DSP_LUT_EN bit to
> > > > be unset. With the change I sent in response to Daniel's reply, gamma LUT
> > > > state modification should now be fully atomic so there shouldn't be a need
> > > > for the second state check there anymore (if my logic is incorrect please
> > > > explain).
> > > 
> > > After reading the commit message for adding gamma control for rk3399[0] i understand
> > > what is going on here:
> > > 
> > > we should run into the if block in two cases:
> > > 
> > > (1) if the state->gamma_lut is null, we just need to disable dsp_lut and return,
> > > 
> > > this is why vop1 code check !state->gamma_lut again at the end.
> > > 
> > > (2) for platform unlinke rk3399(rk3566/8), we also need to disable dsp_lut befor we
> > > write gamma_lut data, for platform like rk3399(rk3588), we don't need do the disable,
> > > this is why vop1 code also has a !VOP_HAS_REG(vop, common, update_gamma_lut) check.
> > > 
> > > so we also need a similary check here:
> > > (1) if the state->gamma_lut is null, disable dsp lut and return directly.
> > > 
> > > (1) if the state has a gamma_lut, we shoud dsiable dsp_lut than write gamma lut data on rk3566/8,
> > > buf for rk3588, we should not disable dsp_lut before write gamma
> > > 
> > > [0]https://lists.infradead.org/pipermail/linux-rockchip/2021-October/028132.html
> > 
> > Ok I see it. So In my patch it doesn't make sense at all to check it again
> > (forgot about that extra if statement condition there, which I cut out
> > when porting to VOP2). I reworked my patch further for it to handle RK3588
> > case and to better utilize DRM atomic updates. It's contained in the
> > response to Daniel's review [1]. I experienced some problems so I'm waiting
> > for his response/comment on that.
> > 
> > Regarding RK3588, I checked RK3588 TRM v1.0 part2. In its VOP2 section I
> > found:
> > - SYS_CTRL_LUT_PORT_SEL: gamma_ahb_write_sel (seems to represent the
> > same concept as LUT_PORT_SEL in case of RK356x)
> 
> 
> We should also setting it to she VP id we want write gamma, this is used for selet
> ahb bus.
> 
> > - VOP2_POST0_DSP_CTRL: gamma_update_en (seems to represent the same
> > concept as in VOP1 in case of RK3399)
> 
> we also need to set it every time we update the gamma lut.
> 
> > - I also found dsp_lut_en but I presume it is a bug in documentation.
> 
> 
> No, it is not a bug, we should set it when we enable gamma lut, we just don't
> need to disable it before we update gamma lut.
> 
> Here is some code you can take as reference [0]
> [0]:https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c#L3437
> 

Thank you for further clarification. I will include it in the next version
of my patch.

> > Should RK3588 be handled as RK3399? (gamma LUT can be written directly but
> > gamma_update_en bit has to be set before). What about gamma_ahb_write_sel?
> > 
> > [1] https://lkml.org/lkml/2024/7/27/293
> > 

Best Regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
