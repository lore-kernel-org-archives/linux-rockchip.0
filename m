Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE18CD1283
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 15:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ouRpV4CTgK7JolxgJr4CbYt9/AkI0IGDCIcwYFAMXM=; b=ZUPgiua62BGgLz
	/Q5Lv2+5uKhJlW7oFPpvkan+zjshtRWKm5/1oHBQgRLaUKbDoPBfgIL9/DmULYgIC9T1YU/3K8ZRi
	vdJx2pLv3tZwFAdDWVlwcFdSp4ewXkub8Ow5qZlC+VnRb3nyAazinWRy7wnPRetGhLzYwNYB7CyzI
	nXuBxd7Jdv8HLo3OWjF66i+h1tpGC172oZW7U5bHKNpN6RoK8DOSjO1tedD3YixrZH7WvkQfoECmB
	u/F9qMNHsnzR3ibVUcXTIpvPycsvLeKXp+QdP3bkJSVBMwNB4eNxHXHRlv5u7PfNLaU0mJf4ySEtw
	tfcHSRFXEUV1Di20qeOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8vg-00000005FxJ-2ilo;
	Tue, 26 Mar 2024 15:41:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8ur-00000005FRS-0Xii;
	Tue, 26 Mar 2024 15:40:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 64584CE1F8A;
	Tue, 26 Mar 2024 15:40:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49490C433F1;
	Tue, 26 Mar 2024 15:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711467636;
	bh=SKkWaDyRJNnmKFGJ+c/iBRlTwh6T1Qu0u8sWad+h6/I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CBMoK6RMx6DSEaWX2vSEnWKycHWZga5NuQ+WgvbIuEqLl75kW5fnMQvjwo+OE5QVI
	 TufROT/ALBUR9XEw2o5BsQ4rCYbMKFK4LuxRwp3WulzFU3ZM4rWWXL8F/om9yL1Pg2
	 r/3asOECVjQ4Ts5o48UuTZOSmstQq7QGEAa0XZWZYk8TOKTdWUXNJkjCSugBqGqZs7
	 epffRHi/oeROqm6bqlHuXu5VMmPatsbj7TVTtUX5Elu/0T8Yul+GgSgEsZ1Mh8AaSJ
	 l4YUttprqD3D7w0oyneoEZP7oi1kTCeFSJ4x0ysN5edi3N/7c+i+5+7yqmwisWK+CT
	 c/1dv4F98P+0w==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 Mar 2024 16:40:06 +0100
Subject: [PATCH v11 02/28] drm/mode_object: Export
 drm_mode_obj_find_prop_id for tests
MIME-Version: 1.0
Message-Id: <20240326-kms-hdmi-connector-state-v11-2-c5680ffcf261@kernel.org>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=937; i=mripard@kernel.org;
 h=from:subject:message-id; bh=SKkWaDyRJNnmKFGJ+c/iBRlTwh6T1Qu0u8sWad+h6/I=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlMb+Jf9vrF35txeseRw3v8RPWT7C+fOcj1yPjKMr0LV
 +oa9nOJdUxlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJuO9hbJi39eCj1v6SUN2k
 Vad0a7bpheiGaV7qcLDo77PbJvti28SWi3PPh8pw2wQJnlrH8Kl4DmPDGW7RFdtEZqxa8UnR5qN
 M/1rmptDyq5cWmHR9fLSiZ7ailddni+11VtlpM53cFn+UYLsGAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_084045_998835_D408E514 
X-CRM114-Status: UNSURE (   8.06  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
