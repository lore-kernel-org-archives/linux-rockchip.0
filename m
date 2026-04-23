Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 152E6C44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=agfIFZV51IpoIOCPWqpuSV/z7IyUmDvweFaiLZQlaSQ=; b=B35dWXXDJFIkUi
	oGJo8plHYBvAvCzIW2qP4fkjazjNs8/7iAXPvjcfTIOCo5irKpg+UqGcC/wDHs7L7j1LjLF3gZbVZ
	LZnmiOYSpkXpiP6arVLPSgbAPxK0au63H1K1sonhCY5BFirq+zqpbUjInXfztYpkxlIJeZGFbqbGe
	Rm12xIRB2fO/gnd0TJHIE5LzjQx8QNf3WrV4hpIZihaEa7WADxtZkIZJ4bw29gafFpRbo11ZQwxyQ
	RP+/j/MqEsOcmUmeOgiH9KKKJEsMPqPSsu19Jb1YvScHoThryg7oO+J3BjffrVTGHmlSza7hA4NGa
	/y0OOZyigdHtkYENQhRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRn-00000001Xm1-3fdi;
	Thu, 09 Jul 2026 08:49:31 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG13k-0000000CIet-2IoT
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:54:06 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-479d68a9063so1698724b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977643; x=1777582443; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/iIzHr8OgSixjrC6X8omEPuSZti0HDks3sOTg/JIH9Y=;
        b=EdhAiSM4TWaFI15y0+hPGV5eY1fwmTtDHUYwe+4yM3cR6IbdY3AA8Qcf8/V7D/9+JY
         SPUstrd3Cnd1EkzXMEI0eSs8nXNxwQZEeaUQCX0fLG/916b+ozJgKJ4djnvtoNXqKZEE
         DwGFkkGnqA9//U2PyiMM3V7Qh+SwAWddj0A2FSik9axkNwLBua1Ya+qB7ttP7HwukRig
         BQQVPWtqPtJ04kO9heitL/algTw2vwd96myCJdzaRimVjo2h5dvNygNEbjPKcxuF0XL3
         EXs68WwOPKc7pIC4NlTHNPKQWGVh5Hg7CT+DGFKr2bRLkpt6najQPQ3grDIrNvbmMe75
         Yvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977643; x=1777582443;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/iIzHr8OgSixjrC6X8omEPuSZti0HDks3sOTg/JIH9Y=;
        b=FzMdOX3X4HzNuli/BayMOUilvdyLMbK0wGcRs+zRyd2v6ePjlpoR4hNgcOyZXeD+dn
         vjPNv625CdM/hC3M5E4jIgr0AUIQ6Os9Cy5aUCRbnG8CyCk+NiBT4chSYNkSho86VUQN
         eeUBN47N5n5qlqm7PcAoNs78p8KoLOcu90khQUgTVlHwkqp/p5d30SXjsL26pN2ImKBJ
         LO0BynIginaqZRSpPP+PUqw92VrOIkc3mT/quwtWCXjpIxXqQE5M9a4dJO1uPOR6Weqe
         RETJ27yGGNkAvy5rP5hAjyOArFH98Qsf20lb0AyshX7VjpWgTMUq8sRi5Kp68iL+hPMB
         3TSg==
X-Forwarded-Encrypted: i=1; AFNElJ9RFbcNpf6otdzmDoNZSwXq8MUqWfo7Ek5m94KXAIQ98I1Fc0FLbxMYYv2Cww7TLeK72J93X/3oS5uMfo5ugQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5sZ0aTG/BSpXqR595R38y3duJUPDxAI/qhlMsI9pWSUd9cwor
	i3MOx9fgdmVzi3Zqtgh+OL3HzW5JYhCh4nzgqmdT0NvUXojtECgfMcHZ
