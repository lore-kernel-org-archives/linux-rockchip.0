Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D518C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjT6PouS5oZHWj8nN3DluLaPhFChygJMhR0XGXRpax0=; b=ntCzAessA990jh
	DMtsgXqhgVCqYYzBGRUU1BaUmRCwu6IcKGVDyOa5euRuRw3A4Z4/n2SoFnwll8tFLotmzixi9XFCs
	dhUwKQ6hBiZruTE1Zm0I26VGmhNexeXgWUnGAGFYPbmWKiauoBq3e0kj4tYk9si+8ay4ATL+JO3Bw
	ds/x0/eYb3YtYi7fsXwPbRmij36q/+NmPnCplVnrQRAO4kTP1Dp0LX8bFu7otzsE53CVQL8wcB/I8
	czgZKnRdQT3v+boSd2Tkrar6dSDD7fmms/KlVlrzhTF0orV06LL5DtdHZwGFXzBUQcTAigRO5ibCr
	bABFucguve19w75ud4JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Ych-00230O-2H;
	Mon, 27 Nov 2023 10:13:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Ycc-0022xf-1y
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 10:13:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7YcY-0008C0-6K; Mon, 27 Nov 2023 11:13:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7YcU-00Bv3P-0I; Mon, 27 Nov 2023 11:13:38 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7YcT-0044Za-TW; Mon, 27 Nov 2023 11:13:37 +0100
Date: Mon, 27 Nov 2023 11:13:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 11/12] drm/rockchip: vop2: Add debugfs support
Message-ID: <20231127101337.GU3359458@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125601.3455031-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125601.3455031-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_021346_884210_B397FBFE 
X-CRM114-Status: GOOD (  37.05  )
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

