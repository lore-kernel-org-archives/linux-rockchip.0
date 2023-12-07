Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5AFC10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI8f4lDrIE1urWlKTSoQ1vZHhaeL+POIm+ZEVE1xQIQ=; b=CDOmPrT7PMOdMj
	afW6QfOMKVvJdtXbKjkYQJ4wqwwBksVfK5hvMWmU55SB2r7d3jXMV/dgEIX6TqToOPHiNdZFRPIrj
	J8IjSjcMbjO8xZJwj23+p+G+L9B+o6JeVTysX3vMbTgdFXANKmb19YncslmARXBe8093loOEi9JZO
	V7CNvBNskulQtq2D6tr85M+rgNT0Wy/mmxycPBc1MJr+B9Kmlz0piMFr9g7ZLmFavbd71KIq90uF9
	Iqh8cGio79y6/Xhw4ADFErrHkTLvzSH9rgrwB8khyoVLMER27UMReSf5miGr9Vhcu2zIew8Qgd9vd
	N+PbeyHq3vnu7Wb+L1oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfy-00DJF7-2H;
	Thu, 07 Dec 2023 15:52:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGem-00DHl3-0D;
	Thu, 07 Dec 2023 15:51:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DA7C961E99;
	Thu,  7 Dec 2023 15:51:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF4FC433BD;
	Thu,  7 Dec 2023 15:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964279;
	bh=1We2UZx5ZDbQPKfDfMqOP+mc5xLMdSsl/KcWM2D6+wE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SHyNH22fXWqD6K2WzHGm1reK1De82pQc69qwhJMSx7w4vrWXRCxnZ//ya/DmJPGAU
	 PcuGwVUYVOVt7VEDmNQDQipQKdSJP684ypbtURJqCDkUMx/TVp8fav4YrPR/aYeKUo
	 VlIqK9qnKKHXRkHFLxZy6vJEuFXpS5vIm3jqjMHAuyvp0up6n2Siqu9upgOo+N0fN0
	 Fwqyuv/ZQC/bMHEZl6f0A404XA/5MennZHMYJR2IlytxuvOW1M5gUkntVT2YOpiYbj
	 4ffjBsfZ/Mwz4+HUxmuqKhGbYV13Y4Dj5k1ZlW39eeaNAngloVZ0f9PApkRzOOVje/
	 0UCnH4oyIotPA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:50:01 +0100
Subject: [PATCH v5 38/44] drm/rockchip: inno_hdmi: Remove unused drm device
 pointer
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-38-6538e19d634d@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=911; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1We2UZx5ZDbQPKfDfMqOP+mc5xLMdSsl/KcWM2D6+wE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9s8+Dfstffv7H7r3v14If+W1xOkXxy6K77CsefG/
 kkF2x6e7yhlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBEGOIZGVby29hO4uf+e8NG
 Q+LRtfWN+31drrV7nZsl+iL8t4SnmjHD/5j+5qM57WtWC2rf4daOUtnK+e2c5J/rGszCn5Z8W+i
 7jBsA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_075120_196284_E062B319 
X-CRM114-Status: GOOD (  11.43  )
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

The drm_dev field in the inno_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 77b530f377c0..0f3ec6eaf270 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -39,7 +39,6 @@ struct inno_hdmi_i2c {
 
 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 
 	int irq;
 	struct clk *pclk;
@@ -648,7 +647,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
