Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A31B8E77173
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 22:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VUA4SPvA1ggGl0M9PJ2Cj4WeGGEugjUp7kt3XS/TxqE=; b=GhaxmusyDoDmnu
	4fZ9MC3jwRzKvY5vmv4PkpOyqqDaa+qJMcNDIyzG9X3/fWEj2YOBFgFCUq56D7Tdwx73tAKAgCEmE
	Ch5vE+5EEXRklPR5nZ4WMNbn1HYDBZcAcSyjEQ1cf1Xpijb7NvBQJCwiSK54CFEVHigEIFDd6sj9H
	YAW1pvETQvO3bfdU4Z0X+0P0lzD4Cg5LJNd2o31enKBvDjZGv4lTq27GocwAgvv7DnQ7jhrTni8uw
	JEJGsTaZwXbcdiVfoMRSfBxUIdApF+LCoa7DVD5ft9FwqNVFNrbQTDdSkVKp9uAUTepWO5DAlljwM
	IfBsH+Hu0xKD8NjO2fkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJgSc-00000002r8P-0ZtQ;
	Fri, 06 Dec 2024 22:06:06 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJgQY-00000002qgX-3OXR;
	Fri, 06 Dec 2024 22:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733522636;
	bh=s2tNhONfJvsToFPtlcQMRNzdtAz7bW3fSRxtreTVedo=;
	h=From:Subject:Date:To:Cc:From;
	b=ZLXrpiIhMLNJ1b5bxOOjBF59nD8hOd3/GHloog4/fGIe5q+fNSBnKN40/+zzYjcOS
	 6OWgLea08YCaioDX4rRalWK19tRA/v1+ckCp01MQGiMRwyenF5WxpkncfEf2S5tgbf
	 t7HwqfP9iL75hyvqTcZ7eHGc/T/phYH/JePuno2lFZ2wFZ+t2EOPJh0ELbYrAVCbzE
	 S+auEEYdPs7f5n4e2Q6xIospcA29YLAifIcIu23xPzrWns8D5TXeQT6VISyrAB/7UV
	 3RKgTzeKd9ATRQkaMe/iCUawS3fq9XPM4YQu4j+5UqQwrwlTtSJGHrxw3s3eE22mR7
	 7TfNDoxio4xaA==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6FA8517E3805;
	Fri,  6 Dec 2024 23:03:56 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/4] phy: rockchip: samsung-hdptx: Support high color depth
 management
Date: Sat, 07 Dec 2024 00:03:40 +0200
Message-Id: <20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALx0U2cC/x3MQQqAIBBA0avErBswK4OuEi1Kx5xFJRphhHdPW
 r7F/y9ECkwRxuqFQDdHPo+Cpq5Au+XYCNkUgxSya6RQ6N2DcdnRGX8lXL3GdhW9VnJQ1gxQOh/
 Icvqf05zzB4GIvOJjAAAA
X-Change-ID: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_140359_018790_99763FB4 
X-CRM114-Status: UNSURE (   4.35  )
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

[1] https://lore.kernel.org/all/43757beec6cd418fc17252283de38009d531c7c7.1732627815.git.Sandor.yu@nxp.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (3):
      phy: hdmi: Add color depth configuration
      phy: rockchip: samsung-hdptx: Setup TMDS char rate via phy_configure_opts_hdmi
      phy: rockchip: samsung-hdptx: Add high color depth management

Sandor Yu (1):
      phy: Add HDMI configuration options

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 59 +++++++++++++++++++----
 include/linux/phy/phy-hdmi.h                      | 21 ++++++++
 include/linux/phy/phy.h                           |  7 ++-
 3 files changed, 77 insertions(+), 10 deletions(-)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
