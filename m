Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F50CD4F40
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 07:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XrdzhzasDvFVmf3TIt+nqssmnUxDw0CEXXHzrpgTdrc=; b=3/R6kmFkibymB4
	QPmTS63mVtEmxbTzgnwuxLIPciqzMmwT97PEiS1fGwI3P1rG7hZ6P24AbA3kFyJ2rW19lsZglN8xn
	kiwsfdm+jvObsDxbnt+dc4rAcpjlo8h54tpwkHFYgNuisuXe6gM1youh4Xtid5PmYQgDxkVMA5SWR
	E8DvzShBFhpN5gE1LUAgKc+mtuQqrgWby1t8yB9lwY92BwDIU5L3ERqqPZV3Or5Now1YMJtR0GIQf
	mwe6dS3YfVEdLG0vT2gHKCSS3qHNyT5HABFYNQ6nCwtzzy815PcNMoqCZ3nXnNBzLHjAbAutqJ2eR
	8lkY6JYWCTnNznEzsw4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNQ50-00000004mEH-2tbm;
	Thu, 14 May 2026 07:01:58 +0000
Received: from mail-m10227.netease.com ([154.81.10.227])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNQ4v-00000004mBy-0wB8;
	Thu, 14 May 2026 07:01:58 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e617edc1;
	Thu, 14 May 2026 15:01:37 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v1 0/3] Add eDP lane mapping support
Date: Thu, 14 May 2026 15:01:30 +0800
Message-Id: <20260514070133.2275069-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a9e254a750203a3kunm8191ae6fc25e5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHU9KVh8fTxhKGkpDSk4YQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=CYTuWHLMpjwkGVPAKOdbtuZfTKnZHW0hVVSbEMbxFNHLlPoYi3JeAE/i3+Wn3C//ZyJxcVW+b5089AMYqPVFcXHCNS1mz6Gk+DwJn4qQtQaEliNcrvkDWR1rGhXXyz0mxp3k/1bFdGoiyBk5/GOAFerCcTkm758Jh5//w22uJWo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=uNef38etfNJEmvmQwL1S16fQzDZRoboQW/hgxScsiQQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_000153_804596_6B4D4AD0 
X-CRM114-Status: UNSURE (   7.28  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series is followed by:
https://lore.kernel.org/all/20260513074414.2053435-1-damon.ding@rock-chips.com/

This series adds configurable eDP/DP physical lane mapping support
via device tree data-lanes property.

Lane mapping is mainly used for below scenarios:
1. Correct PCB lane swap and differential line routing crossover
   without hardware changes;
2. Adapt mismatched lane pin definitions between SoC and eDP panel;
3. Support multiple panel hardware variants on the same board
   by configuring data-lanes in device tree only.

The series includes driver implementation and device tree binding
updates to support custom lane mapping configuration from endpoint
node, and keeps default linear lane order if no configuration is given.

Patch 1: Supplement inherited properties for rockchip,analogix-dp schema
Patch 2: Add endpoint data-lanes property to analogix-dp binding
Patch 3: Implement lane mapping in analogix_dp driver

Damon Ding (3):
  dt-bindings: display: rockchip: analogix-dp: Expose inherited
    properties
  dt-bindings: display: bridge: analogix-dp: Add data-lanes support for
    endpoint
  drm/bridge: analogix_dp: Add support for optional data-lanes mapping

 .../bindings/display/bridge/analogix,dp.yaml  | 24 ++++++--
 .../rockchip/rockchip,analogix-dp.yaml        |  7 +++
 .../drm/bridge/analogix/analogix_dp_core.c    | 56 +++++++++++++++++++
 .../drm/bridge/analogix/analogix_dp_core.h    |  4 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 15 +++--
 .../gpu/drm/bridge/analogix/analogix_dp_reg.h |  4 ++
 6 files changed, 97 insertions(+), 13 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
