Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D16DD46945
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 14:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+newV7YcOhPPDeld/f9Irtp0iLIZb0emoqaUDb+Exc=; b=Ey84kZvDmw3Val
	ucyiepuTB/mR1umykzhRrMYyCAD/rCiuuhdqG4EQUMKccMYf9WZlmCOU4QeIon/vTaM6Erju90ftl
	7HNxtonr3IK+gOVMJ2VsRl7oevlRl+QU3rUvdomXsRHLeq00iv+cxdoZZPLBXhmIQVZWjuZdPZt+z
	5i3G4nptQDg6w1NCaOUxTvNz9aSwc7q9jAAhzlVqynN87a2fMynToTQ6SpiXUdL/U/YnGY/sVBhnc
	5L/vHyU8zvGdSdCqEREKjgMh0VQbJUfbvIRekGk8TwIoWlpi6+SS+fFYFx37FqAdJbiR7S6vTIIM9
	zxVBmAxcUhhH9o1PkNaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZUP-00000005dXO-3f5F;
	Wed, 21 Jan 2026 14:47:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZUI-00000005dOB-2HnZ;
	Wed, 21 Jan 2026 14:47:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769006806; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=W9jZNOFuAkGlwW7m2CGrU4NPVX/1RZU8OjlxZoolqaocBx2gWfDnVO92Tu1l8QWLIXXJLQGnHNhzFLegyUE33y43iuoCz3MNoIua1kSQce5pfMpDywB3dHh3taeqk84nVw7/fgsoMvrtNqa/CKHrG7hNXbxFk2pyhHFG8DXWDeI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769006806; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=neCvNPmKBMuP5SUVtUC32+B9nBFtTY9p42IPydBIi3E=; 
	b=E0ys3q5w5pognMfxBuY0A2Io2XOTNBkUMRgOrxMdm5U/4kAXPrPtHWTxA9trY4OAi5x+sknUz/0QRUegKnZpPyvieF06bV2iw80Z2W8EwzhtCqu4jh15hCqbzYxeNgTMsv8gapz5yqPx+X25aXYsncFy/wHSFywW5wVSAjpzWOU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769006806;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=neCvNPmKBMuP5SUVtUC32+B9nBFtTY9p42IPydBIi3E=;
	b=XDVCeJH20iKNzhgUcUezkYGXtBTYNAa/1E7Vz4K9mFfwgOdCPVnsT1SlEC54KZt0
	2lcVJ45GKChJbLqCiIC67SdbpwhueB7TSNz7bMBGpsp1/NB+jxihU8Q1a8lNE0wdAA7
	xKUSrS92eDhGonOqSDFCPYa2gxZ/opD+6Tkw/Mmw=
Received: by mx.zohomail.com with SMTPS id 17690068037991001.9387426219936;
	Wed, 21 Jan 2026 06:46:43 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 21 Jan 2026 15:45:16 +0100
Subject: [PATCH v7 09/22] drm/rockchip: Add YUV422 output mode constants
 for VOP2
MIME-Version: 1.0
Message-Id: <20260121-color-format-v7-9-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
In-Reply-To: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_064714_631148_8C2CE795 
X-CRM114-Status: UNSURE (   9.56  )
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

The Rockchip display controller has a general YUV422 output mode, and
some SoC-specific connector-specific output modes for RK3576.

Add them, based on the values in downstream and the TRM (dsp_out_mode in
RK3576 TRM Part 2, register POST*_CTRL_POST_DSP_CTRL).

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 2e86ad00979c..4705dc6b8bd7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -30,10 +30,14 @@
 #define ROCKCHIP_OUT_MODE_P565		2
 #define ROCKCHIP_OUT_MODE_BT656		5
 #define ROCKCHIP_OUT_MODE_S888		8
+#define ROCKCHIP_OUT_MODE_YUV422	9
 #define ROCKCHIP_OUT_MODE_S888_DUMMY	12
 #define ROCKCHIP_OUT_MODE_YUV420	14
 /* for use special outface */
 #define ROCKCHIP_OUT_MODE_AAAA		15
+/* SoC specific output modes */
+#define ROCKCHIP_OUT_MODE_YUV422_RK3576_DP	12
+#define ROCKCHIP_OUT_MODE_YUV422_RK3576_HDMI	13
 
 /* output flags */
 #define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
