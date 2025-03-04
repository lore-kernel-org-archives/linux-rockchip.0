Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CCE0C282D1
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 02:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AlufswJWPBVFcNA9dxaA2zWbJUMC6mgP3vIU6aLS0M=; b=COj6E4zdrVsc3a
	GH3vYRxiRpWQjTiNa88jNtA5XZkjnD1soudASahKHUs3WD+/irpmG1BG7uM8ilIWoUJ4r6I4Vxcvm
	de/Z5U9ponvkSlFNMmBQWzcQ6yrVe3/cM6Qrz5UQEKKZIIdFdK9XpNIxaHuuBSsgkmm0kQebrsnwf
	l7d7dliY2fzgf2fLyHwDRD7w2D4w8fQ0ttL60XyMgh56O/LWn95VHmCMPxzsHmRdmX+DPe9KTjUAe
	8LKEpquzfKbwnAAnMHnrsrkVEslM9Xp4nyND8oO7JLl8X+H+ZDwqH6jh1xFRq0f0LkaeoIczuULlE
	yxJ0eYLUNTgx3VhKbYqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHek-00000002r3x-1jfs;
	Tue, 04 Mar 2025 02:05:14 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHKW-00000002o1j-3kEr;
	Tue, 04 Mar 2025 01:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741052657;
	bh=LBjWJrMp2bknkYtBu/515aGST55w/wc355zwRJ0QyN4=;
	h=From:Subject:Date:To:Cc:From;
	b=S58iApqS3FFyg+uA6r/pTZJsDth6HISAI3/sq9P9XzeqZbXRsrUeLTB+9764EDmtT
	 tkfB6Fl+SxR5iblOwj4xFGPzP1uhJ0S+WERSAkcwR75jZT+FXZ/3r0ryk95DeUdjks
	 2cUnmlZuC2lz0M17d1iqkxOdYFt+L3Hdetd5n49aAY3W4EJnQXXNnT65ZRSl2Udd6H
	 nTOwsyRqKUE+J1P6zkT6ZJHLJ/XXJvDvSF1OIdyaHPKKG0fJNIKj7zEEEIhIBNQ1Pa
	 IYN4qLfjKIbyUSWpOHFNTicR9cgJb9z/8lGytHSSkukkM3MBt6+1FhIcLb0jHgLuu4
	 GQ1BdFn81Eg1A==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 3D0BE17E0B71;
	Tue,  4 Mar 2025 02:44:17 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v4 00/12] phy: rockchip: samsung-hdptx: Support high color
 depth management
Date: Tue, 04 Mar 2025 03:43:59 +0200
Message-Id: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN9axmcC/23O0QqDIBQG4FcZXs9hR9O2q73H2IWpLaFSNKKI3
 n0WBIPJufoP/N85K4omWBPR47KiYCYbrRtSYNcLUq0cPgZbnTICAqwAwrFvFxxlj1vtxxnXXmF
 ak1JxELzRAqWeD6ax82G+3im3No4uLMeJqdi3pyYy2lRggglVYJjmWtzFU7muk7UL8qZcj3Zxg
 h+lgJwCSSmF4QKUSMNyCj2VkgDQnEKTwrksVWV4ReHvl23bvnPGvoBCAQAA
X-Change-ID: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_174421_121889_57BDDEEC 
X-CRM114-Status: UNSURE (   7.17  )
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

This series relies on the new HDMI PHY configuration options [1] (patch
included here for convenience) to provide high color depth management
for rockchip-samsung-hdptx, and to introduce a proper solution to setup
the TMDS character rate on this PHY.

[1] https://lore.kernel.org/lkml/d1cff6c03ec3732d2244022029245ab2d954d997.1734340233.git.Sandor.yu@nxp.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v4:
- Added patches to drop unnecessary phy_cfg & cfgs driver data
- Embedded struct phy_configure_opts_hdmi in driver data (Dmitry)
- Added new patch to provide config params validation support
- Provided a patch to restrict altering TMDS char rate via CCF (Dmitry)
- Made a bunch of small tweaks here and there
- Link to v3: https://lore.kernel.org/r/20250223-phy-sam-hdptx-bpc-v3-0-66a5c8e68327@collabora.com

Changes in v3:
- Rebased series onto next-20250221 and fixed several conflicts due to
  the recently introduced eDP support
- Link to v2: https://lore.kernel.org/r/20241212-phy-sam-hdptx-bpc-v2-0-57e672c7c7c4@collabora.com

Changes in v2:
- Added new patches providing a bug fix and several driver cleanups and
  improvements
- Link to v1: https://lore.kernel.org/r/20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com

---
Cristian Ciocaltea (11):
      phy: hdmi: Add color depth configuration
      phy: rockchip: samsung-hdptx: Fix clock ratio setup
      phy: rockchip: samsung-hdptx: Drop unused struct lcpll_config
      phy: rockchip: samsung-hdptx: Drop unused phy_cfg driver data
      phy: rockchip: samsung-hdptx: Drop superfluous cfgs driver data
      phy: rockchip: samsung-hdptx: Setup TMDS char rate via phy_configure_opts_hdmi
      phy: rockchip: samsung-hdptx: Provide config params validation support
      phy: rockchip: samsung-hdptx: Restrict altering TMDS char rate via CCF
      phy: rockchip: samsung-hdptx: Add high color depth management
      phy: rockchip: samsung-hdptx: Optimize internal rate handling
      phy: rockchip: samsung-hdptx: Avoid Hz-hHz unit conversion overhead

Sandor Yu (1):
      phy: Add HDMI configuration options

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 289 +++++++++++++---------
 include/linux/phy/phy-hdmi.h                      |  21 ++
 include/linux/phy/phy.h                           |   7 +-
 3 files changed, 200 insertions(+), 117 deletions(-)
---
base-commit: cd3215bbcb9d4321def93fea6cfad4d5b42b9d1d
change-id: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
