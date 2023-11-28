Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C479AC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFThrJsSBpY/wr9k4PMIXAwEE6wwdJVwYnTY8gp6ijk=; b=H+lO7FLhfsG+ac
	K8rnxaga/dOuQRqraGaHNj/zAXLBlTQ2YiVd9CKMJGmFJ59Nct66gqJgpqAMovhxomWHAeusA9kfM
	jkZ8P0Y+VT8UOEj5uAWrIxu3eE4LlurTKc3gr8dwtUhy/B/F7a9EPUzaPFVWOn7W393Pmu4rEYxGT
	Q5E8VcfMfJzYCvv8X/7LhCmRaIppkRRwhs35U+BDoPN8pMN7YJxdjhULKeIvPm86tckPTXq//bzGi
	Obh82G8czj+HhW4stceKzr5ZO9OiSsHoe4pegZwO0N6jO8R46Ra+1gZozDFnoRWyOp/ArfMTNNbyW
	2/AFTPlArnKEuZl98/oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIW-004tDk-2F;
	Tue, 28 Nov 2023 10:26:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHo-004sTC-0v;
	Tue, 28 Nov 2023 10:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KCs0qnHvdNue8E0PLt965LsH4LFXL7RvmEKfld0KOkE=; b=jRUE9vcG5RgnwTL8AlLYZpkXq7
	gR88NGv02OQD2eaFNUsdBbJEEcxYgAEGev9o9TMJfzaVSs4r5bJnuLa+Bathnlj1IiyFlDzsSVOFe
	1WX64sHRUN/BAzpTf4oyg8c9fNHFpq/zuEr28kyjWMpXaxCSldH4Z7I4+idOU1ecxNcVBFG2Mhi5U
	fx92FyTdtac4huhouiUXNVJmvXaXF3lDsEeLdfAkHiX15sOu35o1/Iq1c0/rOFtiCq/yJRy3aL2Sw
	ehj9GQwBuIOXW6oJkXGMxFfnUsPZ3iT4FvHr9G7NapU59sslng56xBvuFYdMK6HoNcUVDCGYINYSg
	KX25dSLQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHh-00GaIo-2T;
	Tue, 28 Nov 2023 10:25:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 43C20616D4;
	Tue, 28 Nov 2023 10:25:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B612BC43391;
	Tue, 28 Nov 2023 10:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167140;
	bh=fuZjkFl/jqhwO48bmKJwJvIB0H4MjJa9mxi0LwhfDmM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=diXsiCDU4lhx4rbSfNTYFZSROdgzWVd4Buh2Qt5+E8/iyVTHtyX99HrJ7/qjVolFv
	 jhUHGtzj04tSBJEWjAEUI7Y2VKrmyMuNz7H51j86W4eBzG62SWd9RC8riAVzQXb0jD
	 TUlEe2/lJx4P1ejDELYkJ+nG6nu/qyAQ9/wfUqoxWdlcvrPdj0+cUj2hMOoJl7R2pO
	 wBIqxQiVZfUScOTWt32/FGF4sejFON6XDbyw77CF2SZspEDRHWYR9RJQO8zxc+nX/2
	 771WgieW+bZp3tbzdvcWtuMGHd6h8+jXBUtBaYBVYcbAk3Zu9PAo6QA9sDvW7z+Mm3
	 9W+hVeLqgY7qA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:38 +0100
Subject: [PATCH v4 27/45] drm/rockchip: inno_hdmi: no need to store vic
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-27-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633; i=mripard@kernel.org;
 h=from:subject:message-id; bh=fuZjkFl/jqhwO48bmKJwJvIB0H4MjJa9mxi0LwhfDmM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y/d8GKbcemp5iz7S4eeaOufuy1ypbLz79W/y67qs
 sg7npp4r6OUhUGMi0FWTJElRth8SdypWa872fjmwcxhZQIZwsDFKQATebCD4Z9W9IHscgv2l5fW
 frgZ0nrT79B3UYbazLDPsbbr47YcWvKV4X/8ZM6E9P2d1+LbZ4cc2zt14tvJV8uvby7q5nx0774
 HhyQHAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102542_132251_4D3DEA11 
X-CRM114-Status: GOOD (  11.57  )
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

The mode's VIC is only ever used in the inno_hdmi_setup() function so
there's no need to store it in the main structure.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 4db18195246e..294f0d442c0c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	int vic;
 	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
@@ -443,16 +442,15 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-
-	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
+	u8 vic = drm_match_cea_mode(mode);
 
 	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
 	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
 
-	if ((hdmi->hdmi_data.vic == 6) || (hdmi->hdmi_data.vic == 7) ||
-	    (hdmi->hdmi_data.vic == 21) || (hdmi->hdmi_data.vic == 22) ||
-	    (hdmi->hdmi_data.vic == 2) || (hdmi->hdmi_data.vic == 3) ||
-	    (hdmi->hdmi_data.vic == 17) || (hdmi->hdmi_data.vic == 18))
+	if ((vic == 6) || (vic == 7) ||
+	    (vic == 21) || (vic == 22) ||
+	    (vic == 2) || (vic == 3) ||
+	    (vic == 17) || (vic == 18))
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
 	else
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
