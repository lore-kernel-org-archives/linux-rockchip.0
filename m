Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD909E7718E
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 19:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3RAKb1nrHExJifFfDhdfXOuGV8HBTwceTjDx30Ota0=; b=RNiki95L+YakR5
	hVBlbPrD1Hi0UgpmREvvdCn2/i5mFe7DlPGDOVyfEbou/uGwGBTPgJ86ZogzA3VXm3W635ryiBr/Q
	Vkvpn+vPCteh4kmNCSGldylPIW2WWEY0wq5nIpzReg+pLnOwDvr+npI+RZ8GE97c23SnoEf3X0uie
	a5qJH+rVceDUGYdYZE7a96TY4oFreykpvVGPEch2+/RK7kfQKKabOJaanmBhWe6+vPDQR2RHfPp5b
	bz9c+O6f2OADakjaQoAyDz2jCYCpKFrlRw89oyvAMWs1sOa0w3dQVmkX5fZLk8nX2LIx3PdExkSFR
	MFPvSfduxlMzAnPO9z6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOiUs-00000005tQC-0qMh;
	Fri, 20 Dec 2024 19:17:14 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOiTh-00000005tB7-3XAv
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 19:16:03 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5401c68b89eso2537950e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2024 11:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734722160; x=1735326960; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LVhGdRV7+tmpOWeS9zvGkR7uXA0VR0Po2tyiFNSf/dY=;
        b=seDlzxte2SmeOen7jOJLlnZCcGcg3P2SI70rlQUsAaWIrmzBVpd56TX36VSXxNgnpH
         TZOFnIib2fVI8geLjS76wDsxBo8xoCtYAmhH1McO68P3tPDkmWwIxIsY/lN2kvqJuP5b
         X5hRue75eakXSH4Udvg/Ru79NNyVog1epjZPsdacxh5sIENUey36PoEgA9D3nmYjedR+
         cO/pKg19nC/dtooPOe6VvbF5sVCfBHKU6Iy7wgelcd44TF/C0Y1tWcv+uELKleaI1AUI
         0FH/yNdxrVr+WF9f8PK46NVX9A5teSQYxiDDDwhwzqIKebLDWp9d8AXRGjb672c1P4XB
         P80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722160; x=1735326960;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVhGdRV7+tmpOWeS9zvGkR7uXA0VR0Po2tyiFNSf/dY=;
        b=eaJpRm6La5AvHHhuTQoFNOFJwWTamKQXJ00wbd5pWUVv2af3zMfWZhFe3oGuh0D+Ws
         35GoCMMKmDmP4HdL/WuQKqd2dS+i0M8vc+1NjwV1zcfBgYaXhugl56DQLPYT13K3RdBf
         DEUVBnTyRY0GPCj3liPL708XcXkoEsMQzDnapis5HzNq0H3ObioyxtR6GSy5425RGvQs
         pOerGWjYuIS4WLYPdHR4sOlqLZ9vQCvUvV4BiwqtK5otrCqdDVuOnDynbrSHyAC4aLr8
         xb8FxyTy/8sAIT3Yv/f06OlSA7BETioXBjNKeow+SsbarrVPw1M+6ZohBZUv05+OAV6U
         aDpg==
X-Forwarded-Encrypted: i=1; AJvYcCXfEJHBpxf9RgnZO/lSWVGkXwp51zTMwpmt9rK/oX7sPjE21KOMLHIM5baiHVwBxd/oFKqyHYpV7m25TPPJog==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBYOikr7/2vuLlahjyhhJ0kG1cv+Yj8dGlIAgR9RVLUmKvfq8r
	BkF4sUcgQG94iK1XicLjtLDbI4cAWc25/ul07qMJMdcSVRHvUv0Nylors4NzXno=
X-Gm-Gg: ASbGncv3JYzxM1X4gVuef/rx3yk83iLXoBAesA5+t84USsg6eob2UJCrn2f8TsXODs2
	vk1ybImJ35HA5i/uuMk9hlCmnBOnqRXh8v1fSaUgFgd04CNrWW22cHX2HCkVjZJax/UcI5n7uJx
	0AIacyT2p1JHRKVOS2zblrDTCpq5FYfNROOwN/vZO+nmzxWEBBAQ2kic729LGtyvsEzYa99u4BU
	DXGH0N2WHQ3fZCJKhEekA62pSY4kQ8CzKv2mrgTMQTzuyT6wW1zU5GBaajLJPhnEM1KVpT4Q6OS
	Q5ANCQ62eQDGRzXkU3Mc2AgQxog0HEAV7HjR
