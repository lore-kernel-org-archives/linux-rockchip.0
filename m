Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64EA1093163
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 01:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyKiTdutpcWGdFtpZRwjdcUYgMIuhGtFTlDGczTg03w=; b=ToqeMkn6GdYQE2
	/JE9vSoDzzOhtmC+n5nXLbyIYOl6m7bQeyxfcKRiihDRqTWVqcEP4pdzUPzmpK4U/65atnMmmPBmZ
	B6asv1ZYl5vb08DWlGUz2BB6NrerfvvlDitLAVat6hiwTKV5AYaYDUQI8+PX3O4f3PLBEMFt9FSmb
	2IPi6tg5qao2247iXCrvj2MMgBYsBZnWK6OPUZmfZDo0DkmtleMjx7KHOKkcgIDvIO6E6ZpBEL1+X
	HgeRG+Fgn4OOAhzMlq8FH30czoKMM7Rhq/46LqEKNmtdwAe3lsbj3e7/GqiI/aQM7ouQtU9PvfXl3
	9igkUXAVlf76wQDaCjVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Oyj-0000000BtWo-1b6a;
	Fri, 20 Mar 2026 01:48:45 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Oyf-0000000BtVe-3QQi;
	Fri, 20 Mar 2026 01:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=saO61grf/k5/OebR2lbzWJwfHGFajXWSYI/qsd3idQ0=; b=X
	SJtvk0337ssZS4gm+XLZn5XIp5LN7BF6ZFnFHfoR5UjIZSBar4wUfARXbBHpHCnV
	EbiPqonUimOi82Du4p6kw+JgvL2ZydPmV71KZ38ca3xo9Pff9X/wr69zvTwkH+p8
	H5yj6igoljzr4oKV4Jo1lwFerJqaexkyBz13tgSaIc=
Received: from andyshrk$163.com ( [121.15.173.1] ) by
 ajax-webmail-wmsvr-40-139 (Coremail) ; Fri, 20 Mar 2026 09:48:01 +0800
 (CST)
X-Originating-IP: [121.15.173.1]
Date: Fri, 20 Mar 2026 09:48:01 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Daniel Stone" <daniels@collabora.com>,
	"Alexey Charkov" <alchark@gmail.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH RFC] drm/rockchip: vop2: Add clock rate mode check
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260217-vop2-clk-rate-check-v1-1-989b569119ba@collabora.com>
References: <20260217-vop2-clk-rate-check-v1-1-989b569119ba@collabora.com>
X-CM-CTRLMSGS: OYyBGHBsdXM9MTc3Mzk3MTI4MDUyN19jZjA5MGZlZjI5MGY2YmFkNjFjZDJmM
 zBhZjM5YTZlYw==
X-NTES-SC: AL_Qu2cAfWcvkoj5yebZekfmUgWjuw/WsG1v/Ul1YBSP556jBHo0zsHXGFdAGTXyuCXOw2pnDqtVwls2vpHcbBEQ545i0bGBkbtWAylaYn/5M+hwQ==
MIME-Version: 1.0
Message-ID: <1528d788.186b.19d08ed974c.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: iygvCgD3345Rp7xpgSR9AA--.3209W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxhGH5Wm8p1EwegAA3c
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_184842_745570_28BE0223 
X-CRM114-Status: GOOD (  11.52  )
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



Hello Sebastian,

