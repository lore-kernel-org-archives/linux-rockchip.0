Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D020C44536
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 08:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTxDTcCbxfWyfvusYIIAPkNZO8fZgHUObMMJt6NCsJE=; b=DNXx0pf2h1bgtx
	9l3C9E3hei6cVK/mVahRbwivCQOHd1T7a22EhuBZVqBWiPeOa8s6wF6qI8s5ZVDjaJdtFPanXiCcb
	TOoVEZSVluXSYwbAneVNHX+ibdyMH0fLm76QrM/Rarp+O3PqfxY77St6bcf0xUEGDDXz+F/zNhpzt
	6WngzgnUtz+O8BvCRFGbRNOanY78bEWqxm8hmdSVLDSiCpN2PNz+tRqRilENUlp8HBAwdR1xO4Xbs
	DJU5B5ZglO5/TFCyzOGSqxIxkXIyteP7cBai56MCJcL7jJ/3iqqZg6XJr2qn4kQ22eV/jq6WE2bcW
	bhNznK75HnYnBKSJZzaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqJs-00000006fkz-2bmJ;
	Thu, 22 Jan 2026 08:45:36 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqJp-00000006fkN-0Vo1;
	Thu, 22 Jan 2026 08:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=bTQS2Ub48cluoF04AksxVAcZz1dPPLXQ7ZO9ToPloD8=; b=k
	g/vJ0TPJyGvaf2ouh7+ZkgLUAP8nvM10am5Erku9m7bIbDckHfw0bURZa0D/VQb4
	nX7Sf5y4c+Eqiu8X38rRqxwoeOJXcn3ThpWJfObzkfeaAc8S9/n6PdA45lsFq3q3
	L1SiiNyCptSK+e3S0ohSaxovyeMZr1hT3qdJdBa8QY=
Received: from andyshrk$163.com ( [110.83.51.2] ) by
 ajax-webmail-wmsvr-40-107 (Coremail) ; Thu, 22 Jan 2026 16:44:24 +0800
 (CST)
X-Originating-IP: [110.83.51.2]
Date: Thu, 22 Jan 2026 16:44:24 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Cc: "Harry Wentland" <harry.wentland@amd.com>, "Leo Li" <sunpeng.li@amd.com>,
	"Rodrigo Siqueira" <siqueira@igalia.com>,
	"Alex Deucher" <alexander.deucher@amd.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Jani Nikula" <jani.nikula@linux.intel.com>,
	"Rodrigo Vivi" <rodrigo.vivi@intel.com>,
	"Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>,
	"Tvrtko Ursulin" <tursulin@ursulin.net>,
	"Dmitry Baryshkov" <lumag@kernel.org>,
	"Sascha Hauer" <s.hauer@pengutronix.de>,
	"Rob Herring" <robh@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>,
	kernel@collabora.com, amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re:[PATCH v7 13/22] drm/rockchip: vop2: Set correct output format
 for RK3576 YUV422
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260121-color-format-v7-13-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
 <20260121-color-format-v7-13-ef790dae780c@collabora.com>
X-CM-CTRLMSGS: RtNQZnBsdXM9MTc2OTA3MTQ2MzM1NV8yNGY3NzZiM2I2YjU1M2E3ZjVjMWNiM
 GY5NjQzYTBhNw==
X-NTES-SC: AL_Qu2dC/ycvkwt4iOcYukfmUgWjuw/WsG1v/Ul1YBSP556jCHp1zA+YHtOI0XuzsGkOiqykTu2XSVH2/VTe6BkepsbYkh+3JfXd1VE6LuMWmOAAQ==
MIME-Version: 1.0
Message-ID: <27c44445.7a56.19be4e04fa9.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aygvCgDnDxRo43FpXbFcAA--.14910W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxgjJKGlx42hHoQAA3a
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_004533_645772_0EC263B7 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
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



Hello Nicolas,

At 2026-01-21 22:45:20, "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com> wrote:
>For RK3576 to be able to output YUV422 signals, it first needs to be
>able to pick the right output mode in the display controller to do so.
>
>The RK3576 hardware specifies different output formats depending on the
>used display protocol.
>
>Adjust the written register value based on the SoC and connector, so
>other users of vcstate->output_mode don't have to care about this.
>
>Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


    Reviewed-by: Andy Yan <andyshrk@163.com>
>---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 16 ++++++++++++++++
> 1 file changed, 16 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index 3dd7b7571487..d93c6779286e 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -1706,6 +1706,22 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
> 	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
> 	    !(vp_data->feature & VOP2_VP_FEATURE_OUTPUT_10BIT))
> 		out_mode = ROCKCHIP_OUT_MODE_P888;
>+	else if (vcstate->output_mode == ROCKCHIP_OUT_MODE_YUV422 &&
>+		 vop2->version == VOP_VERSION_RK3576)
>+		switch (vcstate->output_type) {
>+		case DRM_MODE_CONNECTOR_DisplayPort:
>+		case DRM_MODE_CONNECTOR_eDP:
>+			out_mode = ROCKCHIP_OUT_MODE_YUV422_RK3576_DP;
>+			break;
>+		case DRM_MODE_CONNECTOR_HDMIA:
>+			out_mode = ROCKCHIP_OUT_MODE_YUV422_RK3576_HDMI;
>+			break;
>+		default:
>+			drm_err(vop2->drm, "Unknown DRM_MODE_CONNECTOR %d\n",
>+				vcstate->output_type);
>+			vop2_unlock(vop2);
>+			return;
>+		}
> 	else
> 		out_mode = vcstate->output_mode;
> 
>
>-- 
>2.52.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
