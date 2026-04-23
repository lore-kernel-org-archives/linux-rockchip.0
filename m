Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C25BC4450D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUdBcWBucrppQgPP+OuhNvnIlOa1BAFB2zjSY5DdGnM=; b=fVtVu+GBOMtq70
	0LYmSRMN038Ogf6bdqAfUq5NPtn3QBBzD31KqessdZTECdt/wi+RlKGLvkLFj1a+vUmlXAR4wO2VZ
	x2TQ44rkbHbltLEYjUZAKIKLVVNwZu/EX0daRsXC8pytZdEMGVkJIx+L9CXj1HpYfQEJDW95z27KF
	RXzdf+KYPuHtX1Z97yHSSCXiZmhN2tv3OoXVnEKnjniBZwouaRdJeOqlqCxlQze7zkpEmaeEWmX9a
	BvU9oz0WLJ9Pllj9p6Y3VHBNG+pyx/cSirsxmHeHXC8KiGwhgkgdLVaOxSj/7knmpu21Y40zBpMNm
	JRySAs0EDsHQUQfcCmBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRu-00000001Y1L-06Ke;
	Thu, 09 Jul 2026 08:49:38 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG14Y-0000000CIya-1gMr
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:54:56 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-479e7e88fb5so2639558b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977693; x=1777582493; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3OHbRsO14nacRj9UKrh+9hs7l7M/scZ1A9iLFCIgQ2w=;
        b=I9bK3WMqM1DIGTi2+lsdxv+HYmttx9tj82JsQpTRlolgWm+XW8juQimbnbRvyGKpG+
         TPjt0QBZchYXvSHDQknEmtYyelaNnMd6pF5JrQ9sbLaf9gdsR8UM3ubgCtGSVClFWDH5
         j81a1136yewiCLDMBBkRRokhyv5xPWQ626iwYlSBnwVzKL3w1vzS3ujhVGyQBx6v6Orw
         DekQvdwXL4ZoeNKjETkIWQ/5rfE5862T4PDwAcZ9lu5SAbT2XnYH+zE8r0MSO27FEjj/
         4osO+7NRyQYthIEjvYJOCJHhE07pwZew3l8iPIuhgEUIwfaEzeRQs1+FOSF0sk70dUAb
         /erw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977693; x=1777582493;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3OHbRsO14nacRj9UKrh+9hs7l7M/scZ1A9iLFCIgQ2w=;
        b=hVa/3izf17/imqBnRg/m0MVegBoLMRqgzXT/r6SDg18qxvLMEcnpjAX6lwywqPHiVu
         QNwtDfcUnN4gJ0HEkrgQnGq22hrIdjSbDAu8WCUg9ZqXcv2THqSiAkTAtq5e6Mk5zSQi
         I2Dwjtyx2Izx6vay9CXKw13vY32vuYdgkETxzEcVOp46PK6xgP5Bg+8zUgVLGpbt8iei
         GCTkH6A6100USHkm0r+a4FJQvYoEhl1xyOklKLfkwmZVcX82e/HwAAnDEd6t5zSCTNsS
         hjxtQmigfdU4yTQOzCqKIX9z/Diy5DREjvDN+AovN8GQiVUqZLkCrGgJIaobnKrm3Enx
         TTIw==
X-Forwarded-Encrypted: i=1; AFNElJ/U+E7bdscSJioJShpmN1Ul615ml3gB8NbKj2gS3/WJO30GyZQBcppIOW9T+k/jrbx3QkEGD9Rc85Ic1o5Mug==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgTcC/fngNww7TztXtSqLBtoeA7Cmx3I2tdYmChXkOAcKWPEnu
	vSzjaJ/Y4NW5Gghn5nz61f+QLLxXrwZ2qz1vPzOclUgsZR1OrR1lGs+Z
X-Gm-Gg: AeBDieugEhzAx7oVcw5AvcSVaSJab0e8225MmyjU7Pla1IibKd0X0JiQKEVG9pDUYvX
	8uMvGTgruq/Vmotwx/Ayq7V1OFrru8kpajwI9LKLPgox42agYZzU1qE+T3R5rYn4AYUPLsa2o0B
	mvOG1+IRP/4c8DpiB5KKvpz7rLg7ELrmgdWI97G1igWgYb7uUSesklbY69NQSfYC7z5BSEL0xNc
	pXz5OEwgwHR58CzXvZyHNmrfS+19y1J2wx/+SeaF/wAprLJKceFiK75yPqe5Lo5RQ57+mbhqMhh
	VVkFkLir3BcmUOXWSnXMPzc2ny3gtHE4omFRb64oNae0mk98s+QQZJDJxDmkMxzxd5Vcl67AQwY
	TPuHBoJAOVRLn798tUDrBbYNtJaqY9S+lZA6DU134hJX2jjJBG54nI8SMggGDLMy/AUZmLTUhMy
	wisW731EZ7rd/xedkxmeR0h6XWCz0PWsT9EmXYEPa6evhZuD74wnw5a+WnLh4j584nYAwDv0izC
	bpiw2iytlU=
X-Received: by 2002:a05:6808:d4a:b0:467:49c0:5f6d with SMTP id 5614622812f47-4799ca893f0mr15678939b6e.23.1776977692926;
        Thu, 23 Apr 2026 13:54:52 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:54:52 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:53:51 -0600
Subject: [PATCH v14 10/92] dyndbg: reword "class unknown," to
 "class:_UNKNOWN_"
MIME-Version: 1.0
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-10-2b809a8019d0@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=1024;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=4QM3LS2xsg7RLYgSN87KN0NOYRoI2SlINH0Xj+sS9wE=;
 b=zEZMT0WhA4tazHE8iUsJRCDfWjq/snV5y5Ucebwf2eD2LMkQH1VD4rtB+5MLgRCm4kUHuVv2l
 mCQ8zw3QDM0CpaAyRTte6a4hImlzDdBhTb6cuX8iNQbekmlAYqZ0f+w
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135455_020565_E2312DF1 
X-CRM114-Status: GOOD (  13.39  )
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

When a dyndbg classname is unknown to a kernel module (as before
previous patch), the callsite is un-addressable via >control queries.

The control-file displays this condition as "class unknown,"
currently.  That spelling is sub-optimal/too-generic, so change it to
"class:_UNKNOWN_" to loudly announce the erroneous situation, and to
make it uniquely greppable.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 6b1e983cfedc..a9caf84ddb22 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1166,7 +1166,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
-			seq_printf(m, " class unknown, _id:%d", dp->class_id);
+			seq_printf(m, " class:_UNKNOWN_ _id:%d", dp->class_id);
 	}
 	seq_putc(m, '\n');
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
