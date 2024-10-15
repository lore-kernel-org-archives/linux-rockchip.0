Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81493D1F9C5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 20:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo6tjHU2YAQr2TAhhn80NqpxStEZ86N9MPPcjdEBJHw=; b=RvzVDdlXI4NJbO
	s6Ksjj52NzRYG2snvKi0lkIeyIB0uWtCJ4rVfudWIsiI9KOxId3gkyCWHVbEr1BmDVmmswGfE/gmb
	Urtf+COpxbgcLd60mkguMVgE2fdiMAIEmQhBZrPt7+FuSTXeMxXxH7qwUnP3/JxpdKzTqJIiRjCVh
	IfJ6N/sCnLdw9NHZ6/gmV+TRetgt95P+/CTn57dXcTaS+xwaSt9oj7Z+bEE6n5glJ7wEdzT0EzUIE
	IysiebFLmCbH/qJhexqEq/EvhyHnk7FwQKCzdurEl7E3+RkWrzpAub+ZAY6ZM3Eqpiqjt6uYOECFl
	kHpRZ4cImsB7/yRTvrAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nxs-00000009Uvl-3rCe;
	Tue, 15 Oct 2024 20:16:20 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nva-00000009UcJ-0Ric;
	Tue, 15 Oct 2024 20:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1729023234; x=1729282434;
	bh=oWZAEWmWn11pICS2WghDTqvtxTlwbis+AKwY8WLaaII=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=N3q2vmdCHEAzWfagD0SM+pZXcpUTWCzquQH0AbCpxZsxZolcyASpe6qALHsApCvzz
	 fMmbnbAxPk3OpMQBg5kjZKRlUVT49Kd/Yo08Q9Ny5sUbUV0jX9/xbWDIH3tL8n291d
	 GAMWj0pFpnMrQnKbeDuJFNEUkr5rlR5ZRPux5cGyrqkeEjOoHsWKg7p+hWerSWt+iS
	 RLx/sOeAee0DWR6ZDooP1b3G1A3Obq6adcwyK8XftOREDpCrmc2x7Ylg2F9IWTRvuB
	 NE/ltpZ+2dtazvzEWM4MYLC1UXGVADuQFVyrzLmaUGomvY7xeB1oTT/xo/U4P0Btk5
	 rjcTlzl9Bso6Q==
Date: Tue, 15 Oct 2024 20:13:40 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me>
In-Reply-To: <30940542.b36d.19290215124.Coremail.andyshrk@163.com>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me> <30940542.b36d.19290215124.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 932c22f934c19cba4c98a2e1488d80d40e7faf7a
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_131358_797943_38D0259F 
X-CRM114-Status: GOOD (  23.08  )
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

Hi Andy

On Tuesday, October 15th, 2024 at 2:22 PM, Andy Yan <andyshrk@163.com> wrote:

> > > > + struct vop2_video_port *vp,
> > > > + struct drm_crtc *crtc,
> > > > + struct drm_crtc_state *crtc_state)
> > > > +{
> > > > +
> > > > + if (vop2->lut_regs && crtc_state->color_mgmt_changed) {
> > > > + if (!crtc_state->gamma_lut) {
> > > > + vop2_vp_dsp_lut_disable(vp);
> > > > + return;
> > > > + }
> > > > +
> > > > + if (vop2_supports_seamless_gamma_lut_update(vop2)) {
> > > 
> > > I think it's bettery to check for rk3568/rk3566 here, the newer soc will all follow
> > > rk3588 support seamless gamma lut update.
> > 
> > I will change in the next version.
> > 
> > > > + vop2_writel(vop2, RK3568_LUT_PORT_SEL, FIELD_PREP(
> > > > + RK3588_LUT_PORT_SEL__GAMMA_AHB_WRITE_SEL,
> > > > + vp->id));
> > > > + vop2_crtc_write_gamma_lut(vop2, crtc);
> > > > + vop2_vp_dsp_lut_enable(vp);
> > > > + vop2_vp_dsp_lut_update_enable(vp);
> > > > + } else {
> > > 
> > > As for rk3566/68, we should do exclusive check here, because there is only
> > > one gamma , only one VP can use it at a time. See my comments in V3:
> > 
> > What do you mean exactly by exclusive check in this case.It's true that
> > gamma LUT is shared across video ports in rk356x but, if I correctly
> > understand, this doesn't forbid to reprogram LUT port sel and allow other
> > VP to use gamma LUT.
> 
> 
> Yes, we can reprogram LUT port sel, but we need to make sure the the dsp_lut_en bit in VPx is cleared if we
> want reprogram LUT port sel form VPx to VPy.
> 

Ok I get it now. Is such rework correct? - when gamma LUT for rk356x is
being set, instead of disabling the LUT before the gamma LUT write for the
current CRTC's video port, active video port is selected. Selection is 
based on if DSP LUT EN bit is set for particular video port. eg:
```
static struct vop2_video_port *vop2_vp_dsp_lut_get_active_vp(struct vop2 *vop2)
{
	struct vop2_video_port *vp;
	int i;
	for (i = 0; i < vop2->data->nr_vps; i++) {
		vp = &vop2->vps[i];

		if (vp->crtc.dev != NULL && vop2_vp_dsp_lut_is_enabled(vp)) {
			return vp;
		}
	}
	return NULL;
}

(...)

struct vop2_video_port *active_vp = vop2_vp_dsp_lut_get_active_vp(vop2);

if (active_vp) {
	vop2_vp_dsp_lut_disable(active_vp);
	vop2_cfg_done(active_vp);
	if (!vop2_vp_dsp_lut_poll_disable(active_vp))
		return;
}

vop2_writel(vop2, RK3568_LUT_PORT_SEL, vp->id);
vop2_crtc_write_gamma_lut(vop2, crtc);
vop2_vp_dsp_lut_enable(vp);
```


> > > > 
> > > > drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
> > > > + if (vop2->lut_regs && vp->crtc.dev != NULL) {
> > > > + const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
> > > > 
> > > > + drm_mode_crtc_set_gamma_size(&vp->crtc, vp_data->gamma_lut_len);
> > > > + drm_crtc_enable_color_mgmt(&vp->crtc, 0, false,
> > > > + vp_data->gamma_lut_len);
> > > 
> > > It seems that we can keep it in one line, the default limit of linux kernel coding style is 100 characters now.
> > 
> > Thanks. I didn't know, I will amend it.
> 
> 
> See bdc48fa11e46("checkpatch/coding-style: deprecate 80-column warning")
> 

Interesting.

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
