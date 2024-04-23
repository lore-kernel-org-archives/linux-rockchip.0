Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 250F5C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 12:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ouRpV4CTgK7JolxgJr4CbYt9/AkI0IGDCIcwYFAMXM=; b=1Rq9MvOcFshiV3
	P/JOptRBJqy/EhqZqINr9pru+oNkwWiz8qeWXxBIVGFTWxuUNS7oUPiu4rsnFgaPi4rhqRS3czZcY
	8cK4NkyRN5oa0BphBC9m7E8zg+06v7f4q3FNax/VtM30i4VR+PlXSz3QSuhrqNe0R7jhPvUMB89Z3
	k9tG70gGHBBD86AVU6WmFDvtdsuLpppFnzRHQRfUl2/Q/OiGB8E3CtQMrmP/oMUHVsxkJgKqjPRZw
	UiDw/Gs560lMdOhVt3Wy0hUHxXcnh8v2noZZX9ksV7B+qY4utFVCk+a0dFAOvDCo/tF3A3HmdoYKc
	e8Xgkrnk/8SOGxeNaQEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzEp6-0000000HFkU-2YXG;
	Tue, 23 Apr 2024 12:00:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzDer-0000000Gtng-1ved;
	Tue, 23 Apr 2024 10:45:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C0E406136A;
	Tue, 23 Apr 2024 10:45:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FC45C4AF07;
	Tue, 23 Apr 2024 10:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713869152;
	bh=SKkWaDyRJNnmKFGJ+c/iBRlTwh6T1Qu0u8sWad+h6/I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=rDsW3ZW84snUYVaIDg/CIDZZuOWPCLi/XsXzkkoHlYAli9XrlY0I/hg4vVaAmjWbI
	 TSTgmhJco50fUGDtCLaAxFoFwn17SeQPMkOSFNg3rA5fhKlVUaWEGH+848sXI8l57J
	 Io/Tooivr5a6c8bIcpM7l6nJyVMRLeivBxLTvByJwfXncB/bwRKaA7P6QhvTp9PWhq
	 0U7zUqK+5lMQHOGr2RvFBLzHD3ohz5WPPo3dfX/negfccHjDW/QnVJ8uEAGrr7ff0A
	 pHeWZpX8xztj5i/1PN4cB56Zz9rCLd+ZylDu43PmXDm2RVfPIACgTVPFXeq12FrPhi
	 O0YGHnuXKlLDQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 23 Apr 2024 12:45:31 +0200
Subject: [PATCH v12 02/28] drm/mode_object: Export
 drm_mode_obj_find_prop_id for tests
MIME-Version: 1.0
Message-Id: <20240423-kms-hdmi-connector-state-v12-2-3338e4c0b189@kernel.org>
References: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
In-Reply-To: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
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
 h=from:subject:message-id; bh=SKkWaDyRJNnmKFGJ+c/iBRlTwh6T1Qu0u8sWad+h6/I=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGnqE71nJhYLv1rX9s18+qI71qx57l6zb3Tene/owG18y
 KHi1R+9jqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjARoW+MdQpprxdsXLb+QnbT
 rOkpX+yeuZsvOKmZn2T+5PifW9MTbc7tFr3Yzs/us+T+nrb9amWXPBnrA7O/Hvb22vKDkydz05Z
 H51pPOBmcPJ272YvRed5CGbb/6TqXrjI3rDAP5f08/aqpbaYMAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_034553_605960_6040A11D 
X-CRM114-Status: UNSURE (   8.10  )
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