X-Gm-Gg: AeBDietckhL0jbRGqKH5oMmpFLOtVXZClkLh8Y5DdR4FXWSSCfsDAnZy797kejnEEnC
	ebzmVc5Fl4GR4CXQy2ve/ikOdbemRlpKsKxvJPIPx6QPduod2YvT+PjUXNa2o9PAwGiB7a0fem3
	WhbOsDPzchUbLuVeFTi8t3xG4fp+DrZ2TqsR3bwwKW8MkcygfPcDW+1eHqHfPsI8AtqHgj7oi6G
	KQJm8looJl8R2zViatoDw27g/yj6ymbh3xASzTt9K1KVlTQO6gbSV7AofkB5M3WzeIomryTBRXj
	thX7Hdw8weycIYpqqjkbMT/lVP7ItlGup+8ZDbr4jX8HCTyBgiVT/Mo6X3Jok4o55SXGtJKy1B5
	kwNMGicoUX+r7tEHq+v5Xf2asRvpr/aDmBdpDDH3D4RpuJFNRwdwIjH7gdQpivlKv8K2bI+brGh
	CIoZFa97ZU0jGAlCwPPeI6bVfX/DN59DwEmZwNPTSQ43dXBGFkH0uBc80VOITLZ1FjUSgAwUzP
X-Received: by 2002:a05:6808:1508:b0:479:ded7:485 with SMTP id 5614622812f47-479ded70961mr9559100b6e.1.1776977642773;
        Thu, 23 Apr 2026 13:54:02 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:54:02 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v14 00/92] dyndbg: enable 0-off-cost for all of __drm_debug
Date: Thu, 23 Apr 2026 14:53:41 -0600
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NQQqDMBBFryKz7kBMo6JXKS7GZNQBjZLR0iLev
 aHL/+C9f4FyElboigsSv0Vli3mU7lGAnylOjBIyAGtsbVzZop7DKgeGbwzDhH4h1ZV2HLczBjq
 yjvT0TVNX1pvKQe7siUf5/E9e/X3/AJLFcnh0AAAA
X-Change-ID: 20260419-submit-dyndbg-classmap-foundation-a3c77652c054
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
 etnaviv@lists.freedesktop.org, Jim Cromie <jim.cromie@gmail.com>, 
 kernel test robot <oliver.sang@intel.com>, 
 =?utf-8?q?=C5=81ukasz_Bartosik?= <ukaszb@chromium.org>, 
 Philipp Hahn <phahn-oss@avm.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=14130;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=BH8wXuQqXu29++/ajdsAj++rfYFfjEnbi/imDFni8vQ=;
 b=F3TJzCpsLXGArXdimSSTkn3lXLE1c78Zxw+4CZae/xRQMNtVde5YECs4TJSxvXxcDCCikwh8x
 H8EC6hFeEMLB4EwqQ0w4YliBYUeUv1Yv5FFT8ivc7Kvy+iFCdJTTnwx
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135404_655561_4EA4CDA5 
X-CRM114-Status: GOOD (  14.40  )
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

Since Feb 2023, DRM_USE_DYNAMIC_DEBUG has been marked BROKEN [1].
Although classmaps worked in normal operation (via sysfs), the "v1"
POC implementation failed to propagate drm.debug boot-args to built-in
drivers and helpers.

The API Fix:

The root cause was a "Define vs Refer" design error. By using
DECLARE_DYNDBG_CLASSMAP in both core and drivers, the implementation
lacked the formal linkage required for dyndbg to associate driver
callsites with the core's controlling parameter during early boot
init.

This series introduces a proper module-scoped API:
- DYNDBG_CLASSMAP_DEFINE: Invoked once in drm_print.c (exported by drm.ko).
- DYNDBG_CLASSMAP_USE: Invoked by 20+ DRM/Accel modules to reference the core.

This linkage allows dyndbg to trace a driver's USE back to the core's
DEFINE. At boot-time, dyndbg can now correctly apply drm.debug
settings to all referencing modules as they are initialized, restoring
full functionality for built-in drivers.

The Benefit and Evidence (+c flag):

While the instructions saved by replacing bit-tests with NOOPs are
individually small, the scale of DRM's debug activity makes the
aggregate impact substantial.  In particular, dyndbg elides the fetch
of __drm_debug for every drm_debug_enabled() bit test, eliminating the
fetch from main memory and cache-line thrashing.

To measure the call-counts, the final patch in this series adds +c
flag to dyndbg, whereby enabled pr_debug* callsites increment a
per-cpu counter.

The benchmark (in last patch) sets +c flag on all drm_dbg_*s,
and runs 12 vkcubes for 30 sec:

  root@frodo:/home/jimc/projects/lx# count_hits 30 hammer_vk --
  Banging on: hammer_vk (&)
  [1] 100847
  [1]+  Done                       hammer_vk
  #: total hits: 2295401

