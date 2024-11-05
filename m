Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A6DD1269F
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 12:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48xwLVchXZI0uppgoSlNFMmpK7pXQuCOicESZZftyKQ=; b=BkduRME/s1NPtO
	wN6dUTRlMNCCTcM+HKCHDENejL4ByfgP0OutNnzcczG03mBSMXUmnw0hJqhuKt1HzSmdUWLtFCews
	6ArDwmwvJ8bP29AfX7Ug812qjREe0cmM7df3vWuEZpKeXwXNd7F+0TiXA7oG7ZJE+TkHP7BC+b1Id
	FKvS7AlKAPSSf23sJ8HP0ipwksRZ/qR/L9CI6BCRke/+n2UoXWBwyfeYJA6LwTPqO6GH3V3ONkLqs
	P885kmpwgz7wd9YU809OvlgTou9o2hGEqPo9gfUOTL8oI4qsT5xADbWPL7ZoZekbpqkCXOVOgf7PH
	PUhCsuD2/9ZKMGQczoYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8IlE-0000000H06J-1zqX;
	Tue, 05 Nov 2024 12:34:16 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8IjV-0000000Gzrr-02i6;
	Tue, 05 Nov 2024 12:32:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=OWyriM+3/blbjVLY5+oEe8o7/tf1VoT5Kih67DFYnqM=; b=h
	A7w8m2xgcx6sAp3tH4yUZVNZ1P8a5bPe45AOZTIERbgNTOuElO6A6GXHewujNf2J
	q0wf/i7sj+fL0uG7z8h+JJRLFNILczsLfxYa+xuoJgfVRI9EUh9ooKGnCe402yOQ
	QSJQ0/aUBlRQJSf6O6Sb7MzmZOI5oxrr84k5EUXXG0=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Tue, 5 Nov 2024 20:30:55 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 5 Nov 2024 20:30:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Zalewski" <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	skhan@linuxfoundation.org, "Daniel Stone" <daniel@fooishbar.org>, 
	"Dragan Simic" <dsimic@manjaro.org>, 
	"Diederik de Haas" <didi.debian@cknow.org>
Subject: Re:[PATCH v7] rockchip/drm: vop2: add support for gamma LUT
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241101185545.559090-3-pZ010001011111@proton.me>
References: <20241101185545.559090-3-pZ010001011111@proton.me>
X-NTES-SC: AL_Qu2YAvSbtkAu4ymdYOkZnEobh+Y5UcK2s/ki2YFXN5k0sibz6BkccnB8E3HH4sO2JgqSvxeyWSJl28JgcIV6XKN8wRB9hENfF8X7hcPXUq0F
MIME-Version: 1.0
Message-ID: <13b9cf0b.b341.192fc4e7fda.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jSgvCgDXP4oEECpnvIMfAA--.6392W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxaOXmcqB5x69AABss
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_043229_453349_8747E61B 
X-CRM114-Status: GOOD (  17.38  )
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


Hi Piotr,

At 2024-11-02 03:01:17, "Piotr Zalewski" <pZ010001011111@proton.me> wrote:
>Add support for gamma LUT in VOP2 driver. The implementation was inspired
>by one found in VOP1 driver. Blue and red channels in gamma LUT register
>write were swapped with respect to how gamma LUT values are written in
>VOP1. Gamma LUT port selection was added before the write of new gamma LUT
>table.
>
>If the current SoC is rk356x, check if no other CRTC has gamma LUT enabled
>in atomic_check (only one video port can use gamma LUT at a time) and
>disable gamma LUT before the LUT table write.
>
>If the current SoC isn't rk356x, "seamless" gamma lut update is performed
>similarly to how it was done in the case of RK3399 in VOP1[1]. In seamless
>update gamma LUT disable before the write isn't necessary, check if no
>other CRTC has gamma LUT enabled is also not necessary, different register
>is being used to select gamma LUT port[2] and after setting DSP_LUT_EN bit,
>GAMMA_UPDATE_EN bit is set[3].
>
>Gamma size is set and drm color management is enabled for each video port's
>CRTC except ones which have no associated device.
>
>Patch was tested on RK3566 (Pinetab2). When using userspace tools
>which set eg. constant color temperature no issues were noticed. When
>using userspace tools which adjust eg. color temperature the slight screen
>flicker is visible probably because of gamma LUT disable needed in the
>case of RK356x before gamma LUT write.
>
>Compare behaviour of eg.:
>```
>gammastep -O 3000
>```
>
>To eg.:
>```
>gammastep -l 53:23 -t 6000:3000
>```
>
>In latter case color temperature is slowly adjusted at the beginning which
>causes screen to slighly flicker. Then it adjusts every few seconds which
>also causes slight screen flicker.
>
>[1] https://lists.infradead.org/pipermail/linux-rockchip/2021-October/028132.html
>[2] https://lore.kernel.org/linux-rockchip/48249708-8c05-40d2-a5d8-23de960c5a77@rock-chips.com/
>[3] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c#L3437
>
>Helped-by: Daniel Stone <daniel@fooishbar.org>
>Helped-by: Dragan Simic <dsimic@manjaro.org>
>Helped-by: Diederik de Haas <didi.debian@cknow.org>
>Helped-by: Andy Yan <andy.yan@rock-chips.com>
>Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>

    Reviewed-by: Andy Yan <andyshrk@163.com>

