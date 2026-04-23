Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87940C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq9OolpISeEd2XIvuSJnOhhWDKYHsAgHB/OlQLKRC44=; b=3cHuphz0B75Pxm
	cq958a9cMA3KVEq21JTsvD4K+8VUgexxRtBdrvCcGhrrFjcyNDq8ZS4uxLvreDGBtZxkQOtGDpvHG
	W+qVouQO0FIV1koFjfHuq1dzP0JK1/0na08GlhFpobv2upbIaJ+Nz7EvJkhefmKSpuaWmJcUj9Rlq
	xFS8UR1NHqowJQ+OGicvJ1fiLwdUc00VoihOFc8ttqjGts6T/WjH4UTtp3452yIIfXfDOoL+MNQS1
	HJJa5wZsl9N8DyY79ekkFlK3Swq2K+mSS0qpHkV3AMj9qUbuUJaz827ZwjbR8lSB3URDw8ugTGEhN
	Nkzk3UGuNpkSvF1pxuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRv-00000001Y5a-1xOy;
	Thu, 09 Jul 2026 08:49:39 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG14n-0000000CJ4c-043b
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:55:10 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-479d85152c9so1881452b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977708; x=1777582508; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qXxdsOArU9ZJHRv0gxhcPUMG6BfjYVh32ZwNXW3DQls=;
        b=dBA6T1LJS+rTK7n2aedW0VIjL+1TI7itSVoG7N+JbNguQzekNDhJGAwONRY7RpMI06
         854+1UOhnZdnjOieF5JRJPA3nnjUpVAB41YtqtlBy0I1OoPkdELWGtZiP7Av42nRRV7F
         IXMQ2kDlR3PONzwhK4Y4BF0trePDRWEBylZfETb5jlzUu+NZP+9ed6MXquBnluV8WPIy
         /nJS3Bbuvkfqy+nig9bEs6izLy8t5A5TVgjzP43xYz7O38SgryMJpQHWbGwbJo6udt/f
         QViWycul7LNFnp8cS3YKUP3a6JRr4LLzDr2I1mlcFJR77y5tDM1C2DraMl600ayGgpqT
         hDlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977708; x=1777582508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qXxdsOArU9ZJHRv0gxhcPUMG6BfjYVh32ZwNXW3DQls=;
        b=GMHunsP/36saz/Jh2kGPV5Io+CxPBmN1xy125yQPAMbcJ5eMcBR+1BazKrjoOK0eOn
         VrHkoV9yPojnIctix0HuJVQga/1UmfoqeSqLCRUcXdgA+LXfAtU3C3HlCRZVxYBgRIGW
         mEmKkr/iutP2OJLF0soWvWcYRTt/Vrwpj2iaxV5fW6EiRproHM6T7jk2lhc/GS+IAkcY
         S0ip6YsUbFwqObwN4ECMiRbQE1i4Oz5rkJ4wT1CR8Ntd9Uqki/1ray8VIhC8B4crbllf
         NeiAzUmvPJPAUew8V9qmDNOjdB6Zad0MMRi/KJRtgVoGuEGSKInOmRX5Q19Rhp9yLk06
         6RFw==
X-Forwarded-Encrypted: i=1; AFNElJ9Btq5Bfcb+iG03+R4V110gC7zZ7HkHOkf1ARUlX8kSjnjOZQWDSHClVQqPwgxgbXMwva7hsfONExIRNcrABQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqjJq673o6Wfl1C9l063kqVkMj/BPVhed2pZl3M8l1auXeWavE
	U5PvCzZLTv0Gl60IysvXccCYbztzDK3zQW0vL/Nz5Y/8y7WtdxOvDbHb
