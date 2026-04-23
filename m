Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C428AC44508
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suDbx6Ios4aRy2Xf44Un0450SXiQIQ53OUqm8FOcIc4=; b=WdiQqxdR70uMEA
	vKBGj3vjf7hSLBs1XPFz1wIkJyKeOWGPU+7oJXtPPaCGgk0UMsAP3dTM8rN75WKIMLyFr64T7V+Hf
	vo9hXNvgL83qvjo4jBmJTf4uHtQHFPTvWU+/lGVhwmsq/P7oByBoYbgCxRLe9zUkwrAWe7bfF2mYP
	zXnOoTNTthCnZtwneKwCCT51O0KCK8jiTpxXWgWaJHrTo7cl25ZPrkVPm2kv8pgHeMUaxLB002+o5
	p+3V1ckuVfy0iO8pIvOUu+tEXMcCur+esoZXl8GP7k9GWqD+NYgJCgfmOF1iQPTaFbXpzSA4hzRE/
	8414J2ep0wgbA7ETar+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRu-00000001Y2k-2Xbd;
	Thu, 09 Jul 2026 08:49:38 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG14c-0000000CJ0N-3wSw
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:55:00 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-463f00cda04so3833029b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977698; x=1777582498; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FdUnCLnqK7cADbbPufTlrq1d/w7tRGa85zNmvhkeAnE=;
        b=dBOwhdJV/Qz4zAL2S4WgyfPIpkjAvmsI8ItzfVLqaQjAQ21XcyCQj5tuuIPebN5UyN
         FmWfcaJyiAJWGEt3i1j2Whbwbk3nnJGMoCOvP0bM+nmzD1y15hQv961Xreim9+ywhksG
         L6SHlgXy/owxy7GqzD/ieDcixtxsm6/FmaGXB0v5cncFT0myDrvy3ozm3GcgQoLCW0cS
         ClHMZKXhdWi9mQCzXf5ZraeWVWvB2ZhaZTY+x45wtRZfGb2Vv86uMy48Tp36ugjnavEw
         E2/zzJe9qkstMgUeiybmL6PMIER3ms6YWNikjpIhvY/lad5gkZ2oqm4vcuAQJKhKNgip
         zpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977698; x=1777582498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FdUnCLnqK7cADbbPufTlrq1d/w7tRGa85zNmvhkeAnE=;
        b=RnChgsLqJ/y2b4NwRDlaETNhouV7x+8vg4AWs3lwlYJ83Z55yeqOSx3MNZc3PmIpjN
         BwEpApCfUcrcHqqI4t2NghAhi//8GbSB2bWJX8kzDfXDD/pRqebTHMmli9fuP1mXyyRu
         wqVlAHK+NLQwgT6leEotdswodPZPGr2bC/th7nkGiHk8IUyOuh6ZxRHuWGndne4S12jU
         VIynMp98SIe0qLQfM+h1q5CYpMBhZgyTyfRxGYWC+NentAB7+NMMYFSwIBgMBatl6Zhx
         R63TYQ/stjkPejeiKn8lhi6VLGYnZP5Hbgtl4sQdXcaxy7vDclFg4MDn9fPs9LRhbeaq
         KCcg==
X-Forwarded-Encrypted: i=1; AFNElJ/wDPv/Tgo4jOpq/YnuDdoWBAUYBJC8ScaU7KjTs18pa3gZH3S0v3PHXI3A/uP5RMxaJb887gVcjdus6tV9Ww==@lists.infradead.org
X-Gm-Message-State: AOJu0YyaetTgiDfjavHPZj1OxZYOrMdDbK1IyVXbZ2WcoYKENSRGRTyq
	0yUYTlJNzsRuAaa7thGmDkFT1dGVFESK16mwQa4G5coUA6WXbYHmNgkq
X-Gm-Gg: AeBDieti7RXXXrmV5r6XEL0Ac+03cvfzPBATnkQf4T4Ks8rjmYL6bTTLn7UXhN8VvZ9
	Y8MT8wBa+ydyXPzXOew+AK3XvnOthAK6UQxHUBUbamsJ1Tw+lbL0HsFUKTA9ET0TjdeezeIUyLy
	/7msEeS+MW+QFNXqlvwpLfMXig/GGBz6y48IF5Na68i7VmcYM/nNe9p6AXUEy9GWZgowe3yi30n
	131HaM3a+AO3gM+U7AwLWJhcmJCml/3oV5wlDpvxWWsoH9+eHkqRdMb1lA/Ba62pWXRv2CSWx7J
	dPgFEAwdttq+WkLAwzWbw6Zx429+hS49zeh3yRSdRVkJiO612FegvfUKvbf7rcLtbka6LPMCvqO
	e2jUapk+SKAbBRNGYECwMDknRnslprqqdE/dy5U4tZTvu4ulIPH0ui4Oa+qsrKz65NgIt5V8Kq2
	fcT5HTgwx4iUtjfpSyBaPxkmdZKwiHYY0UGisqNbK+LKVaaGio0hYYDJ1XoStL37zHQSLAP99D
X-Received: by 2002:a05:6808:3a06:b0:45c:8fa8:7497 with SMTP id 5614622812f47-4799ca25fddmr15351058b6e.34.1776977697862;
        Thu, 23 Apr 2026 13:54:57 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:54:57 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:53:52 -0600
Subject: [PATCH v14 11/92] dyndbg: make ddebug_class_param union members
 same size
MIME-Version: 1.0
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-11-2b809a8019d0@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=1479;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=u5K5LyAR3nduZ9uYNLcH0Ml0SCvaXWSVYWZzdtQqFQ0=;
 b=BwqYVXrj7tbCyuE3yuOq/lyxx2ju6pbTXiqpZ7eBU5OiT93pG4WNojxXxu/5WD0JGR4iMpceB
 gZqSgyxc2D0C00QMgyFHR/Vqp9F39MflhbB9cQ7LMd6NXCLx1ABAvFL
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135459_063447_25E18FB2 
X-CRM114-Status: GOOD (  14.10  )
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

struct ddebug_class_param keeps a ref to the state-storage of the
param; make both class-types use the same unsigned long storage type.

ISTM this is simpler and safer; it avoids an irrelevant difference,
and if 2 users somehow get class-type mixed up (or refer to the wrong
union member), at least they will both see the same value.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 2 +-
 lib/dynamic_debug.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index a10adac8e8f0..441305277914 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -104,7 +104,7 @@ struct _ddebug_info {
 struct ddebug_class_param {
 	union {
 		unsigned long *bits;
-		unsigned int *lvl;
+		unsigned long *lvl;
 	};
 	char flags[8];
 	const struct ddebug_class_map *map;
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index a9caf84ddb22..ffa1cf7c2c72 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -811,7 +811,7 @@ int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
 
 	case DD_CLASS_TYPE_LEVEL_NAMES:
 	case DD_CLASS_TYPE_LEVEL_NUM:
-		return scnprintf(buffer, PAGE_SIZE, "%d\n", *dcp->lvl);
+		return scnprintf(buffer, PAGE_SIZE, "%ld\n", *dcp->lvl);
 	default:
 		return -1;
 	}

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
