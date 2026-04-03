Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC68BD730AD
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Apr 2026 18:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=STCfixOUGFIjG350mrgGjMMff0UOE7sgY9Ycrq1tSLo=; b=H9kG7MeoDQeXlL
	97TLGqiI1LAHi5yurZO63BEWLbPS0XdrlNIAusQzXxrwLIt8bNreTt25RuRpGZDhiR2a4XiJDd0Nn
	cz+MnjQUb1U94nSTF4ytkGmqQKW3SKTZ+bmexfn6Q7Q0PGRLH51c7a0wYBu45O0dqpx7BzTBojz+F
	Q5tq4g9E5QfqgdSAXzDpNvcR0CgL/1yj2GGzcDfVDSZ8TLTeowCz+xpHk/iaeRTA1y3C+9t3MvszH
	BC1KTUyA33izzfXVxokSm5e2eQ2vy0b2ktE3NJGR5vSAoeBE9ynSpoQb2KPxv5tt5mwDtXJx2J+gI
	pd5q5B6/srJzPci1eTJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8jeC-00000002Ryf-3CPS;
	Fri, 03 Apr 2026 18:53:36 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8je9-00000002Rxx-2V2O
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Apr 2026 18:53:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1775242411;
 bh=JMoGga8j+B0s/NUIBMqajdD1ehf1AEFaHBht6CmNsMI=;
 b=bOrYcKpefX0XgGM4/haNLCCAetBLTBTXfeP7di0Bkj8T7q47wSkRUaWNlE/hsAFGNZEvOjuFa
 poeFMz3pptX1z9Q9fjGlAEXZQ/dxhtxk4Qbcq9DNR7rthG4+TjysEEZicuBr2Wf9I9ghtD5YNjS
 wcg/F74V9jYDXbQ+nwwWEZvQ/1aQa4EI3JeqDRHNAx5/ihuEP34ndOlpHmC7dEvQNYf4ITfdM4O
 c4ZnMQrLVu83Q5XL/QVIf+W4DUs1RZ3j1R0+5Ornhdcu7W/jOJrwY0gvXBw8d33AqGt1kummwAV
 G+qVjKoWxORlucf7uZTUcbanx6MFm8hYpj6CD2LL39Cg==
X-Forward-Email-ID: 69d00ca6dc98192b40b892ee
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.6.68
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 00/13] drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
Date: Fri,  3 Apr 2026 18:52:46 +0000
Message-ID: <20260403185303.80748-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_115334_107364_4A155500 
X-CRM114-Status: UNSURE (   9.05  )
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

Future planned series will likely convert dw-hdmi to a hdmi bridge and
add improved deep color support as preparation to add 10-bit and yuv420
output support on Rockchip RK33xx devices.

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

Jonas Karlman (13):
  drm: bridge: dw_hdmi: Disable scrambler feature when not supported
  drm: bridge: dw_hdmi: Only notify connected status on HPD interrupt
  drm: bridge: dw_hdmi: Call poweron/poweroff from atomic enable/disable
  drm: bridge: dw_hdmi: Use passed mode instead of stored previous_mode
  drm: bridge: dw_hdmi: Fold poweron and setup functions
  drm: bridge: dw_hdmi: Remove previous_mode and mode_set
  drm: bridge: dw_hdmi: Invalidate CEC phys addr from connector detect
  drm: bridge: dw_hdmi: Remove cec_notifier_mutex
  drm: bridge: dw_hdmi: Use delayed_work to debounce hotplug event
  drm: bridge: dw_hdmi: Use drm_connector_helper_hpd_irq_event()
  drm: bridge: dw_hdmi: Extract dw_hdmi_connector_status_update()
  drm: bridge: dw_hdmi: Use dw_hdmi_connector_status_update()
  drm: bridge: dw_hdmi: Use display_info is_hdmi and has_audio

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 209 +++++++++-------------
 1 file changed, 80 insertions(+), 129 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
