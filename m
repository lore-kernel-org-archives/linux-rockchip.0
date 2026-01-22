Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B9FEC44500
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 06:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZ4IVigFs9xe/yWPoNsr/fvR6F1w1PhaJ1Menzmnlyc=; b=TNRl9WFK/JPKcg
	SHiyvat/9HT+d0nXvT8P3zV/cDmlpvcjZ3slItHhXtX9+6sq/lCytlGLjU8CSCNtaF8V3qrT/ZNuA
	EVTBKBt/Omgl3A25Pa831pe7THis5Csd+rBjV7Osk0u17RnohmtcLFYf512gZyBx6jPEbkyL3fDjH
	7KMvj5r3oY8/t8huDREPRKSf4q34HTQlvQJYOG9gYx5MW6wGfEsmkF2O88UReO4i+spbUsz+/Ao2i
	SIWL5epw78nRdclkTtayA6cribGDSWUY7mwi63I/lLlmo9Y9wc+g2TIlZu3Erc+BC+ya86KGnaL53
	QlWC3Tr/cQeFRtdUGpDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vioEa-00000006VBX-3y38;
	Thu, 22 Jan 2026 06:32:00 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vioEY-00000006VAF-1ekm;
	Thu, 22 Jan 2026 06:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=8CK5jvCEjZaFYLQYoZXkEENe4Tnp4vbjlGczZ89edr4=; b=A
	viskXnWYQ0DpZ3HeAt0DEjXT7KX5KRh0ZUetPugTt8Mz2JZ+b5R1Un+4YewTXuWF
	Fy5XKZ6dX0VN6AHtif4EVGM85Cgq3eNuVnjibGsWGUsqUho0bHVzYmJg6sFiVFi9
	6QrQFX1rjlcsWsaeCAPI1u4Qw6AiGv6mZ6zy4chWSI=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-107 (Coremail) ; Thu, 22 Jan 2026 14:30:33 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 22 Jan 2026 14:30:33 +0800 (CST)
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
Subject: Re:[PATCH v7 09/22] drm/rockchip: Add YUV422 output mode constants
 for VOP2
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260121-color-format-v7-9-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
 <20260121-color-format-v7-9-ef790dae780c@collabora.com>
X-CM-CTRLMSGS: VGsUV3BsdXM9MTc2OTA2MzQzMjEwNF80ZGY5MTA1NWM2ZGEzOWU1N2NiM2Y4Y
 WE1NDkyMWViMA==
X-NTES-SC: AL_Qu2dC/ydvEwo5SCeZekfmUgWjuw/WsG1v/Ul1YBSP556jCHp1zA+YHtOI0XuzsGkOiqykTu2XSVH2/VTe6Bkepsbla4s24V6ov96gBpNliJpeg==
MIME-Version: 1.0
Message-ID: <ce42aa7.51d0.19be465c36f.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aygvCgDXvwQJxHFpWHhcAA--.14313W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxQnpSGlxxAleLwAA3J
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_223158_834898_F0778274 
X-CRM114-Status: UNSURE (   3.80  )
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



Hello,

At 2026-01-21 22:45:16, "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com> wrote:
>The Rockchip display controller has a general YUV422 output mode, and
>some SoC-specific connector-specific output modes for RK3576.
>
>Add them, based on the values in downstream and the TRM (dsp_out_mode in
>RK3576 TRM Part 2, register POST*_CTRL_POST_DSP_CTRL).
>
>Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

   Reviewed-by: Andy Yan <andyshrk@163.com>


>---
> drivers/gpu/drm/rockchip/rockchip_drm_drv.h | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>index 2e86ad00979c..4705dc6b8bd7 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
>@@ -30,10 +30,14 @@
> #define ROCKCHIP_OUT_MODE_P565		2
> #define ROCKCHIP_OUT_MODE_BT656		5
> #define ROCKCHIP_OUT_MODE_S888		8
>+#define ROCKCHIP_OUT_MODE_YUV422	9
> #define ROCKCHIP_OUT_MODE_S888_DUMMY	12
> #define ROCKCHIP_OUT_MODE_YUV420	14
> /* for use special outface */
> #define ROCKCHIP_OUT_MODE_AAAA		15
>+/* SoC specific output modes */
>+#define ROCKCHIP_OUT_MODE_YUV422_RK3576_DP	12
>+#define ROCKCHIP_OUT_MODE_YUV422_RK3576_HDMI	13
> 
> /* output flags */
> #define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)
>
>-- 
>2.52.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