On Wed, Nov 22, 2023 at 08:56:01PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> /sys/kernel/debug/dri/vop2/summary:  dump vop display state
> /sys/kernel/debug/dri/vop2/regs: dump whole vop registers
> /sys/kernel/debug/dri/vop2/active_regs: only dump the registers of
> activated modules
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 399 +++++++++++++++++++
>  1 file changed, 399 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 9eecbe1f71f9..4a2342209c15 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -27,6 +27,7 @@
>  #include <drm/drm_debugfs.h>
>  #include <drm/drm_flip_work.h>
>  #include <drm/drm_framebuffer.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
>  
> @@ -187,6 +188,7 @@ struct vop2 {
>  	 */
>  	u32 registered_num_wins;
>  
> +	struct resource *res;
>  	void __iomem *regs;
>  	struct regmap *map;
>  
> @@ -228,6 +230,44 @@ struct vop2 {
>  #define vop2_output_if_is_lvds(x)	(x == ROCKCHIP_VOP2_EP_LVDS0 || x == ROCKCHIP_VOP2_EP_LVDS1)
>  #define vop2_output_if_is_dpi(x)	(x == ROCKCHIP_VOP2_EP_RGB0)
>  
> +struct vop2_regs_dump {
> +	const char *name;
> +	u32 base;
> +	u32 en_reg;
> +	u32 en_val;
> +	u32 en_mask;
> +};
> +
> +/*
> + * bus-format types.
> + */
> +struct drm_bus_format_enum_list {
> +	int type;
> +	const char *name;
> +};
> +
> +static const struct drm_bus_format_enum_list drm_bus_format_enum_list[] = {
> +	{ DRM_MODE_CONNECTOR_Unknown, "Unknown" },
> +	{ MEDIA_BUS_FMT_RGB565_1X16, "RGB565_1X16" },
> +	{ MEDIA_BUS_FMT_RGB666_1X18, "RGB666_1X18" },
> +	{ MEDIA_BUS_FMT_RGB666_1X24_CPADHI, "RGB666_1X24_CPADHI" },
> +	{ MEDIA_BUS_FMT_RGB666_1X7X3_SPWG, "RGB666_1X7X3_SPWG" },
> +	{ MEDIA_BUS_FMT_YUV8_1X24, "YUV8_1X24" },
> +	{ MEDIA_BUS_FMT_UYYVYY8_0_5X24, "UYYVYY8_0_5X24" },
> +	{ MEDIA_BUS_FMT_YUV10_1X30, "YUV10_1X30" },
> +	{ MEDIA_BUS_FMT_UYYVYY10_0_5X30, "UYYVYY10_0_5X30" },
> +	{ MEDIA_BUS_FMT_RGB888_3X8, "RGB888_3X8" },
> +	{ MEDIA_BUS_FMT_RGB888_1X24, "RGB888_1X24" },
> +	{ MEDIA_BUS_FMT_RGB888_1X7X4_SPWG, "RGB888_1X7X4_SPWG" },
> +	{ MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA, "RGB888_1X7X4_JEIDA" },
> +	{ MEDIA_BUS_FMT_UYVY8_2X8, "UYVY8_2X8" },
> +	{ MEDIA_BUS_FMT_YUYV8_1X16, "YUYV8_1X16" },
> +	{ MEDIA_BUS_FMT_UYVY8_1X16, "UYVY8_1X16" },
> +	{ MEDIA_BUS_FMT_RGB101010_1X30, "RGB101010_1X30" },
> +	{ MEDIA_BUS_FMT_YUYV10_1X20, "YUYV10_1X20" },
> +};
> +static DRM_ENUM_NAME_FN(drm_get_bus_format_name, drm_bus_format_enum_list)
> +
>  static const struct regmap_config vop2_regmap_config;
>  
>  static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
> @@ -2487,6 +2527,363 @@ static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
>  	.atomic_disable = vop2_crtc_atomic_disable,
>  };
>  
> +static void vop2_dump_connector_on_crtc(struct drm_crtc *crtc, struct seq_file *s)
> +{
> +	struct drm_connector_list_iter conn_iter;
> +	struct drm_connector *connector;
> +
> +	drm_connector_list_iter_begin(crtc->dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		if (crtc->state->connector_mask & drm_connector_mask(connector))
> +			seq_printf(s, "    Connector: %s\n", connector->name);
> +
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
> +static int vop2_plane_state_dump(struct seq_file *s, struct drm_plane *plane)
> +{
> +	struct vop2_win *win = to_vop2_win(plane);
> +	struct drm_plane_state *pstate = plane->state;
> +	struct drm_rect *src, *dst;
> +	struct drm_framebuffer *fb;
> +	struct drm_gem_object *obj;
> +	struct rockchip_gem_object *rk_obj;
> +	bool xmirror;
> +	bool ymirror;
> +	bool rotate_270;
> +	bool rotate_90;
> +	dma_addr_t fb_addr;
> +	int i;
> +
> +	seq_printf(s, "    %s: %s\n", win->data->name, pstate->crtc ? "ACTIVE" : "DISABLED");
> +	if (!pstate || !pstate->fb)
> +		return 0;
> +
> +	fb = pstate->fb;
> +	src = &pstate->src;
> +	dst = &pstate->dst;
> +	xmirror = pstate->rotation & DRM_MODE_REFLECT_X ? true : false;
> +	ymirror = pstate->rotation & DRM_MODE_REFLECT_Y ? true : false;
> +	rotate_270 = pstate->rotation & DRM_MODE_ROTATE_270;
> +	rotate_90 = pstate->rotation & DRM_MODE_ROTATE_90;
> +
> +	seq_printf(s, "\twin_id: %d\n", win->win_id);
> +
> +	seq_printf(s, "\tformat: %p4cc%s glb_alpha[0x%x]\n",
> +		   &fb->format->format,
> +		   drm_is_afbc(fb->modifier) ? "[AFBC]" : "",
> +		   pstate->alpha >> 8);
> +	seq_printf(s, "\trotate: xmirror: %d ymirror: %d rotate_90: %d rotate_270: %d\n",
> +		   xmirror, ymirror, rotate_90, rotate_270);
> +	seq_printf(s, "\tzpos: %d\n", pstate->normalized_zpos);
> +	seq_printf(s, "\tsrc: pos[%d, %d] rect[%d x %d]\n", src->x1 >> 16,
> +		   src->y1 >> 16, drm_rect_width(src) >> 16,
> +		   drm_rect_height(src) >> 16);
> +	seq_printf(s, "\tdst: pos[%d, %d] rect[%d x %d]\n", dst->x1, dst->y1,
> +		   drm_rect_width(dst), drm_rect_height(dst));
> +
> +	for (i = 0; i < fb->format->num_planes; i++) {
> +		obj = fb->obj[0];
> +		rk_obj = to_rockchip_obj(obj);
> +		fb_addr = rk_obj->dma_addr + fb->offsets[0];
> +
> +		seq_printf(s, "\tbuf[%d]: addr: %pad pitch: %d offset: %d\n",
> +			   i, &fb_addr, fb->pitches[i], fb->offsets[i]);
> +	}
> +
> +	return 0;
> +}
> +
> +static int vop2_crtc_state_dump(struct drm_crtc *crtc, struct seq_file *s)
> +{
> +	struct vop2_video_port *vp = to_vop2_video_port(crtc);
> +	struct drm_crtc_state *cstate = crtc->state;
> +	struct rockchip_crtc_state *vcstate;
> +	struct drm_display_mode *mode;
> +	struct drm_plane *plane;
> +	bool interlaced;
> +
> +	seq_printf(s, "Video Port%d: %s\n", vp->id, !cstate ?
> +		   "DISABLED" : cstate->active ? "ACTIVE" : "DISABLED");
> +
> +	if (!cstate || !cstate->active)
> +		return 0;
> +
> +	mode = &crtc->state->adjusted_mode;
> +	vcstate = to_rockchip_crtc_state(cstate);
> +	interlaced = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
> +
> +	vop2_dump_connector_on_crtc(crtc, s);
> +	seq_printf(s, "\tbus_format[%x]: %s\n", vcstate->bus_format,
> +		    drm_get_bus_format_name(vcstate->bus_format));
> +	seq_printf(s, "\toutput_mode[%x]", vcstate->output_mode);
> +	seq_printf(s, " color_space[%d]\n", vcstate->color_space);
> +	seq_printf(s, "    Display mode: %dx%d%s%d\n",
> +		    mode->hdisplay, mode->vdisplay, interlaced ? "i" : "p",
> +		    drm_mode_vrefresh(mode));
> +	seq_printf(s, "\tclk[%d] real_clk[%d] type[%x] flag[%x]\n",
> +		    mode->clock, mode->crtc_clock, mode->type, mode->flags);
> +	seq_printf(s, "\tH: %d %d %d %d\n", mode->hdisplay, mode->hsync_start,
> +		    mode->hsync_end, mode->htotal);
> +	seq_printf(s, "\tV: %d %d %d %d\n", mode->vdisplay, mode->vsync_start,
> +		    mode->vsync_end, mode->vtotal);
> +
> +	drm_atomic_crtc_for_each_plane(plane, crtc) {
> +		vop2_plane_state_dump(s, plane);
> +	}
> +
> +	return 0;
> +}
> +
> +static int vop2_summary_show(struct seq_file *s, void *data)
> +{
> +	struct drm_info_node *node = s->private;
> +	struct drm_minor *minor = node->minor;
> +	struct drm_device *drm_dev = minor->dev;
> +	struct drm_crtc *crtc;
> +
> +	drm_modeset_lock_all(drm_dev);
> +	drm_for_each_crtc(crtc, drm_dev) {
> +		vop2_crtc_state_dump(crtc, s);
> +	}
> +	drm_modeset_unlock_all(drm_dev);
> +
> +	return 0;
> +}
> +
> +static void vop2_regs_print(struct vop2 *vop2, struct seq_file *s, struct vop2_regs_dump *dump)
> +{
> +	resource_size_t start;
> +	const int reg_num = 0x110 / 4;

If I'm not mistaken this prints a register space of 0x110 bytes.
Shouldn't it be 0x100 bytes instead?

Also, are all these register spaces really have the same size? Does it
make sense to add the size to struct vop2_regs_dump?

> +	u32 val;
> +	int i;
> +
> +	if (dump->en_mask) {
> +		val = vop2_readl(vop2, dump->base + dump->en_reg);
> +		if ((val & dump->en_mask) != dump->en_val)
> +			return;
> +	}
> +	seq_printf(s, "\n%s:\n", dump->name);
> +
> +	start = vop2->res->start + dump->base;
> +	for (i = 0; i < reg_num;) {
> +		seq_printf(s, "%08x:  %08x %08x %08x %08x\n", (u32)start + i * 4,
> +			   vop2_readl(vop2, dump->base + (4 * i)),
> +			   vop2_readl(vop2, dump->base + (4 * (i + 1))),
> +			   vop2_readl(vop2, dump->base + (4 * (i + 2))),
> +			   vop2_readl(vop2, dump->base + (4 * (i + 3))));
> +		i += 4;
> +	}
> +
> +}
> +
> +static int vop2_regs_show(struct seq_file *s, void *arg)
> +{
> +	struct drm_info_node *node = s->private;
> +	struct vop2 *vop2 = (struct vop2 *)node->info_ent->data;
> +	struct drm_minor *minor = node->minor;
> +	struct drm_device *drm_dev = minor->dev;
> +
> +	struct vop2_regs_dump dump;
> +
> +	drm_modeset_lock_all(drm_dev);
> +
> +	if (vop2->enable_count) {
> +		dump.en_mask = 0;
> +
> +		dump.name = "SYS";
> +		dump.base = RK3568_REG_CFG_DONE;
> +		vop2_regs_print(vop2, s, &dump);

Can you create a statically initialized array of struct vop2_regs_dump
and iterate over it?
You would need an additional present_in_soc_xy flag in struct
vop2_regs_dump, but other than that I don't see a problem and the result
might look better.

For the windows it might also be an option to iterate over
vop2->data->win instead. This array already contains the register base
addresses and window names.

> +static int vop2_active_regs_show(struct seq_file *s, void *data)
> +{
> +	struct drm_info_node *node = s->private;
> +	struct vop2 *vop2 = (struct vop2 *)node->info_ent->data;
> +	struct drm_minor *minor = node->minor;
> +	struct drm_device *drm_dev = minor->dev;
> +
> +	struct vop2_regs_dump dump;
> +
> +	drm_modeset_lock_all(drm_dev);
> +	if (vop2->enable_count) {
> +		dump.en_mask = 0;
> +
> +		dump.name = "SYS";
> +		dump.base = RK3568_REG_CFG_DONE;
> +		vop2_regs_print(vop2, s, &dump);

Not sure if we really need an additional debugfs entry to print only the
active entities, but if we do then we could avoid a bit of code
duplication by adding creating a common register dump function called
from vop2_regs_show() and vop2_active_regs_show() which takes an
additional ignore_disabled argument.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
