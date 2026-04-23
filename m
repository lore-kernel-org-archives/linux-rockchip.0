Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD157FDEE45
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Apr 2026 19:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyEQb81uWeJ/yNBCRsSw9ikMv+z7XoUGPn1rvso9gUI=; b=g4X3zHVz+UqwCf
	BShS/RgWrGlFuh6JRXVoYeFI01wnC+2ZiY3hoiknAHLAsZeAhS3wKipPCK6/qk3V49pYHczRM5qvv
	4j/N/V8WNAa2TnCQAuOGVZX6WmQBQ1SfYsN5B5Bp2m9sGvivRPp/Oe/7/eQlNbr9yWXQ7CWFvLJgX
	7e4cndfyKUuZJVUyqnfrzhKa5g3Mm7MG55nTAOudgeOilXK22K7G2MgYr8yF1pEVmq2rIXCqxRL1J
	g+YtNjwg1J4G8Uma/+hJKewq2QuRkfvtNrGxXZlHQ6+CJUhZHnGIpSGPjkA10SuYSkrlFYNycZJu0
	Pj6mxBznRrRC+xtUbzVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFzPL-0000000CChW-3Sbl;
	Thu, 23 Apr 2026 19:08:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFzPG-0000000CCbI-2HvI;
	Thu, 23 Apr 2026 19:08:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=fWW+fCd6NdbM2KrptCAGlUgGhewIwRtQJLb67KPR+Qk=; b=PA9jeHRRNcJwBCfIsLNOMVPHI1
	tdv8PwfDGZVlQYzwwKljmbrnblbmm0pRVGebOqjWpJ1ugqDuhFEA+4uJAUxyHhCKj8mPfKkKT8VXV
	KpVUmHak8fRtGZZxCTiCIKuME+RvGaPAOzNiOIlU9C6I9CffBo5F3BKu2jBLKNValfZ/YCW0z+o0C
	XwYI242WTaG7MuN31joAApvhM5w0gQK6axdQtN4GTvzZpZqn9S0I6JFXFR2R8V/JKnmu/FCxL3Rs5
	1BZX0lJmMCJi33l0usWll5aUe9sGqvWp3EENdvhzeubloDP2bHnwl3tGeQZN+r0PjqYENv+e4ruoj
	nNyo8beg==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFzPC-0000000Duap-29C8;
	Thu, 23 Apr 2026 19:08:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1776971246; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=C5vUuAtEWb/6gVXNhucnzAgKJC4cjGy3XDfuRvmyZ0FaDyPQHKkInxRvM+m6xJuCjBV8tXklapczrZ4+WZecmpQXirisB709mBZLq6TYHtPVb4eemoUtfUVGSdNxFAGCESUsiuPiwiN52rr1LD6MbCQP3Hf7lPfMRGbiW4e+X4w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1776971246; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=fWW+fCd6NdbM2KrptCAGlUgGhewIwRtQJLb67KPR+Qk=; 
	b=bZ/iDKiSmpThaKMZF8DJwOT4FFJ9FVTcx8aHXZQOuPNBAYb1F2o95rhNqmTACiEyyh5ia/9jOSW81zTTx/6oEJXVwcHpG5dIUWEzWTPcl+9zGeNxSM7IWAoWw1m5rGoy0rocTd+kTycQxqSDwXQbP6TTubucH13Z6SSDmnmc0sk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776971246;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=fWW+fCd6NdbM2KrptCAGlUgGhewIwRtQJLb67KPR+Qk=;
	b=JrVoh0raEMxJ5w7vb1aWo58o9plRtxvr8liiRm5CZwZ/gDjHEE/LSGBkyekMNsvB
	4cmRn/YRlgvggHwJGzR3UQozPU/PvGlQdsrwtoYZxdSSsvKm3CB+++IBr5BYHU4velM
	nPAIXmZo/HEMOpXOmztcaSo5qYjD3tXQQvQ7hxNQ=
Received: by mx.zohomail.com with SMTPS id 177697124400182.1090326347678;
	Thu, 23 Apr 2026 12:07:24 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 23 Apr 2026 21:03:51 +0200
Subject: [PATCH v14 28/28] drm/connector: Update docs of "colorspace" for
 color format prop
MIME-Version: 1.0
Message-Id: <20260423-color-format-v14-28-449a419ccbd4@collabora.com>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_200807_046758_DD1EF7A3 
X-CRM114-Status: GOOD (  11.27  )
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

The colorspace property's documentation states that BT2020_RGB and
BT2020_YCC are equivalent, and the output format depends on the driver.

Now that there is a "color format" property that userspace can use to
explicitly set a format, update the colorspace docs to mention this.

The behaviour here is not changed for userspace that doesn't know about
the color format property yet, as the color format property defaults to
"AUTO", where the choice of output format is left up to drivers.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b91c1f76355e..52f9a6a8daf7 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2573,7 +2573,8 @@ EXPORT_SYMBOL(drm_mode_create_aspect_ratio_property);
  *		conversion matrix and convert to the appropriate quantization
  *		range.
  *		The variants BT2020_RGB and BT2020_YCC are equivalent and the
- *		driver chooses between RGB and YCbCr on its own.
+ *		driver chooses between RGB and YCbCr based on the color format
+ *		property.
  *
  *	SMPTE_170M_YCC:
  *	BT709_YCC:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