>---
>
>Notes:
>    Changes in v7:
>        - Code styling changes only [6].
>
>    Changes in v6:
>        - Move gamma lut write to atomic_flush[4].
>        - In atomic_check if any other than the currently updated CRTC has
>          gamma lut enabled, return -EINVAL [5] (perform a check only if
>          device is rk356x).
>        - Instead of checking for rk3588 to determine seamless gamma
>          update availability check for rk3566/rk3568.
>        - remove null check in vop2_create_crtcs
>        - Move some code to separate functions to increase readability.
>
>    Changes in v5:
>        - Do not trigger full modeset in case seamless gamma lut update
>          isn't possible (eg. rk356x case). It was discovered that with
>          full modeset, userspace tools which adjust color temperature with
>          high frequency cause screen to go black and reduce overall
>          performance. Instead, revert to previous behaviour of lut update
>          happening in atomic_begin or (in case there is a modeset) in
>          atomic_enable. Also, add unrelated to modeset trigger
>          changes/improvements from v4 on top. Improve code readability
>          too.
>
>    Changes in v4:
>        - rework the implementation to better utilize DRM atomic updates[2]
>        - handle the RK3588 case[2][3]
>
>    Changes in v3:
>        - v3 is patch v2 "resend", by mistake the incremental patch was
>        sent in v2
>
>    Changes in v2:
>        - Apply code styling corrections[1]
>        - Move gamma LUT write inside the vop2 lock
>
>    Link to v6: https://lore.kernel.org/linux-rockchip/20241016223558.673145-2-pZ010001011111@proton.me/
>    Link to v5: https://lore.kernel.org/linux-rockchip/20241014222022.571819-4-pZ010001011111@proton.me/
>    Link to v4: https://lore.kernel.org/linux-rockchip/20240815124306.189282-2-pZ010001011111@proton.me/
>    Link to v3: https://lore.kernel.org/linux-rockchip/TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DAL
>DeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me/
>    Link to v2: https://lore.kernel.org/linux-rockchip/Hk03HDb6wSSHWtEFZHUye06HR0-9YzP5nCHx9A8_kHzWSZawDr
>U1o1pjEGkCOJFoRg0nTB4BWEv6V0XBOjF4-0Mj44lp2TrjaQfnytzp-Pk=@proton.me/
>    Link to v1: https://lore.kernel.org/linux-rockchip/ZVMxgcrtgHui9fJpnhbN6TSPhofHbbXElh241lImrzzTUl-8We
>jGpaR8CPzYhBgoqe_xj7N6En8Ny7Z-gsCr0kaFs7apwjYV1MBJJLmLHxs=@proton.me/
>
>    [1] https://lore.kernel.org/linux-rockchip/d019761504b540600d9fc7a585d6f95f@manjaro.org
>    [2] https://lore.kernel.org/linux-rockchip/CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.g
>mail.com
>    [3] https://lore.kernel.org/linux-rockchip/7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com
>    [4] https://lore.kernel.org/linux-rockchip/7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com/
>    [5] https://lore.kernel.org/linux-rockchip/CAPj87rOdQPsuH9qB_ZLfC9S=cO2noNi1mOGW0ZmQ6SHCugb9=w@mail.g
>mail.com/
>    [6] https://lore.kernel.org/linux-rockchip/6a92e23a.56c.192d5ae32d5.Coremail.andyshrk@163.com/
>
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 190 +++++++++++++++++++
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |   5 +
> 2 files changed, 195 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index 9873172e3fd3..58439ee8a52c 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -278,6 +278,15 @@ static u32 vop2_readl(struct vop2 *vop2, u32 offset)
> 	return val;
> }
> 
>+static u32 vop2_vp_read(struct vop2_video_port *vp, u32 offset)
>+{
>+	u32 val;
>+
>+	regmap_read(vp->vop2->map, vp->data->offset + offset, &val);
>+
>+	return val;
>+}
>+
> static void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
> {
> 	regmap_field_write(win->reg[reg], v);
>@@ -998,6 +1007,67 @@ static void vop2_disable(struct vop2 *vop2)
> 	clk_disable_unprepare(vop2->hclk);
> }
> 
>+static bool vop2_vp_dsp_lut_is_enabled(struct vop2_video_port *vp)
>+{
>+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
>+
>+	return dsp_ctrl & RK3568_VP_DSP_CTRL__DSP_LUT_EN;
>+}
>+
>+static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
>+{
>+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
>+
>+	dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
>+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
>+}
>+
>+static bool vop2_vp_dsp_lut_poll_disabled(struct vop2_video_port *vp)
>+{
>+	u32 dsp_ctrl;
>+	int ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl,
>+				!dsp_ctrl, 5, 30 * 1000);
>+	if (ret) {
>+		drm_err(vp->vop2->drm, "display LUT RAM enable timeout!\n");
>+		return false;
>+	}
>+
>+	return true;
>+}
>+
>+static void vop2_vp_dsp_lut_enable(struct vop2_video_port *vp)
>+{
>+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
>+
>+	dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
>+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
>+}
>+
>+static void vop2_vp_dsp_lut_update_enable(struct vop2_video_port *vp)
>+{
>+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
>+
>+	dsp_ctrl |= RK3588_VP_DSP_CTRL__GAMMA_UPDATE_EN;
>+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
>+}
>+

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
