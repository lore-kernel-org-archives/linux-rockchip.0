Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A3CC10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYmmj9wxde/LzKpJb512mJ41spNuTrQY9SDMfZs3nyc=; b=rRWh+2F22Qapfp
	WhkAj6oO6darglqJKPn1cQAxTvh76+zc9Sq6QZpcfKm7o58DAdgMBtR5geGaFUAqqJlb9P+ecCm5d
	lcsYiSNlgDtXj3Uh+xzzk9NNZ2cY+YsCUsK4+cP3m/r6EEH14xOvlKCGjT6xzDXORy9IH58fOVIxJ
	J+3rnuAzUaFYwd/SnTXuHSoyvYawXcG+dEiXfN7lnL8JA2EOfo/kNVveOeFaLZucjO26Wqo9LY5gV
	u/VlOMF3XU3a/3uJm56Tx1ApCFF20WdlypOPW/JdI2mULnIcEQCCYtMYj9xvlGGecU20zDsD5PV4G
	fseacckgFgskXcC7eudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHkJ-00DTJG-06;
	Thu, 07 Dec 2023 17:01:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGf1-00DI8Q-1d;
	Thu, 07 Dec 2023 15:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8X+6xpGvGMK4DaOOfocn5mZ/84gxhJwU8WJdEmQq88g=; b=VtwxTBUEVtqzQVvblziSe5QmDM
	x2OWbX5BLCKC4ryWh9h3fnyxgJW/buNHM62RDrL7onVsCSIlfnHAeRce/T9IKXcrLyfMnMlrhNJE0
	MkpHPrfIfviu+I8hbHpIo4UGoBT7L9VgSJvKZtTUuijf7EpUdrixX0/ZyqZRMDZw4m0tbmTI62f3A
	QsyRi/0mwrGv3+BtpktoMXQv+kPqwjVgsw2WQIE+RQApcGGdLbR+R4EoB/DBpAEI89uciL4Owctrq
	ORlKsHvlH7ZwBgbuVCbhnJi2CYZChog72D07b6crTPg2G/5yZQCeWjIcrL0jnLBSH15/DuRr6zq7x
	15RPRFMw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGey-0062kY-1P;
	Thu, 07 Dec 2023 15:51:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DD34C62171;
	Thu,  7 Dec 2023 15:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A14BC433AB;
	Thu,  7 Dec 2023 15:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964290;
	bh=pVOwlxGRG4Yx77sVCEVDWc/W+8/UbYOVd7SBFXh+HU4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HR0Qz2SZALMK22ZmWNxsgFQ4gG7E5jrzyzscGzHC910+1LakOCMMg4V9f+t+mZF/r
	 +4TjHxb+bXyO+nSa7Q060sIgoudPhIQlI3VmgZccHz/N5FFEf4cpUysi4dNi3XSFBh
	 mAqBJpQ1tXt9adZJHlWKk+X7Z04xF1coLwz+BhMtb3GusWUNsEzmhpUGU5MiQ1t9fw
	 rIKS+WpuRKnoOP3eCK+gu9co9qkKQs+XMMgWSD1/ONJZB+OodSwbZGZJZFnpc9Ik5B
	 lOrKL0tYNB81MjiRLBh1duXDbaqwBnYzrA45h4U9/iM7zAi/5q/Ek/fNL2I/B3CBsp
	 gZaiI6vWSx2fw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:50:05 +0100
Subject: [PATCH v5 42/44] drm/sun4i: hdmi: Switch to container_of_const
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-42-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>, Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=mripard@kernel.org;
 h=from:subject:message-id; bh=pVOwlxGRG4Yx77sVCEVDWc/W+8/UbYOVd7SBFXh+HU4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9udLS3VmzdvuRS84fOEDBUVl2NnNfrXmu2O2ffnq
 Ij/mnVhHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZiI/AVGht2JzZGltRzebRPO
 B5ZG82mzSNxnkhFXlX/NLa47Yf/rB4wMk57+OfxKe/GpI0+mGhXzSFifU+49p3xu15sdLz8Jsxq
 f5QEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155132_685154_F4DD0445 
X-CRM114-Status: UNSURE (   9.34  )
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

container_of_const() allows to preserve the pointer constness and is
thus more flexible than inline functions.

Let's switch all our instances of container_of() to container_of_const().

Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index bae69d696765..c276d984da6b 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -30,19 +30,11 @@
 #include "sun4i_drv.h"
 #include "sun4i_hdmi.h"
 
-static inline struct sun4i_hdmi *
-drm_encoder_to_sun4i_hdmi(struct drm_encoder *encoder)
-{
-	return container_of(encoder, struct sun4i_hdmi,
-			    encoder);
-}
+#define drm_encoder_to_sun4i_hdmi(e)		\
+	container_of_const(e, struct sun4i_hdmi, encoder)
 
-static inline struct sun4i_hdmi *
-drm_connector_to_sun4i_hdmi(struct drm_connector *connector)
-{
-	return container_of(connector, struct sun4i_hdmi,
-			    connector);
-}
+#define drm_connector_to_sun4i_hdmi(c)		\
+	container_of_const(c, struct sun4i_hdmi, connector)
 
 static int sun4i_hdmi_setup_avi_infoframes(struct sun4i_hdmi *hdmi,
 					   struct drm_display_mode *mode)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