This ran 1 vkcube for 10sec each, counting 1 DRM_UT_* class at a time:

root@frodo:/home/jimc/projects/lx# isolate_drm_hits 2> /dev/null
Starting isolation study: 10s per class using vkcube
----------------------------------------------------------
DRM CLASS            | TOTAL HITS
----------------------------------------------------------
DRM_UT_CORE          | 85305
DRM_UT_DRIVER        | 0
DRM_UT_KMS           | 1435
DRM_UT_PRIME         | 0
DRM_UT_ATOMIC        | 13645
DRM_UT_VBL           | 4071
DRM_UT_STATE         | 1780
DRM_UT_LEASE         | 0
DRM_UT_DP            | 0
DRM_UT_DRMRES        | 0
FOO                  | 0

Replacing this frequent memory fetch & bit-test with static-key NOOPs
could save approximately 200 peta-instructions per year across the
Steam Deck install base alone.

Series Organization:

1. vmlinux.lds.h fix and cleanup (patches 1-4)
   fix section alignment of 32 bit arches

2. dyndbg internal refactorings (5-24)
   internal callchaing grooming,
   struct refactoring, __section renames
   drop linked-list, use existing vector/array

3. core API fix (25-30)
   replace flawed DECLARE_DYNDBG_CLASSMAP with the DEFINE/USE model.
   fix boot-time propagation of drm.debug to built-in drivers/helpers.
   add compile-time validation of classmaps

4. interface improvements, documentation (31-38)
   query improvments: commas as token separators, % as query separators
   control-file epilogue

5. apply API to DRM
   call DYNAMIC_DEBUG_CLASSMAP_DEFINE(drm_debug_classes ...) in drm_drv.c
   call DYNAMIC_DEBUG_CLASSMAP_USE(drm_debug_classes) in drivers, helpers

6. New additions in v14
   add +c flag for benchmarking
   add DYNAMIC_DEBUG_CLASSMAP_USEs to more drivers, helpers
   drm/nouveau: Fix NULL pointer dereferences in GETPARAM ioctl (RFC)

In v13, to focus the review, I sent only the dyndbg core, and skipped
the DRM uses.  But the value of the optimization is best seen in
context; it presented GregKH a "maze with no cheese".

For v14, I've recombined them to show the full scale of the benefit.
While the performance gains accrue to DRM, the infrastructure resides
in dyndbg.

So Id like to add some "cheese" (later); ie patchsets to:

1. reduce __dyndbg_* .data by 40%.

This uses 3 maple trees to store module, filename, function, which
collapses 1st 2 columns by 90%.  Looped `cat control` tests indicate
a minor cost increase.

2. cache dynamic-prefixes, to avoid repeated work.

This assembles the prefix from maple trees, and stores the prefix into
another maple tree.  The cache is minimal; for +m callsites, it keeps
just 1 prefix per enabled module, for +mf prefixes just 1 per function.

Preliminary benchmarking suggests positive ROI on these.

Fixes: bb2ff6c27bc9 ("drm: Disable dynamic debug as broken")