At 2026-02-18 00:08:45, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>The display might offer modes, which exceed the maximum clock rate of a
>video output. This usually happens for displays that offer refresh rates
>above 60 Hz. This results in no picture being displayed without manual
>intervention. Fix this by teaching the driver about the maximum
>achievable clock rates.
>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>---
>I've taken the max. clock rate information from the video output
>information of the RK3568/RK3588/RK3576 datasheets. The real max. clock
>rates should be above those to take blank times into account. I haven't
>found the proper information source for this. I hope Andy can help out.
>---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  3 +++
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
> drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 10 ++++++++++
> 3 files changed, 14 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index ec3b4fde10db..1051418e5fff 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -1434,6 +1434,9 @@ static enum drm_mode_status vop2_crtc_mode_valid(struct drm_crtc *crtc,
> 	if (mode->hdisplay > vp->data->max_output.width)
> 		return MODE_BAD_HVALUE;
> 
>+	if (mode->clock > vp->data->max_clock_rate / 1000)
>+		return MODE_CLOCK_HIGH;
>+
> 	return MODE_OK;
> }
> 
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>index 9124191899ba..42d70426bf08 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>@@ -225,6 +225,7 @@ struct vop2_video_port_data {
> 	u16 gamma_lut_len;
> 	u16 cubic_lut_len;
> 	struct vop_rect max_output;
>+	u32 max_clock_rate;
> 	const u8 pre_scan_max_dly[4];
> 	unsigned int offset;
> 	/**
>diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>index f3950e8476a7..8be2cf0c47b6 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>@@ -559,18 +559,21 @@ static const struct vop2_video_port_data rk3568_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 9 * 9 * 9,
> 		.max_output = { 4096, 2304 },
>+		.max_clock_rate = 4096 * 2304 * 60,           

               600000000 MHZ

> 		.pre_scan_max_dly = { 69, 53, 53, 42 },
> 		.offset = 0xc00,
> 	}, {
> 		.id = 1,
> 		.gamma_lut_len = 1024,
> 		.max_output = { 2048, 1536 },
>+		.max_clock_rate = 2048 * 1536 * 60,

                200000000 Mhz
> 		.pre_scan_max_dly = { 40, 40, 40, 40 },
> 		.offset = 0xd00,
> 	}, {
> 		.id = 2,
> 		.gamma_lut_len = 1024,
> 		.max_output = { 1920, 1080 },
>+		.max_clock_rate = 1920 * 1080 * 60,
                 150000000 Hz

> 		.pre_scan_max_dly = { 40, 40, 40, 40 },
> 		.offset = 0xe00,
> 	},
>@@ -775,6 +778,7 @@ static const struct vop2_video_port_data rk3576_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 9 * 9 * 9, /* 9x9x9 */
> 		.max_output = { 4096, 2304 },
>+		.max_clock_rate = 4096 * 2304 * 120,
                600000000Mhz

> 		/* win layer_mix hdr  */
> 		.pre_scan_max_dly = { 10, 8, 2, 0 },
> 		.offset = 0xc00,
>@@ -785,6 +789,7 @@ static const struct vop2_video_port_data rk3576_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 729, /* 9x9x9 */
> 		.max_output = { 2560, 1600 },
>+		.max_clock_rate = 2560 * 1600 * 60,

                 300000000 Mhz


> 		/* win layer_mix hdr  */
> 		.pre_scan_max_dly = { 10, 6, 0, 0 },
> 		.offset = 0xd00,
>@@ -793,6 +798,7 @@ static const struct vop2_video_port_data rk3576_vop_video_ports[] = {
> 		.id = 2,
> 		.gamma_lut_len = 1024,
> 		.max_output = { 1920, 1080 },
>+		.max_clock_rate = 1920 * 1080 * 60,

                150000000 Mhz

> 		/* win layer_mix hdr  */
> 		.pre_scan_max_dly = { 10, 6, 0, 0 },
> 		.offset = 0xe00,
>@@ -1061,6 +1067,7 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 9 * 9 * 9, /* 9x9x9 */
> 		.max_output = { 4096, 2304 },
>+		.max_clock_rate = 7680 * 4320 * 60,
                 600 000000 Mhz


             For all current platforms, the maximum dclk input supported by VOP is 600 MHz. 
    The tricky part is that when we need to display a resolution higher than 4K@60, even though
    the required dclk exceeds 600 MHz, VOP internally processes 2 or 4 pixels per clock cycle to
    output a higher resolution using a lower dclk. Therefore, even when outputting an 8K@60 resolution,
    CRU only needs to provide VOP with a dclk of 594 MHz. This is what the rk3588_calc_cru_cfg function does.

> 		/* hdr2sdr sdr2hdr hdr2hdr sdr2sdr */
> 		.pre_scan_max_dly = { 76, 65, 65, 54 },
> 		.offset = 0xc00,
>@@ -1070,6 +1077,7 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 729, /* 9x9x9 */
> 		.max_output = { 4096, 2304 },
>+		.max_clock_rate = 4096 * 2304 * 60,
                600 000000 Mhz
> 		.pre_scan_max_dly = { 76, 65, 65, 54 },
> 		.offset = 0xd00,
> 	}, {
>@@ -1078,12 +1086,14 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
> 		.gamma_lut_len = 1024,
> 		.cubic_lut_len = 17 * 17 * 17, /* 17x17x17 */
> 		.max_output = { 4096, 2304 },
>+		.max_clock_rate = 4096 * 2304 * 60,
                 600 000000 Mhz
> 		.pre_scan_max_dly = { 52, 52, 52, 52 },
> 		.offset = 0xe00,
> 	}, {
> 		.id = 3,
> 		.gamma_lut_len = 1024,
> 		.max_output = { 2048, 1536 },
>+		.max_clock_rate = 1920 * 1080 * 60,

                150 000000 Mhz
> 		.pre_scan_max_dly = { 52, 52, 52, 52 },
> 		.offset = 0xf00,
> 	},
>
>---
>base-commit: 9702969978695d9a699a1f34771580cdbb153b33
>change-id: 20260217-vop2-clk-rate-check-268269778cac
>
>Best regards,
>-- 
>Sebastian Reichel <sebastian.reichel@collabora.com>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