X-Google-Smtp-Source: AGHT+IEURyWKTn2FJTwcAgejvV5qcX/pZ5aDO4aMQy2EhYkLh3O2M6VjdFgjz7JOFFtdAxgONBeT/Q==
X-Received: by 2002:a05:6512:1242:b0:540:2122:faea with SMTP id 2adb3069b0e04-542212ef59emr2889028e87.14.1734722159575;
        Fri, 20 Dec 2024 11:15:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422382fb31sm544143e87.235.2024.12.20.11.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:15:58 -0800 (PST)
Date: Fri, 20 Dec 2024 21:15:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Maxime Ripard <mripard@kernel.org>, 
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
Message-ID: <2ut2qwy2geh7f2f75wq2ttlh4xbniwow24rtnzaikit7sd5smt@nrm5wiigrrha>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
 <20241217-vivacious-chameleon-of-swiftness-f1edc4@houat>
 <CAA8EJprjCyWBNkRrc4W24uCwPtf_kxZLqNeNP8EJffbutYQ21w@mail.gmail.com>
 <20241218-wild-red-manatee-bb2a34@houat>
 <CAPY8ntDdcOXuWVgx6+cbgX5ct_-MXcE7CWDKgGP57EX6bvBLaw@mail.gmail.com>
 <CAPY8ntAnJ1YDQee=pFSDY3+EXHj4_RZ-M1NMp2C3ZDdD5DsCKA@mail.gmail.com>
 <c7qyka3hsrggqevdwdlfcanzps3z63s4joryskijlbuztacmly@tadqjm2vkj24>
 <CAPY8ntDUaFnvkjkqES4AkrzZ2z659h3w5MFSd8vW04Eh-iJ1FA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPY8ntDUaFnvkjkqES4AkrzZ2z659h3w5MFSd8vW04Eh-iJ1FA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_111601_897130_8100386A 
X-CRM114-Status: GOOD (  50.34  )
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

On Fri, Dec 20, 2024 at 03:00:47PM +0000, Dave Stevenson wrote:
> On Fri, 20 Dec 2024 at 00:45, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Thu, Dec 19, 2024 at 04:16:37PM +0000, Dave Stevenson wrote:
> > > On Wed, 18 Dec 2024 at 14:52, Dave Stevenson
> > > <dave.stevenson@raspberrypi.com> wrote:
> > > >
> > > > Hi Maxime & Dmitry
> > > >
> > > > On Wed, 18 Dec 2024 at 07:59, Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Wed, Dec 18, 2024 at 07:24:23AM +0200, Dmitry Baryshkov wrote:
> > > > > > On Tue, 17 Dec 2024 at 19:21, Maxime Ripard <mripard@kernel.org> wrote:
> > > > > > > On Tue, Dec 17, 2024 at 02:40:22AM +0200, Dmitry Baryshkov wrote:
> > > > > > > > While porting lt9611 DSI-to-HDMI bridge driver to use HDMI Connector
> > > > > > > > framework, I stumbled upon an issue while handling the Audio InfoFrames.
> > > > > > > > The HDMI codec callbacks weren't receiving the drm_atomic_state, so
> > > > > > > > there was no simple way to get the drm_connector that stayed at the end
> > > > > > > > of the bridge chain. At the same point the drm_hdmi_connector functions
> > > > > > > > expected to get drm_connector instance.
> > > > > > > >
> > > > > > > > While looking for a way to solve the issue, I stumbled upon several
> > > > > > > > deficiencies in existing hdmi_codec_ops implementations. Only few of the
> > > > > > > > implementations were able to handle codec's 'plugged' callback. One
> > > > > > > > third of the drivers didn't implement the get_eld() callback.
> > > > > > > >
> > > > > > > > Most of the issues can be solved if drm_connector handles
> > > > > > > > hdmi-audio-codec on its own, delegating functionality to the actual
> > > > > > > > implementation, be it a driver that implements drm_connector or
> > > > > > > > drm_bridge.
> > > > > > > >
> > > > > > > > Implement such high-level framework, adding proper support for Audio
> > > > > > > > InfoFrame generation to the LT9611 driver.
> > > > > > > >
> > > > > > > > Several design decisions to be kept in mind:
> > > > > > > >
> > > > > > > > - drm_connector_hdmi_codec is kept as simple as possible. It implements
> > > > > > > >   generic functionality (ELD, hotplug, registration).
> > > > > > > >
> > > > > > > > - drm_hdmi_connector sets up HDMI codec device if the connector
> > > > > > > >   is setup correspondingly (either I2S or S/PDIF is marked as
> > > > > > > >   supported).
> > > > > > > >
> > > > > > > > - drm_bridge_connector provides a way to link HDMI audio codec
> > > > > > > >   funcionality in the drm_bridge with the drm_connector_hdmi_codec
> > > > > > > >   framework.
> > > > > > > >
> > > > > > > > - It might be worth reverting the no_i2s_capture / no_spdif_capture
> > > > > > > >   bits. Only TDA889x driver sets them, while it's safe to assume that
> > > > > > > >   most of HDMI / DP devices do not support ARC / capture. I think the
> > > > > > > >   drivers should opt-in capture support rather than having to opt-out of
> > > > > > > >   it.
> > > > > > >
> > > > > > > Sorry if this isn't clear to me and I'm quite late to the party, but did
> > > > > > > you test this on vc4 with both a pi3 and pi4, or was it just compile
> > > > > > > tested?
> > > > > >
> > > > > > LT9611 is actually tested, VC4 is only compile-tested. Should I put an RFT tag?
> > > > >
> > > > > Yeah, we definitely need to test it on the pi3 (polling-based) and the
> > > > > pi4 (irq-based) at least.
> > > > >
> > > > > Dave, Maira, could you give it a try?
> > > >
> > > > I'm on it.
> > >
> > > Basic checks look OK.
> > > Pi3 and Pi4 tested, including 4k60 on Pi4 (enables scrambling). Audio
> > > works, and all the EDID parsing seems to be correct.
> > >
> > > Ideally I would like to do a couple more tests though as I had a
> > > couple of spontaneous reboots on Pi4 whilst hotplugging.
> > > Most likely it was just grounding issues, as I can't think of an
> > > obvious way for the kernel to be triggering an automatic reboot. They
> > > seemed to go away when I had enabled drm.debug=0x14, but more likely
> > > I'd connected the serial port and therefore provided another ground.
> > > Please don't hold the patches waiting on me though - I don't know when
> > > I'll have time to do them.
> >
> > Tested-by?
> 
> I'd held off hoping to get the extra testing done today, but that
> hasn't happened, and today is my last day before the Christmas break.
> So based on what I've done so far:
> 
> Tested-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