Assisted-by: google gemini
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
Jim Cromie (91):
      dyndbg: fix NULL ptr on i386 due to section mis-alignment
      vmlinux.lds.h: move BOUNDED_SECTION_* macros to reuse later
      dyndbg.lds.S: fix lost dyndbg sections in modules
      vmlinux.lds.h: drop unused HEADERED_SECTION* macros
      dyndbg: factor ddebug_match_desc out from ddebug_change
      dyndbg: add stub macro for DECLARE_DYNDBG_CLASSMAP
      docs/dyndbg: update examples \012 to \n
      docs/dyndbg: explain flags parse 1st
      test-dyndbg: fixup CLASSMAP usage error
      dyndbg: reword "class unknown," to "class:_UNKNOWN_"
      dyndbg: make ddebug_class_param union members same size
      dyndbg: drop NUM_TYPE_ARRAY
      dyndbg: tweak pr_fmt to avoid expansion conflicts
      dyndbg: reduce verbose/debug clutter
      dyndbg: refactor param_set_dyndbg_classes and below
      dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
      dyndbg: replace classmap list with a vector
      dyndbg: macrofy a 2-index for-loop pattern
      dyndbg,module: make proper substructs in _ddebug_info
      dyndbg: move mod_name down from struct ddebug_table to _ddebug_info
      dyndbg: hoist classmap-filter-by-modname up to ddebug_add_module
      dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
      selftests-dyndbg: add a dynamic_debug run_tests target
      dyndbg: change __dynamic_func_call_cls* macros into expressions
      dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
      dyndbg: detect class_id reservation conflicts
      dyndbg: check DYNAMIC_DEBUG_CLASSMAP_{DEFINE,USE_} args at compile-time
      dyndbg-test: change do_prints testpoint to accept a loopct
      dyndbg-API: promote DYNAMIC_DEBUG_CLASSMAP_PARAM to API
      dyndbg: treat comma as a token separator
      dyndbg: split multi-query strings with %
      selftests-dyndbg: add test_mod_submod
      dyndbg: resolve "protection" of class'd pr_debug
      dyndbg: harden classmap and descriptor validation
      docs/dyndbg: add classmap info to howto
      dyndbg: add epilogue to dynamic_debug/control file
      drm: use correct ccflags-y spelling
      drm-dyndbg: adapt drm core to use dyndbg classmaps-v2
      drm-dyndbg: adapt DRM to invoke DYNAMIC_DEBUG_CLASSMAP_PARAM
      drm/i915: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
      drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
      drm-dyndbg: add DRM_CLASSMAP_USE to Xe
      drm/drm_crtc_helper: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/drm_dp_helper: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/nouveau: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/gma500: Register DRM classmap
      drm/radeon: Register DRM classmap
      drm/vmwgfx: Register DRM classmap
      drm/vkms: Register DRM classmap
      drm/udl: Register DRM classmap
      drm/mgag200: Register DRM classmap
      drm/gud: Register DRM classmap
      drm/qxl: Register DRM classmap
      drm/shmem-helper: Register DRM classmap
      drm/ttm-helper: DRM_CLASSMAP_USE(drm_debug_classes);
      drm/nouveau: Fix NULL pointer dereferences in GETPARAM ioctl
      drm/vc4: Register DRM classmap
      drm/msm: Register DRM classmap
      drm/hibmc: Register DRM classmap
      drm/imx: Register DRM classmap
      drm/mediatek: Register DRM classmap
      drm/rockchip: Register DRM classmap
      drm/sti: Register DRM classmap
      drm/stm: Register DRM classmap
      accel: add -DDYNAMIC_DEBUG_MODULE to subdir-ccflags
      accel/ivpu: implement IVPU_DBG_* as a dyndbg classmap
      accel/ethosu: enable drm.debug control
      accel/rocket: enable drm.debug control
      drm/komeda: Register DRM classmap
      drm/bridge/analogix: Register DRM classmap
      drm/bridge/dw-hdmi: Register DRM classmap
      drm/hisilicon/kirin: Register DRM classmap
      drm/imx/dc: Register DRM classmap
      drm/imx/dcss: Register DRM classmap
      drm/logicvc: Register DRM classmap
      drm/loongson: Register DRM classmap
      drm/renesas/rcar-du: Register DRM classmap
      drm/sysfb/simpledrm: Register DRM classmap
      drm/tests: Register DRM classmap in drm_mm_test
      drm/ttm: Register DRM classmap
      drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
      drm-print: fix config-dependent unused variable
      drm_print: fix drm_printer dynamic debug bypass
      drm: enable DRM_USE_DYNAMIC_DEBUG by default (for testing)
      drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
      drm/tiny: panel-mipi-dbi: Add DRM_CLASSMAP_USE
      drm/bridge: ite-it6505: Add DRM_CLASSMAP_USE
      drm/mipi-dbi: Add DRM_CLASSMAP_USE
      drm/clients: Add DRM_CLASSMAP_USE to drm_client_setup
      dyndbg: add +c flag to demonstrate advantage of classmaps for DRM

