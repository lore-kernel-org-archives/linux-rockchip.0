Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED56BC021B3
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 11:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DKJMm0C6lI9IOCtNvxsaCuY6k6hnwDvNIWJSeolXLgw=; b=AUhnuiA1RJHeoV
	+7VuT3a2uxki/wRqE8Kah2RnW2Qhy8F4UWvCa7rMX5/niyYsd2hH2vZHNerMegTk2i0w0M9SVMLpa
	TeL6oPPWKoa4JMw5/YR/b3m/rqsKMh93oWjdBO0B/8j3AyJobTdl8jPYys+z4l27fHT/wO5btD4MW
	FOkrhgGorSgAdH1y8gYcjoHq6cTGpjjO+EoUcUTeVT8L80qCGCMANm7jimpJMsktBVbYBrogYI8Ot
	zfhb1FzoSVFPu2TchAgsYI0gv7NbWSzS6z9/M3E3Xa4vKEz2aTeSDCCv94ziytsn+Oq9/h/FbAUSu
	sGmKTie/oXmK6FMHgwAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tm9ne-0000000Avc8-3GrD;
	Sun, 23 Feb 2025 11:05:30 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tm9kh-0000000AuoL-3pgH;
	Sun, 23 Feb 2025 11:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740308545;
	bh=ujHLAB81bLDG1rFjYTdk8D4Cj+5uJUkDjmnklWgTiik=;
	h=From:Subject:Date:To:Cc:From;
	b=J/V4EFkj7fkhmQYQbOzNAV2yL40vgJCy4A2toGa8Q/dE3HefV2Yyu4ydtHlls222Y
	 3Fs1BNuUnL19atnl1HV96ZSmRtBwCm4v8xGz4eEW848feY5gauMhm1bmTuLlzh4lAs
	 bxair9Nf1NxHuRETdf/bpvRzqVo4mvR95wJElcdU3eshtZ8QQfXirv0vp4eiOg8oXH
	 jtFNoB9X2QyU0nb5AXZKAMIOnjHzSpZ/VzknIdCZsVjtfI888FtZ0w5ah8+VnLxnPd
	 DnyfsxN2+EDTLSrseGM5neMhExRo215BSXqjapmxB1CyA9rk0MGqohrQJ3jlxfiJoO
	 +CFpWGy4TxVEA==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 8FB6717E0199;
	Sun, 23 Feb 2025 12:02:25 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 0/8] phy: rockchip: samsung-hdptx: Support high color
 depth management
Date: Sun, 23 Feb 2025 13:02:07 +0200
Message-Id: <20250223-phy-sam-hdptx-bpc-v3-0-66a5c8e68327@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC8Au2cC/23NUQuDIBDA8a8SPu+GXaVsT/seYw+mNoVK0ZAi+
 u6zYDBG3NP/4H63kqiD1ZHci5UEnWy0bsxRXQoijRjfGqzKTZBiXSJl4M0CUQxglJ9maL2EqqW
 NZMhZpzjJdz7ozs6H+XzlNjZOLizHi1Tu26/GT7RUAgVaSdS1Yorf+EO6vhetC+Iq3UB2MeGPU
 uKZgllpuGYcJc9T/yvbtn0A3SXvX/wAAAA=
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
X-CRM114-CacheID: sfid-20250223_030228_148527_4D567680 
X-CRM114-Status: UNSURE (   6.10  )
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
Changes in v3:
- Rebased series onto next-20250221 and fixed several conflicts due to
  the recently introduced eDP support
- Link to v2: https://lore.kernel.org/r/20241212-phy-sam-hdptx-bpc-v2-0-57e672c7c7c4@collabora.com

Changes in v2:
- Added new patches providing a bug fix and several driver cleanups and
  improvements
- Link to v1: https://lore.kernel.org/r/20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com

---
Cristian Ciocaltea (7):
      phy: hdmi: Add color depth configuration
      phy: rockchip: samsung-hdptx: Fix clock ratio setup
      phy: rockchip: samsung-hdptx: Drop unused lcpll_config
      phy: rockchip: samsung-hdptx: Setup TMDS char rate via phy_configure_opts_hdmi
      phy: rockchip: samsung-hdptx: Add high color depth management
      phy: rockchip: samsung-hdptx: Cleanup internal rate handling
      phy: rockchip: samsung-hdptx: Avoid Hz-hHz unit conversion overhead

Sandor Yu (1):
      phy: Add HDMI configuration options

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 163 +++++++++++-----------
 include/linux/phy/phy-hdmi.h                      |  21 +++
 include/linux/phy/phy.h                           |   7 +-
 3 files changed, 111 insertions(+), 80 deletions(-)
---
base-commit: d4b0fd87ff0d4338b259dc79b2b3c6f7e70e8afa
change-id: 20241206-phy-sam-hdptx-bpc-3b05c6276fd7


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
