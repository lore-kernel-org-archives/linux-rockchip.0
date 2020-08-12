Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC11BC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:32:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91486206C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:32:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0xKKeleu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91486206C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NdxVkXWUn6e/zg3R6MQVFo56/ixehHnCsedM9Bju/7E=; b=0xKKeleu1QMKITFNu7QqlgFmMe
	x5F6w4lmMeGXo9+KxAT/T2RkPqD0kjoCbPhIMbTFnU/zL8PCJS8puHQC3fQZYf9r+KZdEZhjmhva3
	KEmmf98YC4Umv/P4sdtGAuv0Er1rCWvbG5XCw+cQrh9CScUVXYavtcXEC0t3Q6Vp2IVijWtLCehTn
	ih4OqD7VAr3mcnszrbD5fww5fJPzcBjmKbnGCjhzgDSBz+kDmZnwtP3c4dDpm0Y0eB+cbzzaGo0rw
	/A7zi/YpZwuwtJc3Fo7pSD5D19y11mQ+YXtkmj3Xi24PN+OMTLi5/M8JWJ0DD3VRuPndkWIqSF8hG
	mgvUKB0Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5mAy-00033s-8w; Wed, 12 Aug 2020 08:32:00 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mAs-00031W-3y; Wed, 12 Aug 2020 08:31:56 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 684A1A1B42;
 Wed, 12 Aug 2020 16:31:35 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P37123T139693005121280S1597221089119037_; 
 Wed, 12 Aug 2020 16:31:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ad9528e0bf7ae9b013df868bd4c7e1c9>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: a.hajda@samsung.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Algea Cao <algea.cao@rock-chips.com>
To: a.hajda@samsung.com, kuankuan.y@gmail.com, hjc@rock-chips.com,
 tzimmermann@suse.de, dri-devel@lists.freedesktop.org, sam@ravnborg.org,
 airlied@linux.ie, heiko@sntech.de, jernej.skrabec@siol.net,
 algea.cao@rock-chips.com, Laurent.pinchart@ideasonboard.com,
 laurent.pinchart+renesas@ideasonboard.com, jonas@kwiboo.se,
 mripard@kernel.org, darekm@google.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org,
 linux-kernel@vger.kernel.org, narmstrong@baylibre.com,
 jbrunet@baylibre.com, maarten.lankhorst@linux.intel.com, daniel@ffwll.ch
Subject: [PATCH 0/6] Support change dw-hdmi output color
Date: Wed, 12 Aug 2020 16:31:20 +0800
Message-Id: <20200812083120.743-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_043154_971516_F3011C11 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Support userspace to set hdmi output color via hdmi properties.
Add hdmi atomic_begin/atomic_flush to make sure screen don't flash
when updating color.


Algea Cao (6):
  drm: Add connector atomic_begin/atomic_flush
  drm: bridge: dw-hdmi: Implement connector atomic_begin/atomic_flush
  drm: bridge: dw-hdmi: Introduce previous_pixelclock/previous_tmdsclock
  drm/rockchip: dw_hdmi: Add vendor hdmi properties
  drm/rockchip: dw_hdmi: Add get_output_bus_format
  drm: bridge: dw-hdmi: Get output bus format when dw-hdmi is the only
    bridge

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c   | 123 ++++++++++-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h   |   4 +
 drivers/gpu/drm/drm_atomic_helper.c         |  46 ++++
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 221 ++++++++++++++++++++
 include/drm/bridge/dw_hdmi.h                |  23 ++
 include/drm/drm_modeset_helper_vtables.h    |  19 ++
 6 files changed, 428 insertions(+), 8 deletions(-)

-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
