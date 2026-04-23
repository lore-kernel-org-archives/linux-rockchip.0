Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63F57C44509
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q0QvA721a1oGA5uRDuqNwfq+6fHQ8REMP7KKxVjBmQ=; b=cbAKvMoJ/22bQi
	6vN5jzCAat8K8rFBpk6LwceYOpWkcPl3gQX28E6q1e/U43XXzwe4u6j5oywyVOLuWAS7KGF+5hSDz
	KRMV6kVcviY3MAI1ko7p+w9x+7Y6a+MNxYNYqek1L2I3LySudrLn5dgmXSp9ofAUUs4/yB0KRmxRa
	lq5TXHYyFGES7WD9oTyz3yn5/p+WTxSOpXg1hE4VmTe+WbU447CXFEH0mKyBeEH9UQLUMWuIPwMrN
	I4DICI6+BiUk8z3rXo3M16rVjwqEldZMbSIS5cqRT1chYqE559URSQWw1alJkGhuqmY7iTg6ZDYWN
	zGiGwuJqqzvKbswYLpUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRq-00000001Xrw-2Jwm;
	Thu, 09 Jul 2026 08:49:34 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG13y-0000000CIjh-3Epz
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:54:20 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-4779b2497b4so4191108b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977658; x=1777582458; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l1peIZB1cJ4wCWYePEqyi4U4OHQkEIk0zc+fw2Nxhlo=;
        b=lQmn5sC7YZOnnhZPFPA8ZBe1AHxG5NuLExPRm/PB2x0wLiR2lDAtqN+tGFCw8mG5xk
         pWrLcqYqoEfxhp2eb4+gG1GUm/0g+JBac7TluOU3dDRk1rUj7N98n0GhGrjNcJL7kwYs
         /DKBYR1MjqqDK2EjGBbwkvs9vmoJ6I/ndJYeDL1rozuLujLjABmBIvc5LkKmeZ9ljz4B
         EXPss3MT68j7hQ2yq8SBjbTggVyz/XYRf8PD+y3/51eIeTSFcxa9giDpfLu2QzJjTsuK
         tEp7mQdAffZmveO9D1nnwzxo5kuBczgcLT+dKYkQGaUJPGH/0G1Bdx524abq1Qg7N7ib
         3k1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977658; x=1777582458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l1peIZB1cJ4wCWYePEqyi4U4OHQkEIk0zc+fw2Nxhlo=;
        b=hfe+b/Tnf7qGHYmWbPttjuU7iXR6fvJ/u/Jik3sEmkcQVIeghNeqkUV5OyBtq+G6yx
         Enqq0HlLkyO1Xd/nrvCb5BHxpVVoK0YCaQt00HF9IXxGElUcyrphDvJCjVFULqjEMipf
         9o6o0yy0jX9ZFRWFIY/7AZuNFnNaguAbRxn4CLflPPK0L6ne1tsrB+1uW6jjWd0C58xv
         Ib4gjsVS3/CdZEQZ5kQnwbOh+GgTT+t9aovjrkn0bBFvxIerovVbx3FKvVhqG2b6hhsm
         8yGdkJsJ7HtM0WgZrh7UsMWPUL/0E8r4t++K20Om9BXjxXXxULZxUgv3vdmANH5JP98F
         IYRw==
X-Forwarded-Encrypted: i=1; AFNElJ/hpn1cqUOAA1ppXNfN2nW5tPdGuXzRlTkhwDd7PXVrFqtpCMRapyKjFDqB0vJoC6Xr+1o/BY4aVuqM252H+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIYDapE/SPE0GthsnU11RNd8PzUN5PqKTU/A83uQ2v51lnSbAb
	kmqambQNHqJpp3IVBGS4PkBZ1syOYnLaW4r5L94MvAGG3pwnyiLRZdAL
X-Gm-Gg: AeBDieunGlhgqCmGGiuXp0KqQRyWSN+h2X+QxMXLQRKzjJ+eAMKCwQK5Z27UYp+HnVi
	EJhTdJ0FczjCLjduAcRJ/VHfwWvgz+KhqUWUwO9kbj4bJNBhJMbmE1o7LqzGbsJ5Y6GEWIDqF4n
	eKiYGR5Lc3/VOyzuKCnP4GYkElSMfBTvdI7blH/dCyHZ+0TJjyAwJzemKNQn7X/XQuPlBkvixz3
	/5m9KYNCdcVrzPuyUJYUDXDsdEVdEyQgdn9oc+rNiSIQNV05WANzG66A8uqS5TIaC43n9DVuzG/
	DHYgsAhx5dx4rHT+A1RMeCzkcYuZdj8Ie/PjvozFIQ5rGUVUnWdCcVOuiwi3IbPqLHz9E5yL8Nv
	w5jGKJqIqf2HDAtQrmOaHT3uAwZuf4wCmpAxHAJasEMgu1bVAad89lAp2SSXuaLN3rXL9SoAaAS
	Iad0NQqFckQQ6VnM0bBHFFd14AbsEtu7N/uj5u9pr05d/qLCyOFmFqfWenLwLBSLPhxTY8cy+q
