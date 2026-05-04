Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09031CD343B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 19:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pbntz3DFX80VYzILx/PGmF9yDNwrVTegF7JTRtjuQLk=; b=2whACUZmJgSWzk
	45/HlJaP3QeKW5kTYvI/4LnQJ35DDc1XIb+xrRIymrijsmNgaaSB7OtuEb238hoRI6GK6g1ixQmOh
	F7zszUl4Cpi/KNmnu275IEvUbIv7L2h3UlO8ZYordwFG3S595dv0Z6go4scnhMe6EFooKeMY75mSA
	kN2ixKFlti6EMAb9+JWxANG3zy1oaVgTd/b+N80BjOVJmrSJSgbBELlxB/BQpA0EXpsL7RN23Ndfo
	FKN0+u4J+uwwuJyfGW/HPequo+gKErho94o2jeuFM3zLERZmlbMGdksR0doBMtxaAgnSRwX5eO5vC
	TZKVomPDdSODcSp9PApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyhb-0000000E51O-3MTg;
	Mon, 04 May 2026 19:11:35 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyhT-0000000E4tG-31Ek
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 19:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1777921886;
 bh=wSxi9Aq16jRBEzsD8DxsIyNuqkMMC7wF41X1iPVcGUQ=;
 b=HLuRyA/XII9r5T27xGGzg0v7xOP19aATJ1Uk9LmLCMO2/hU+6+scUc2Qo5XaKnqZ8hfxxAD2f
 q0h+07O9Ev/PnyqbaBDzj5RAIXB9/tKl92v8+W53aFujClESrbuOiU7Wl0OmTxQSirIschgivko
 acFtSq15w335X6Rq0LAdHyS1mGdyWAF258S3sv8q8Qgt4WBzq0VG52e7yezLTRmZfvAt0qmo3V2
 jVffTQWSraz74rxjKSK5Mr4ixOdh+R7qeiWcYld6LxM1KOohb2Vv3RUDj5TCY5NKkZdxXKM6IIf
 8C7Ql4p2S1IqpG1rzsZ8+X4JZ8Mzpq9TBaGOyQIoSexg==
X-Forward-Email-ID: 69f8ef4a04bb1dff846bb7bd
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 00/17] drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
Date: Mon,  4 May 2026 19:10:37 +0000
Message-ID: <20260504191059.275928-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_121127_758703_CA36853A 
X-CRM114-Status: GOOD (  11.49  )
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

This is a revival of an old dw-hdmi series and is the first series part
of a new effort to upstream old LibreELEC HDMI 2.0 patches for Rockchip
RK33xx devices.

This series ensure poweron/poweroff and CEC phys addr invalidation is
happening under drm mode_config mutex lock, and also ensure EDID is
updated after a HPD low voltage pulse by changing to debounce hotplug
processing.

These changes have mainly been tested on Rockchip RK3328, RK3399 and
RK3568 devices.

Rockchip uses the dw-hdmi connector, so this could use some more testing
with drivers that use the bridge connector.

