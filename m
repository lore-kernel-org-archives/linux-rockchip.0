Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25DEDC41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N3KxYpZlh16LEGjXaXNUARO3mqyACrdEwlJlk120FY=; b=MaIF25LHC1DkRP
	9rDtNQ5TkMeqpxU4ytnggi50A2p877+BbvLiA9Tt6DF0hSCdhFXqXWQXRGkXHVqS9jernmBYA40Yh
	SlL20uJFeJ6pW+lZR6tKPiqDwQnqp5uLRLOPJll1Q9OGB8+3PwDueXj3dzK2QSzNC/YrxhWVSJHp+
	V4ZDElKQuYBUzZLwORm5SWhB4Cr7st9274GpfR5ou9V2PF/1SUZPf0ukwIyv/59U7RQYm4k1mPpW5
	WoCXbkr4nDlpbeQ/guwP10u5LLk00ylSIPzr3G5XVB6TieZ64/OhUi9MkenOAg/hbIMksMh0Pw/mD
	sFW0waY6M00W9MRnPKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBasR-0000000FCvr-278Z;
	Mon, 27 May 2024 13:59:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBarn-0000000FCRq-1gqQ;
	Mon, 27 May 2024 13:58:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E846861881;
	Mon, 27 May 2024 13:58:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 672D2C2BBFC;
	Mon, 27 May 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818302;
	bh=Rw5+InX0fgillZLgsQwYR3h19gtgu6sjCwii1TYZtTA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=uC4P/69ZVYx4tWN6ltPAff+QtAjXoubpZRtb3snppYrEm8c1ufwFVVRgbMN2FIk3n
	 HXWWPPaRn/ZrTxpotNI89iXmD9Dl7cRu1yRFpAVecudaJfeK+CoENNr+wG4XJTz5TN
	 WAdjgrQHZeb2Q/JNf/Lb+FsYcIJG2TWfBqk+tAa2VO9xMlAAfDyjtkhH1IrA2sLbwt
	 bFR24eq2xX66AWIOck9ZFOIQdxzoRHf4b60GPjNIo4C6beIGMmqTXT/XovvZYtACxH
	 7L2q5KXkowQ6iZZk+kxDvAv7ctq9yMi+hnbkuLViqa8Z3umL5lA0s2h8Ak4+J0ra6D
	 Q5DZLZbDQ3ggQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 May 2024 15:57:54 +0200
Subject: [PATCH v15 05/29] drm/mode_object: Export
 drm_mode_obj_find_prop_id for tests
MIME-Version: 1.0
Message-Id: <20240527-kms-hdmi-connector-state-v15-5-c5af16c3aae2@kernel.org>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
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
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=998; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Rw5+InX0fgillZLgsQwYR3h19gtgu6sjCwii1TYZtTA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGkhE5N8Cy/t9J+b9F7JZOOPMGORgi69a6vmtgcc6f23d
 puGe/yBjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjARtZWMDRMED35Ok3PdVx/b
 7f+Va1qF3bHpy5kWfTvjM+PjXs6vxgd9O94ESBwMqxLqa2p0knrHyNiwJt5Y5fIzCcdva1h3nL6
 5duYT+wf6CswK5xZ+C63zOnd+Z+rvOyfmqXw5eNOVxfBIauVJAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_065823_635203_313879AB 
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
