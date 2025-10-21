Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84C7CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 10:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yJ/1Z8Ug/zjtlPbHZVGPoSTojoEtQWiZZzal67WLvZs=; b=IHPzzY51mTlKyg
	zY46v70dx+o31ULtG1bDWteeC1QDYJ3C0Bsnajtl5mWmZVEdOcdojo62QfeG+FOYhD6nSkvALbRHE
	gjJ7+JD9VFxlUM9OVPy7kF8sk2RtDP1cH2k8ra0vBhIAo+VsR4HbnqhmWpDCpIDqbg09OLXSRJ2uI
	6BJ8AVrP66g3sGdZFo2gfmJMsA1eexz+YBi5+dvyK/rItc68/aLNqsy6tsMQSAJUVpiz3SvWjgXAz
	B3xU4O5Wq5F+Q1Y+IzWj+F0r7VrUBDu0SBSkZJN+Gn19ldZaWz/2gG5byJ0auCZ/ogxXBl0Rcx/6C
	feSBl5RIiluYVsnGhl5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9Sq-0000000Gayo-1AYh;
	Tue, 21 Oct 2025 10:19:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB9Sm-0000000Gavv-1XPJ;
	Tue, 21 Oct 2025 10:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761041968;
	bh=WMHACjCgeCP7hXg1N7fliMXhe6mJU1JutnrJGt/SU24=;
	h=From:Subject:Date:To:Cc:From;
	b=YzdC9JNI3agIUERz01h/HciBT86ZR7IoKC0E3J7egjMeL5JCigqLa1cTSkt18aOkF
	 ZtldKxwqsKrWxAscs5sq7KD+ZHcxpvGk2bEJsSycjiIjuW3MOFC55e4vdG5uGmeBRF
	 cSYhdcpmV+ERiH4WdCEsrNjoGC8ysH1zLG23EUslmxuAwmA9o/zZYOVDmmX0tsRtIi
	 1ba0ICc3uK1mBCJ5hETxf6qVp9wkYsGdmsTCQuEJVAaKhfd732jtR6g+rPFwsnyV2u
	 g5h3kegHb53iz3Fr07IT1ZbQL3VMy92HzBeTZ+4kxafpzrme7bHrTEjcQDtiYBHZjL
	 cViIEiWpsbNMA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 514EE17E129E;
	Tue, 21 Oct 2025 12:19:28 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 0/5] High color depth support for RK3576/RK3588 HDMI
 output
Date: Tue, 21 Oct 2025 13:19:13 +0300
Message-Id: <20251021-rk3588-10bpc-v3-0-3d3eed00a6db@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACFe92gC/3XP0QqCMBQG4FeRXbfYjh6bXfUe0cWcW47K2WajE
 N+9aUEgdPn/cD7+M5KgvdWB7LOReB1tsK5LId9kRLWyO2tqm5QJMEC2A079JUchKGd1r6hAYwo
 FIHSZk3TSe23sc+GOp5RbGwbnX4se+dz+gSKnjOoKZSFrZQoBB+WuV1k7L7fK3ciMRfgBAnAFQ
 AIqxBKg4WUlcA1Mn3le3x/pyeG7cZreRnj0jQIBAAA=
X-Change-ID: 20250721-rk3588-10bpc-85ff4c228e63
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_031932_569069_98AD7917 
X-CRM114-Status: UNSURE (   7.37  )
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

Since both Rockchip RK3576 and RK3588 SoCs are capable of handling 10
bpc color depth HDMI output and we've already landed the required HDPTX
PHY driver changes to support the setup, let's add the missing bits and
pieces to VOP2, DW HDMI QP encoder and bridge library.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v3:
- Rebased series onto latest drm-misc-next in order to:
  * Replace HIWORD_UPDATE with FIELD_PREP_WM16 macro
  * Remove dependency on HDMI CEC series
- Unconditionally used DIV_ROUND_CLOSEST_ULL(), as suggested by Daniel;
  also collected his R-b and A-b tags
- Link to v2: https://lore.kernel.org/r/20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com

Changes in v2:
- Replaced patch 'drm/rockchip: vop2: Add high color depth support' with
  'drm/rockchip: vop2: Check bpc before switching DCLK source'
- Rebased series onto next-20250825 while adding the HDMI CEC series as
  a dependency
- Link to v1: https://lore.kernel.org/r/20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com

---
Cristian Ciocaltea (5):
      drm/rockchip: vop2: Check bpc before switching DCLK source
      drm/bridge: dw-hdmi-qp: Handle platform supported formats and color depth
      drm/rockchip: dw_hdmi_qp: Switch to phy_configure()
      drm/rockchip: dw_hdmi_qp: Use bit macros for RK3576 regs
      drm/rockchip: dw_hdmi_qp: Add high color depth support

 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c   |  11 ++-
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 108 +++++++++++++++++--------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c   |  58 +++++++------
 include/drm/bridge/dw_hdmi_qp.h                |   4 +
 4 files changed, 121 insertions(+), 60 deletions(-)
---
base-commit: 7ea0468380216c10b73633b976d33efa8c12d375
change-id: 20250721-rk3588-10bpc-85ff4c228e63


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
