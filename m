Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C3BC4450C
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jn86IcxlUuBSvCbbFH5FavEmPy2gdjoxUutKK0kuBVg=; b=jOjy8/ax10/7jA
	grnUPMtqxhdYJN/Hy2YbAdF7+yOJdqPZQujHzG/gOSNGwfZotGP8n6VmOT7RynSjkSO/wesWm35ma
	KD37/8xLnrxyO/sLwTUXXgebP0V6ZYW2hFrDWLR9RMDQKpyvoZvG4nomCcJ2F/qLqRVHtBwN2XBFk
	GBCkBFev3KGffJxnahE2AbN73QUG5KZ6/smg1w6PCi0JGFjdidmpnAvYL3bRLC1Oq6FkIDjBxzXPG
	XVL1t9prgFlyzmGatlddUFIXZhZqb3GxTYtV3pSKmYep0p8GBTatwWcEtoBl2KqYfG7Dcz9Y6Etwk
	JDXvWpxTFg3KTXpEwzuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRt-00000001Y05-2E2X;
	Thu, 09 Jul 2026 08:49:37 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wG14S-0000000CIwO-46tB
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 20:54:50 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-470145d7df5so4423435b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 13:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776977688; x=1777582488; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zftWqWhtfgLT8BdUHmflQKmCQdRaRDCFv8UXc0/NgE8=;
        b=OxJ7GuDtfZo45+yaJ571MJncGnn4zv40OeKBGdvKeIeDSSILwGQ3h97QaZwhpk7Z8b
         6zSzQD0Me9OL7PVNafhIv+nKr9U/0VjTeZ8s1x2REW82BQE+OlkiYc9gHUmIhk+y3EW2
         fwiV154fFhUZVOILGR495f+KKFbZahUeWnE60tnmOBFrBnUQ7FoRD6a9qNY0b44Sjrk3
         DjfY8QHovNjEYyj0d/hKCU8rNFCsSqoyyB1deJePFqqOlhUW/0zGFUbLFY3f4b2EingJ
         PSrOtSN31+4HZ+IHh3NQPudjQmvvJYA611FrurudAW/aet5uHQQaUX9ilNG15Ni10rYc
         oxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776977688; x=1777582488;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zftWqWhtfgLT8BdUHmflQKmCQdRaRDCFv8UXc0/NgE8=;
        b=lej8Yu6p90LNDh8DZN89vtyKtNIIhuHSOl9gUmJjeT7ZJzrqf7IsdvHjP/RSdWGqqb
         gaWOa+Fh/iGHcMm007mRzNTrgEDvRZZhFrF7wDSFByz3FHJQcNa2BtIGxiY/E0OXotoF
         cwCW3t/tzF+jgI43t/E8pT1JRR7VPHj/oH2pTh5rcSvgBHj0SUw1fxkKlIpqEqQ7MZsn
         SBbAHfRS3uXrEeo/zFRk9FRzfHogZf8oNxjZurAddDIy1WlVdILLD/hHx/ajLfx0Lt6U
         2NIAVM7P8BJ5/qa78cZXbu1Xcp+xsKaT8l+9WHJ5czu1iBbNcwjVui0lykr+J7D3Kjep
         BuMg==
X-Forwarded-Encrypted: i=1; AFNElJ8LeXpg2Rgqby+2GSF1oLhaqbXc8uvFg6qaoM9ebyEudGkVS+hLQBXaHg/m9UmtzD7V8Rj/qdbTL/z+jNie8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxiuNAgPzDZdtrmZVqT+KXw1tIjvDbstp47VGhH54remKIQeTQl
	o+FO5Lea5m6MbduG7DisvnVqf8ygAu9InAmjjyIi1sBMHbKKJelLlO34
X-Gm-Gg: AeBDievFF5+fDHSqJjxvGZQds8vmzBBTJ8MBU1aFD5XiaaUXpPjYOKJwCl1KnsjAJLD
	O/d4FoWF4vYb5TJ7KD5WfBdZmQtgTVHRS+YhGcgOwhHpTlkXAPQN7CblsjE3a3evCZ9ua/27f4U
	gFzyzXq8z6okdbwECOgX+wQZAoPPyze8a/sgoWej5LQkO+z22z7dlWkerRdgSDAGoQrY8kWHHLP
	bQ0mbkcE9I0K/KklkkXNb8j19zZH/GiPBi0VpyM6kkyYzKUbZE8Yhgtr+wy3Y2HGl6wFhRC1fMQ
	jsjyKxrHi+oWWlDmN6Dhup1DcBNL7RSesmzE7nVC2W3SC8TzR+21YmKiP5QH378ym8RLAM6v6kV
	Bi3glrnJQ4Ur4wmvQJs7dID3ZmSuKPFmsbY9e+zCObSu0sABlSJvVocadrKmg0UrqLGXyU/YX8i
	6YfMKXSeu6buyPzg3ghdIxTdAYWt8CrYRzGkocXX15uu43otWa9qfm4Y9dPZJYqNsbfWWRxMf2
X-Received: by 2002:a05:6808:1384:b0:467:2926:1231 with SMTP id 5614622812f47-4799cabb091mr15541122b6e.33.1776977687962;
        Thu, 23 Apr 2026 13:54:47 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 13:54:47 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:53:50 -0600
Subject: [PATCH v14 09/92] test-dyndbg: fixup CLASSMAP usage error
MIME-Version: 1.0
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-9-2b809a8019d0@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=1492;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=v7nXtN9RgqHdJNPNJFFsg1eD6gNLpxPo8kGjLNQhYDo=;
 b=VBe9Ut7lbIIOEurwbAbNeQYJD7LG7Pt57wkJQXnWBJg9CpLMfTuVjx/oiKOPJeZDCdXsgXfoN
 q302jYDv/rXD00pgA4KJloRhJnDOj+7pbSDUehOIPs/xW+brF00GdRj
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_135449_039618_127613AF 
X-CRM114-Status: GOOD (  12.68  )
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

commit 6ea3bf466ac6 ("dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes")

A closer look at test_dynamic_debug.ko logging output reveals a macro
usage error:

lib/test_dynamic_debug.c:105 [test_dynamic_debug]do_cats =p "LOW msg\n" class:MID
lib/test_dynamic_debug.c:106 [test_dynamic_debug]do_cats =p "MID msg\n" class:HI
lib/test_dynamic_debug.c:107 [test_dynamic_debug]do_cats =_ "HI msg\n" class unknown, _id:13

107 says: HI is unknown, and 105,106 have a LOW/MID and MID/HI skew.

DECLARE_DYNDBG_CLASSMAP() _base arg must equal the enum's 1st value,
in this case it was _base + 1.  This leaves HI class un-selectable.

NB: the macro could better validate its arguments.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Tested-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/test_dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 77c2a669b6af..396144cf351b 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -75,7 +75,7 @@ DD_SYS_WRAP(disjoint_bits, p);
 DD_SYS_WRAP(disjoint_bits, T);
 
 /* symbolic input, independent bits */
-enum cat_disjoint_names { LOW = 11, MID, HI };
+enum cat_disjoint_names { LOW = 10, MID, HI };
 DECLARE_DYNDBG_CLASSMAP(map_disjoint_names, DD_CLASS_TYPE_DISJOINT_NAMES, 10,
 			"LOW", "MID", "HI");
 DD_SYS_WRAP(disjoint_names, p);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
