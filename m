Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434C7C25B4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fB3I4aOlO/mNdmf5Mbq/NbZJ59+dTcV1BrmLaIIvnlM=; b=XcmtHS0vIt5Mar
	JW6aqjnFl+5VbwWChqhdnZsXX/HWOiv2YDvySmvFpBgLtA/xBF2GXT5/8N/egp9nEqsjOf2ZkhptQ
	jAFxPYEpNbg1hcwcnEsxjGFUwGoHmuauUxedeQ7kO3Ck45CCT5YADnL4sxIkHy+Kef7MCnlkQuIVx
	Oby9yAs3sXch3G7tf7+kzgK3n5QupkCrbSOOAMQGMQ+HpHuoBKsOg1voYMo/NI2015h6XZxD6Hrnv
	jzCeTSFnWdRay9pbraOFqNP5LlQsZ97bzxHcHrs2U5R5JNPawEStIA8DcNRimlQ9bTzhZMZfG8Tov
	IMhjE4V/8nh/dNTGvn1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Khl-0000000B9KC-1YQh;
	Tue, 07 May 2024 13:18:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Kha-0000000B99R-0668;
	Tue, 07 May 2024 13:17:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6E3EE61770;
	Tue,  7 May 2024 13:17:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4000C4DDE3;
	Tue,  7 May 2024 13:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087869;
	bh=RHQ+M/X8yAIVLRtJQPx77FibueWozKcb1Cr3A01lM9s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QlLWv+GEXCa2lAO38Dh4VCIk8N6Lhjgr7s2/NI8bJSb2fTV5mmgHYtRElTKoVBWmE
	 H99okaTVcPHHsetwnCECjzJn3a2sFIJp6sLQLGmVSZEwELU86DXK+IHgjabljKOOHR
	 PhTgsIyiajV1LknZZZ/Jc8OoyPAS92wx5Wqe3+j/S7rfMNsuIk2yJ/Mw8KcDqTyfoY
	 gyDM0u5nb4s0yH/tMEg/s6DyUrOXzZ3tcOgnWyYlkvX2rLU5PDcSUvhLLFLnyTzsqa
	 XgCcWpAW5WHUP/NACWO2YDBwb+znGRuMVMDU7e6k8ZuVzODU6OE4tUoZ4HhU/u2kpe
	 +kmH9T1g9k5mQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 07 May 2024 15:17:20 +0200
Subject: [PATCH v13 02/28] drm/mode_object: Export
 drm_mode_obj_find_prop_id for tests
MIME-Version: 1.0
Message-Id: <20240507-kms-hdmi-connector-state-v13-2-8fafc5efe8be@kernel.org>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
In-Reply-To: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=937; i=mripard@kernel.org;
 h=from:subject:message-id; bh=RHQ+M/X8yAIVLRtJQPx77FibueWozKcb1Cr3A01lM9s=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlWms8Zin188hQuPxBZxXy1/N6tpwbfHXWjE1YeWFPFl
 rwyjfVjx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE9gQLk4BmMi5W4z1IZPETxzmV+HmeDR1
 4laJlblb3nWuCazXkju0OILjhAynffjTSUdChHP2359kY3Jmdscyxlq5XWVqBVX9OYv0Y+0LXfh
 z1sp9N0vawndLvtCr5bpcJ2eP/IIP/oavtkj/LF+T3ViyFAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_061750_220579_29A10F4B 
X-CRM114-Status: UNSURE (   8.37  )
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

We'll need to use drm_mode_obj_find_prop_id() for kunit tests to make
sure a given property has been properly created. Let's export it for
tests only.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_mode_object.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
index 0e8355063eee..df4cc0e8e263 100644
--- a/drivers/gpu/drm/drm_mode_object.c
+++ b/drivers/gpu/drm/drm_mode_object.c
@@ -476,10 +476,11 @@ struct drm_property *drm_mode_obj_find_prop_id(struct drm_mode_object *obj,
 		if (obj->properties->properties[i]->base.id == prop_id)
 			return obj->properties->properties[i];
 
 	return NULL;
 }
+EXPORT_SYMBOL_FOR_TESTS_ONLY(drm_mode_obj_find_prop_id);
 
 static int set_property_legacy(struct drm_mode_object *obj,
 			       struct drm_property *prop,
 			       uint64_t prop_value)
 {

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