Philipp Hahn (1):
      dyndbg: Ignore additional arguments from pr_fmt

 Documentation/admin-guide/dynamic-debug-howto.rst  | 184 ++++-
 MAINTAINERS                                        |   4 +-
 drivers/accel/Makefile                             |   7 +-
 drivers/accel/ethosu/ethosu_drv.c                  |   3 +
 drivers/accel/ivpu/ivpu_drv.c                      |  27 +-
 drivers/accel/ivpu/ivpu_drv.h                      |  45 +-
 drivers/accel/rocket/rocket_gem.c                  |   2 +
 drivers/gpu/drm/Kconfig.debug                      |   3 +-
 drivers/gpu/drm/Makefile                           |   3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c            |  12 +-
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c    |   4 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   2 +
 drivers/gpu/drm/bridge/ite-it6505.c                |   2 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |   2 +
 drivers/gpu/drm/clients/drm_client_setup.c         |   2 +
 drivers/gpu/drm/display/drm_dp_helper.c            |  12 +-
 drivers/gpu/drm/drm_crtc_helper.c                  |  12 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |   1 +
 drivers/gpu/drm/drm_gem_ttm_helper.c               |   2 +
 drivers/gpu/drm/drm_mipi_dbi.c                     |   2 +
 drivers/gpu/drm/drm_print.c                        |  40 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c              |   2 +
 drivers/gpu/drm/gma500/psb_drv.c                   |   2 +
 drivers/gpu/drm/gud/gud_drv.c                      |   2 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    |   2 +
 drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c    |   2 +
 drivers/gpu/drm/i915/i915_params.c                 |  12 +-
 drivers/gpu/drm/imx/dc/dc-drv.c                    |   3 +
 drivers/gpu/drm/imx/dcss/dcss-drv.c                |   3 +
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   2 +
 drivers/gpu/drm/logicvc/logicvc_drm.c              |   2 +
 drivers/gpu/drm/loongson/lsdc_drv.c                |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   3 +
 drivers/gpu/drm/mgag200/mgag200_drv.c              |   2 +
 drivers/gpu/drm/msm/msm_drv.c                      |   3 +
 drivers/gpu/drm/nouveau/nouveau_abi16.c            |  25 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c              |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                      |   2 +
 drivers/gpu/drm/radeon/radeon_drv.c                |   2 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.c      |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |   2 +
 drivers/gpu/drm/sti/sti_drv.c                      |   2 +
 drivers/gpu/drm/stm/drv.c                          |   2 +
 drivers/gpu/drm/sysfb/simpledrm.c                  |   2 +
 drivers/gpu/drm/tests/drm_mm_test.c                |   2 +
 drivers/gpu/drm/tiny/panel-mipi-dbi.c              |   2 +
 drivers/gpu/drm/ttm/ttm_device.c                   |   3 +
 drivers/gpu/drm/udl/udl_main.c                     |   2 +
 drivers/gpu/drm/vc4/vc4_drv.c                      |   2 +
 drivers/gpu/drm/virtio/virtgpu_drv.c               |   2 +
 drivers/gpu/drm/vkms/vkms_drv.c                    |   2 +
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c                |   2 +
 drivers/gpu/drm/xe/xe_module.c                     |   3 +
 include/asm-generic/bounded_sections.lds.h         |  23 +
 include/asm-generic/dyndbg.lds.h                   |  26 +
 include/asm-generic/vmlinux.lds.h                  |  48 +-
 include/drm/drm_print.h                            |  17 +-
 include/linux/dynamic_debug.h                      | 334 ++++++--
 kernel/module/main.c                               |  15 +-
 lib/Kconfig.debug                                  |  24 +-
 lib/Makefile                                       |   5 +
 lib/dynamic_debug.c                                | 889 ++++++++++++++-------
 lib/test_dynamic_debug.c                           | 211 +++--
 lib/test_dynamic_debug_submod.c                    |  21 +
 scripts/module.lds.S                               |   2 +
 tools/testing/selftests/Makefile                   |   1 +
 tools/testing/selftests/dynamic_debug/Makefile     |   9 +
 tools/testing/selftests/dynamic_debug/config       |   7 +
 .../selftests/dynamic_debug/dyndbg_selftest.sh     | 373 +++++++++
 69 files changed, 1891 insertions(+), 598 deletions(-)
---
base-commit: d662a710c668a86a39ebaad334d9960a0cc776c2
change-id: 20260419-submit-dyndbg-classmap-foundation-a3c77652c054

Best regards,
-- 
Jim Cromie <jim.cromie@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