Thank you!

> 
> > >
> > >
> > > Also unrelated to this patch set, I have noted I'm getting
> > > [   60.780897] WARNING: CPU: 3 PID: 501 at
> > > drivers/gpu/drm/vc4/vc4_hvs.c:743 __vc4_hvs_stop_channel+0x148/0x164
> > > [vc4]
> > > ...
> > > [   60.781192]  __vc4_hvs_stop_channel+0x148/0x164 [vc4] (P)
> > > [   60.781212]  __vc4_hvs_stop_channel+0x40/0x164 [vc4] (L)
> > > [   60.781230]  vc4_hvs_stop_channel+0x30/0x3c [vc4]
> > > [   60.781248]  vc4_crtc_disable+0x140/0x1e8 [vc4]
> > > [   60.781266]  vc4_crtc_atomic_disable+0x98/0xb8 [vc4]
> > > [   60.781284]  disable_outputs+0x22c/0x33c [drm_kms_helper]
> > > [   60.781326]  drm_atomic_helper_commit_modeset_disables+0x1c/0x4c
> > > [drm_kms_helper]
> > > [   60.781347]  vc4_atomic_commit_tail+0x10c/0x8e4 [vc4]
> > > [   60.781364]  commit_tail+0xa0/0x188 [drm_kms_helper]
> > > [   60.781385]  drm_atomic_helper_commit+0x16c/0x180 [drm_kms_helper]
> > > [   60.781406]  drm_atomic_commit+0x88/0xc4 [drm]
> > > [   60.781500]  drm_client_modeset_commit_atomic+0x204/0x264 [drm]
> > > [   60.781553]  drm_client_modeset_commit_locked+0x5c/0x198 [drm]
> > > [   60.781603]  drm_client_modeset_commit+0x30/0x58 [drm]
> > > [   60.781652]  __drm_fb_helper_restore_fbdev_mode_unlocked+0xb4/0xe8
> > > [drm_kms_helper]
> > > [   60.781674]  drm_fb_helper_hotplug_event+0x108/0x12c [drm_kms_helper]
> > > [   60.781695]  drm_fbdev_client_hotplug+0x28/0xd4 [drm_client_lib]
> > > [   60.781700]  drm_client_dev_hotplug+0xc8/0x12c [drm]
> > > [   60.781750]  drm_connector_helper_hpd_irq_event+0x70/0xb0 [drm_kms_helper]
> > > [   60.781771]  vc4_hdmi_hpd_irq_thread+0x2c/0x3c [vc4]
> > > [   60.781790]  irq_thread_fn+0x2c/0xa8
> > > [   60.781799]  irq_thread+0x16c/0x2f4
> > > [   60.781805]  kthread+0x118/0x11c
> > > [   60.781813]  ret_from_fork+0x10/0x20
> > > On first plugging or unplugging a second monitor. I suspect that is
> > > spurious though and I'll look into it, but probably not this side of
> > > the Christmas break.
> > >
> > >   Dave
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