Testing with a Rock Pi 4 (RK3399) using a Reaspberry Pi Monitor with
Linux kms client console using drm.debug=0xe should log something like
following:

 Power cycle monitor using the power button:
  [CONNECTOR:68:HDMI-A-1] CEA VCDB 0x4a
  [CONNECTOR:68:HDMI-A-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
  [CONNECTOR:68:HDMI-A-1] ELD monitor RPI MON156
  [CONNECTOR:68:HDMI-A-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
  [CONNECTOR:68:HDMI-A-1] ELD size 36, SAD count 1
  [CONNECTOR:68:HDMI-A-1] Same epoch counter 10
 
 Cable unplugged:
  [CONNECTOR:68:HDMI-A-1] EDID changed, epoch counter 11
  [CONNECTOR:68:HDMI-A-1] status updated from connected to disconnected
  [CONNECTOR:68:HDMI-A-1] Changed epoch counter 10 => 12
  [CONNECTOR:68:HDMI-A-1] generating connector hotplug event
  [CONNECTOR:68:HDMI-A-1] Sent hotplug event

 Cable connected:
  [CONNECTOR:68:HDMI-A-1] CEA VCDB 0x4a
  [CONNECTOR:68:HDMI-A-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
  [CONNECTOR:68:HDMI-A-1] ELD monitor RPI MON156
  [CONNECTOR:68:HDMI-A-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
  [CONNECTOR:68:HDMI-A-1] ELD size 36, SAD count 1
  [CONNECTOR:68:HDMI-A-1] status updated from disconnected to connected
  [CONNECTOR:68:HDMI-A-1] Changed epoch counter 12 => 13
  [CONNECTOR:68:HDMI-A-1] generating connector hotplug event
  [CONNECTOR:68:HDMI-A-1] Sent hotplug event

This series has evolved into an initial part of a larger multi series
effort to:
- drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
- drm/bridge: dw-hdmi: Improve input/output bus format handling
- drm/bridge: dw-hdmi: Convert to a HDMI bridge and use of bridge connector
- drm/bridge: dw-hdmi: Add and use tmds_char_rate_valid() plat data ops
- drm/meson: hdmi: Misc cleanup and use CEC notifier helpers
- phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops
- drm/rockchip: dw_hdmi: Misc cleanup and propagate bus format
- drm/rockchip: dw_hdmi: Enable YCbCr and Deep Color modes
Link to snapshot: https://github.com/Kwiboo/linux-rockchip/commits/next-20260430-rk-hdmi-v2/

Changes in v4:
- Change to use generic CEC notifier helpers
- Disable/mask hpd_work until enable_hpd()/hpd_enable()
- Read connector status directly from HW regs in hpd_work
- Continued rework of HDP and RXSENSE interrupt handling
- Collect r-b tags
- Rebased on next-20260430
Link to v3: https://lore.kernel.org/r/

Changes in v3:
- Rework EDID refresh handling to closer match bridge connector
- Use delayed work to debounce HPD processing
- Update commit messages
- Collect r-b tags
- Rebased on next-20260401
Link to v2: https://lore.kernel.org/r/20240908132823.3308029-1-jonas@kwiboo.se/

Changes in v2:
- Add patch to disable scrambler feature when not supported
- Add patch to only notify connected status on HPD interrupt
- Update commit messages
- Collect r-b tags
- Rebased on next-20240906
Link to v1: https://lore.kernel.org/r/20240611155108.1436502-1-jonas@kwiboo.se/

Jonas Karlman (17):
  drm: bridge: dw_hdmi: Disable scrambler feature when not supported
  drm: bridge: dw_hdmi: Only notify connected status on HPD interrupt
  drm: bridge: dw_hdmi: Call poweron/poweroff from atomic enable/disable
  drm: bridge: dw_hdmi: Use passed mode instead of stored previous_mode
  drm: bridge: dw_hdmi: Fold poweron and setup functions
  drm: bridge: dw_hdmi: Remove previous_mode and mode_set
  drm: bridge: dw_hdmi: Invalidate CEC phys addr from connector detect
  drm: bridge: dw_hdmi: Remove cec_notifier_mutex
  drm: bridge: dw_hdmi: Extract dw_hdmi_connector_status_update()
  drm: bridge: dw_hdmi: Use dw_hdmi_connector_status_update()
  drm: bridge: dw_hdmi: Use display_info is_hdmi and has_audio
  drm: bridge: dw_hdmi: Use generic CEC notifier helpers
  drm: bridge: dw_hdmi: Use delayed_work to debounce hotplug event
  drm: bridge: dw_hdmi: Rework HDP and RXSENSE interrupt handling
  drm: bridge: dw_hdmi: Remove the empty dw_hdmi_setup_rx_sense()
  drm: bridge: dw_hdmi: Remove the empty dw_hdmi_phy_update_hpd()
  drm: bridge: dw_hdmi: Merge top and bottom half IRQ handlers

 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c |   1 -
 drivers/gpu/drm/bridge/synopsys/Kconfig     |   1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c   | 436 ++++++--------------
 drivers/gpu/drm/meson/meson_dw_hdmi.c       |   3 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |   2 -
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy.c      |   2 -
 include/drm/bridge/dw_hdmi.h                |   6 -
 7 files changed, 134 insertions(+), 317 deletions(-)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
