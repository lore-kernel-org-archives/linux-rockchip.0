Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EECDBCD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fW8YMun5VfSOoNBObQCwzhLXthbp+MfJGRQndRPVmLA=; b=CMmcsIKc2pujPv
	4PbYfipwnPnd/AY94WsXA6TMby4SpPH5HkbOpjyBPxPv/OTvk1W0V6PpdOTKPRIMx7TqSjo0Sws29
	hvSs/94+LscXlVB1qW/huV0xWWtgMvMAddidCB+randztiVgkUlV9zVT3sJ7cGGWl59JETE0A/woK
	b/vinUQY5xIdkh0TGwg/1CaPQEaD3ONudhmr02GVhsF1JxRJ4iMwxi7SZqcGPZsBxPC86yVn0Wjkg
	Y7qFoE3I+1IxdRTEKwjcCokX+MD3YZidUF2JKdqWFZNuRIGEuBKHf0aHkTA1eOS/y5fgl3hKua2PF
	b0Hq8vlU/x1h5Lbn18LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyJ-0000000Gpsi-2OUW;
	Sun, 08 Sep 2024 13:28:55 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyE-0000000GppH-1a6q
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 13:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1725802110;
 bh=GBZtSa7NV3xr9PArtmtkDJNem8kQ3e2llQ47ktafnlQ=;
 b=QbzNxNnwSbAb4TQ0yFDTzC/y6DCt00xusYXBD0R775cQFANiwsAxdsWUidwdgFnVI/q9VQAHb
 ecYAQkXR8UTg+RAoSPT39McuBqkm2XuMiEI6O8WMWJH7WT6VuTsSIMbVGeUKjPoqBWmxcRi5ZgP
 og27kIcMHxUjoxSfvSDRTfuBm6sY8wb+ttpc95L4LkPekY9rRqPb29dw6vIqMiBMFW2GGtoZoNt
 GS7xC0b94GAvEcaHrB65JqOK1rl0snStDeHcUwnY1/KHZAGUfJPToHdc6lSrEDQF0sdBm86uMk0
 uD315y37RqcRausvaNHsn+kHR2g2ipfTSt6MTiCsxOqg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 00/10] drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
Date: Sun,  8 Sep 2024 13:28:02 +0000
Message-ID: <20240908132823.3308029-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66dda67e3c9877b4595878e3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_062850_768205_96EBA569 
X-CRM114-Status: UNSURE (   7.79  )
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

This series ensure poweron/poweroff and CEC phys addr invalidation is
happening under drm mode_config mutex lock, and also ensure EDID is
updated (when the dw-hdmi connector is used) after a hotplug pulse.

These changes has mainly been tested on Rockchip devices together with a
series [1] that add HDMI 2.0 4K@60Hz support to RK3228, RK3328, RK3399
and RK3568.

Rockchip use the dw-hdmi connector so this should also be validated with
a driver that use the bridge connector.

Changes in v2:
- Add patch to disable scrambler feature when not supported
- Add patch to only notify connected status on HPD interrupt
- Update commit messages
- Collect r-b tags
- Rebased on next-20240906

[1] https://lore.kernel.org/r/20240615170417.3134517-1-jonas@kwiboo.se/

Jonas Karlman (10):
  drm: bridge: dw_hdmi: Disable scrambler feature when not supported
  drm: bridge: dw_hdmi: Only notify connected status on HPD interrupt
  drm: bridge: dw_hdmi: Call poweron/poweroff from atomic enable/disable
  drm: bridge: dw_hdmi: Use passed mode instead of stored previous_mode
  drm: bridge: dw_hdmi: Fold poweron and setup functions
  drm: bridge: dw_hdmi: Remove previous_mode and mode_set
  drm: bridge: dw_hdmi: Invalidate CEC phys addr from connector detect
  drm: bridge: dw_hdmi: Remove cec_notifier_mutex
  drm: bridge: dw_hdmi: Update EDID during hotplug processing
  drm: bridge: dw_hdmi: Use display_info is_hdmi and has_audio

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 150 +++++++---------------
 1 file changed, 43 insertions(+), 107 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