X-Gm-Gg: AeBDiev0GaOpuw/4LkG83ZJPFhpfG6sAHQR8f4+I01/UvoIydJcH7bX/xUvPcSOBaVA
	f8/xp6bz9jy2xW6VDMmY/vPvmfxkYArLPD5hZ7B6ur1gkEfdD8G3xAzo+puOrfIDsybghnCYuxx
	b2O4iqSnU6RlJtNMHcnyCqF1pWneERvs72tIBg5VGayeYb4e2j52eyBm5Gc1rE2wbqSNGq79S0Q
	PFt2dj4V585zTuS3OLOFs7Z/KKSJndZADUK4LILXVn6HJNki0Myg5uPvtRiRbsJ/rD/6u7tBIQe
	F5a+EufAu30ZvPbDpqv29E79ecJsMoKsISXWkiWeYUVytGFxkdJOZB40ALUuwOQKS3GWd73nhnQ
	as35Nc5Ov3jZ+w7GQrppSof6kDTAQ+X+gb5YrGWRdLZ4OYPvGxlGGB49fsOWdFpszbpH6js4LDF
	N/tF3JcFA7f+n6s59kK0FlNYxQm2s2aYogFUEhqn5z3xq5LXkU0U9/xIWcpedTFBKEb1UHoM9fb
	wjtDsMrlm4=
X-Received: by 2002:a05:6808:2381:b0:467:f567:d609 with SMTP id 5614622812f47-4799cacba8amr15988443b6e.34.1776977708127;
        Thu, 23 Apr 2026 13:55:08 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:55:07 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:53:54 -0600
Subject: [PATCH v14 13/92] dyndbg: tweak pr_fmt to avoid expansion
 conflicts
MIME-Version: 1.0
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-13-2b809a8019d0@gmail.com>
References: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
In-Reply-To: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Jason Baron <jbaron@akamai.com>, Luis Chamberlain <mcgrof@kernel.org>, Petr Pavlu <petr.pavlu@suse.com>, Daniel Gomez <da.gomez@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Aaron Tomlin <atomlin@atomlin.com>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Shuah Khan <shuah@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Alex Deucher <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@kernel.org>, Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Louis Chauvet <louis.chauvet@bootlin.com>, Haneen Mohammed <hamohammed.sa@gmail.com>, Melissa Wen <melissa.srw@gmail.com>, Sean Paul <sean@poorly.run>, Jocelyn Falempe <jfalempe@redhat.com>, Ruben Wauters <rubenru09@aol.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Marijn Suijten <marijn.suijten@somainline.org>, Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, Yannick Fertre <yannick.fertre@foss.st.com>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Oded Gabbay <ogabbay@kernel.org>, Maciej Falkowski <maciej.falkowski@linux.intel.com>, Karol Wachowski <karol.wachowski@linux.intel.com>, "Rob Herring (Arm)" <robh@kernel.org>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, Liviu Dudau <liviu.dudau@arm.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Liu Ying <victor.liu@nxp.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, Lucas Stach <l.stach@pengutronix.de>, Paul Kocialkowski <paulk@sys-base.io>, Jianmin Lv <lvjianmin@loongson.cn>, Qianhai Wu <wuqianhai@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, Mingcong Bai <jeffbai@aosc.io>, Xi Ruoyao <xry111@xry111.site>, Icenowy Zheng <zhengxingda@iscas.ac.cn>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Javier Martinez Canillas <javierm@redhat.com>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>, Russell King <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-modules@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-kselftest@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, spice-devel@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org, 
 etnaviv@lists.freedesktop.org, Jim Cromie <jim.cromie@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977637; l=739;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=Lx8Le50+nsjiQgeV6zgGG9hZjacD3w46irda8Vp6AWc=;
 b=SnpdcS+23XSjrZpeLIyoz7fp4858ZuhNdkUZ3gyhPRKYDKkKBaruLmuYi2tS21h9vU8M8wWZE
 Y5Q7mlfCnULCyFEZyjXTXMc7I7vQ1FQTWqcfAQXyvf5zEOLG4FrW4jT
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135509_095970_1A094C2E 
X-CRM114-Status: GOOD (  12.66  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

Disambiguate pr_fmt(fmt) arg, by changing it to _FMT_, to avoid naming
confusion with many later macros also using that argname.

no functional change

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index ffa1cf7c2c72..9575b92a8deb 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -11,7 +11,7 @@
  * Copyright (C) 2013 Du, Changbin <changbin.du@gmail.com>
  */
 
-#define pr_fmt(fmt) "dyndbg: " fmt
+#define pr_fmt(_FMT_) "dyndbg: " _FMT_
 
 #include <linux/kernel.h>
 #include <linux/module.h>

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
