Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057A8C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSB3QEb4KkbGaqXqoD4DYcMdkjIqWREY7zYqyFG1IJc=; b=HySFAUnr9ngy57
	tVVy9Xx/cTFZVwmTc+fe+lGsYKssI2Wb+y7l42l4sGRCVPUOT4WvgOYXvZFkbVH5St3ewgOvVMTOa
	B31F3sOyrZFA1FPBk1pStXQyCEyejR5U8HrDRfawLjTpJ9bW3NMyx/OgRx5Lik2XH4y4dbfmjwZlc
	wq+cdWJc3+JfyFjnDld9gIxMZ3ivkButjPXWejRN4yiq1ZxrKyj0+PWLvpWwylKhxWUueRzMCEEKH
	Kb5TsJDacTpncnuq8HTCQBMR8b/tku5RX500ROV/tbp+c++cA9X6jqTF2DjG0CRj3uOLGPEsCxeyb
	MDKujFf7svnW1ksEBfQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrye-005m4s-28;
	Tue, 31 Oct 2023 16:52:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrwK-005kQJ-1g;
	Tue, 31 Oct 2023 16:50:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 28E6AB80E91;
	Tue, 31 Oct 2023 16:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F238C433C7;
	Tue, 31 Oct 2023 16:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698771002;
	bh=cUa4ZlT2wSGqeoteiiVi9GhpPWDTIxakVCkbOrAWqhE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NDHu8I3e6Hg5NvAC1YdHdSg5nPfkzEHk0OwWTpizUn6LGUvIInjWC92gwafav0d30
	 yenTJ8JYIvgaRV57zULJn6bkengJlY2YUqMLgpVPXfr5skSZuzgud7sDtGrtYb1P1B
	 qxuakoc19SKz7HvjMrmGKmR8X+a8lVOa0c6aQOH5zGdABG78BNZxF/xJf9BbckM9Am
	 bPrZiuadu7CBrh+u8MYSSmp+QHJCbz/PKEtQzyByEQ9pJxq8yyHMbP1ATDYLzuxtw3
	 bAXCOCLa9GG273hFe3FQuFFEpepGsSVXyVVzNtiEtUSHM0lkghlcpGQ60hgz+xrAxO
	 +FL1mVlp9L0bQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:44 +0100
Subject: [PATCH RFC v3 31/37] drm/rockchip: inno_hdmi: Remove unused drm
 device pointer
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-31-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
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
 h=from:subject:message-id; bh=cUa4ZlT2wSGqeoteiiVi9GhpPWDTIxakVCkbOrAWqhE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+vdnCexYdnzywSK7W6qnH3i/61ApOyCR1TBZYPG5l
 KDlBYonO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRA72MDLttbjUZKj+L+tK+
 dI3E7tcWRatm125WZF1+ad/pi1vvubIzMlyXOf/LbqcTj8MJX3kvnhob27oZjSJXrlkuTnK5MKl
 rIQMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_095004_738060_B4F49AD9 
X-CRM114-Status: GOOD (  11.33  )
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
index ed1d10efbef4..d0b463d166fb 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -39,7 +39,6 @@ struct inno_hdmi_i2c {
 
 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 
 	int irq;
 	struct clk *pclk;
@@ -732,7 +731,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
