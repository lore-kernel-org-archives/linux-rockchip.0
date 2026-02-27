Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EFFEFEFB51
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 20:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ywd4nVTaesoZ9f/oRKu2xquW31o52EzvH6PggS2DIuY=; b=j/lxIwygT6ELX9
	QE4bInNEKLy6Q4slo+6T/r/kAeI+wNaYkSzqgLXJEscAMQtrus+adIdPOaL7GZ2IkbAd8RcVdU4j9
	uX5XMp7/ITC/8tA/4fbQMpj+0DiQJuSOe4mfEMQx3v7hnsb1kiFYgQWCOdy6U/zr6RtAlrrVa5WtH
	xu9XxBU9eqvpRmEAFS+fCZgIeb2lMqXHZ4NA4/pQLDEGN43Z4/owzoVcuqgbGjCvC9c4VfUrqUrSA
	tj/YDJr0SNYK4ZOKt1sVO78NRvcFhkl8ChuuV/iO5wrS0w565H6YGiFuJh1kQAYaFkwG7+Zn8DNF5
	fFppXc21VbuPRSwYyI+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4lg-000000098cW-05gk;
	Fri, 27 Feb 2026 20:49:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4lc-000000098ZS-2DwJ;
	Fri, 27 Feb 2026 20:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772225331;
	bh=bUeULh1bnVKovxRmlxehE6KS7aqNBCqPFyvaWOEsoaE=;
	h=From:Subject:Date:To:Cc:From;
	b=ekEaWw1uHuEz0iWpTlf7zG60N1dzqsUimUI0n7bx/xvqftKi5TS1D3FCMNmggdH15
	 nip240uzI3bC+sOV8/OHY8BKzO+U3KESiaX+LJuDTU5hdz/nyF19JOtVbOpEUwy2H2
	 nFG6mRz4JB6hSMOKVCGAxx27/gF8KCMaI21JIexzBmepPZApw6kf+9mFzcd2NqJPpe
	 kLTjON2UczI2jLr009ZWvx9fb2AVXa6s6axkOohMwRy+ggic0yZzQ7Pxjjdm6IZqcQ
	 ZtkEM8UHO29BkkEAX61miqbj6HTB7BAWlet6Q1SF2oqLc452ZSEViEuj67tw8dzuBz
	 E7iPV6xRgfL3g==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AF4D717E0E67;
	Fri, 27 Feb 2026 21:48:51 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
Date: Fri, 27 Feb 2026 22:48:44 +0200
Message-Id: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3LQQqAIBBA0avErBuoSTS6SrSIGmsoTDRCCO+et
 Hx8/guRg3CEoXoh8CNRLlfQ1hUs++w2RlmLgRrSDZHBffV3wuU80EriiMoo0roj22uCcvnAfyj
 TOOX8AXle+u9hAAAA
X-Change-ID: 20260227-hdptx-clk-fixes-47426632f862
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_124856_768935_57D7D58A 
X-CRM114-Status: UNSURE (   7.77  )
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

This series provides a set of bug fixes and cleanups for the Rockchip
Samsung HDPTX PHY driver.

The first part of the series (i.e. PATCH 1 & 2) addresses clock rate
calculation and synchronization issues.  Specifically, it fixes edge
cases where the PHY PLL is pre-programmed by an external component (like
a bootloader) or when changing the color depth (bpc) while keeping the
modeline constant.  Because the Common Clock Framework .set_rate()
callback might not be invoked if the pixel clock remains unchanged, this
previously led to out-of-sync states between CCF and the actual HDMI PHY
configuration.

The second part focuses on code cleanups and modernizing the register
access.  Now that dw_hdmi_qp driver has fully switched to using
phy_configure(), we can drop the deprecated TMDS rate setup workarounds
and the restrict_rate_change flag logic.  Finally, it refactors the
driver to consistently use standard bitfield macros.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (6):
      phy: rockchip: samsung-hdptx: Fix rate recalculation for high bpc
      phy: rockchip: samsung-hdptx: Handle uncommitted PHY config changes
      phy: rockchip: samsung-hdptx: Drop TMDS rate setup workaround
      phy: rockchip: samsung-hdptx: Drop restrict_rate_change handling
      phy: rockchip: samsung-hdptx: Simplify GRF access with FIELD_PREP_WM16()
      phy: rockchip: samsung-hdptx: Consistently use bitfield macros

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 215 +++++++++-------------
 1 file changed, 92 insertions(+), 123 deletions(-)
---
base-commit: 7d6661873f6b54c75195780a40d66bad3d482d8f
change-id: 20260227-hdptx-clk-fixes-47426632f862


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