X-Received: by 2002:a05:6808:80b3:b0:479:d937:c4f4 with SMTP id 5614622812f47-479d937d218mr11467409b6e.19.1776977657796;
        Thu, 23 Apr 2026 13:54:17 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:54:17 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:53:44 -0600
Subject: [PATCH v14 03/92] dyndbg.lds.S: fix lost dyndbg sections in
 modules
MIME-Version: 1.0
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-3-2b809a8019d0@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=3738;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=dBPobWcjtsCPloRIZNIq7WrMQXPNqrRK7ZbNyYlUKjY=;
 b=Mq2FY9AhjybUNh2r2+R0eLZQJzbkYdY8eG/KkpbUCrUKuD8lbuRInjAtfOok3gY1b6jjhzeKk
 GFNhcQdx8P8CNk525EAsuvFZk9vQbFQyGNTNmtsMmoZIKphPxa+siA1
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135418_833637_A1D5E6D2 
X-CRM114-Status: GOOD (  17.75  )
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

In an (unused) experimental variation of this series, I had trouble
with __dyndbg* sections getting lost in drm drivers.  While it didn't
happen in this series, it exposed a non-obvious weakness.  So fix it,
by following the model demonstrated in codetag.lds.h.

Introduce include/asm-generic/dyndbg.lds.h, with 2 macros:

DYNDBG_SECTIONS() gets the 2 BOUNDED_SECTION_BY(__yndbg*) calls from
vmlinux.lds.h DATA_DATA, which now includes the new file and calls the
new macro.

MOD_DYNDBG_SECTIONS also has the 2 BOUNDED_SECTION_BY calls, but wraps
them with output section syntax to keep them as known and separate ELF
sections in the module.ko.

dyndbg.lds.h includes (reuses) bounded-section.lds.h

scripts/module.lds.S: now calls MOD_DYNDBG_SECTIONS right before the
CODETAG macro (consistent with their placements in vmlinux.lds.h), and
also includes dyndbg.lds.h

This isolates vmlinux.lds.h from further __dyndbg section additions.

CC: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 MAINTAINERS                       |  1 +
 include/asm-generic/dyndbg.lds.h  | 19 +++++++++++++++++++
 include/asm-generic/vmlinux.lds.h |  6 ++----
 scripts/module.lds.S              |  2 ++
 4 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5fcb7b991776..5c75109d2ee3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9069,6 +9069,7 @@ DYNAMIC DEBUG
 M:	Jason Baron <jbaron@akamai.com>
 M:	Jim Cromie <jim.cromie@gmail.com>
 S:	Maintained
+F:	include/asm-generic/dyndbg.lds.h
 F:	include/linux/dynamic_debug.h
 F:	lib/dynamic_debug.c
 F:	lib/test_dynamic_debug.c
diff --git a/include/asm-generic/dyndbg.lds.h b/include/asm-generic/dyndbg.lds.h
new file mode 100644
index 000000000000..f95683aa16b6
--- /dev/null
+++ b/include/asm-generic/dyndbg.lds.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ASM_GENERIC_DYNDBG_LDS_H
+#define __ASM_GENERIC_DYNDBG_LDS_H
+
+#include <asm-generic/bounded_sections.lds.h>
+#define DYNDBG_SECTIONS()					\
+	. = ALIGN(8);						\
+	BOUNDED_SECTION_BY(__dyndbg, ___dyndbg)			\
+	BOUNDED_SECTION_BY(__dyndbg_classes, ___dyndbg_classes)
+
+#define MOD_DYNDBG_SECTIONS()                                           \
+	__dyndbg : {							\
+		BOUNDED_SECTION_BY(__dyndbg, ___dyndbg)			\
+	}								\
+	__dyndbg_classes : {						\
+		BOUNDED_SECTION_BY(__dyndbg_classes, ___dyndbg_classes)	\
+	}
+
+#endif /* __ASM_GENERIC_DYNDBG_LDS_H */
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index acb4aadd74da..9324066aab51 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -340,6 +340,7 @@
 /*
  * .data section
  */
+#include <asm-generic/dyndbg.lds.h>
 #define DATA_DATA							\
 	*(.xiptext)							\
 	*(DATA_MAIN)							\
@@ -353,10 +354,7 @@
 	*(.data..do_once)						\
 	STRUCT_ALIGN();							\
 	*(__tracepoints)						\
-	/* implement dynamic printk debug */				\
-	. = ALIGN(8);							\
-	BOUNDED_SECTION_BY(__dyndbg_classes, ___dyndbg_classes)		\
-	BOUNDED_SECTION_BY(__dyndbg, ___dyndbg)				\
+	DYNDBG_SECTIONS()						\
 	CODETAG_SECTIONS()						\
 	LIKELY_PROFILE()		       				\
 	BRANCH_PROFILE()						\
diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 2dc4c8c3e667..027c5c286ea0 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -10,6 +10,7 @@
 #endif
 
 #include <asm-generic/codetag.lds.h>
+#include <asm-generic/dyndbg.lds.h>
 
 SECTIONS {
 	/DISCARD/ : {
@@ -59,6 +60,7 @@ SECTIONS {
 		*(.rodata..L*)
 	}
 
+	MOD_DYNDBG_SECTIONS()
 	MOD_SEPARATE_CODETAG_SECTIONS()
 }
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
