Return-Path: <SRS0=2/VX=L7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A770C07E9B
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jul 2021 12:04:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FEB661C98
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jul 2021 12:04:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FEB661C98
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9yrpuraEydcNf6iRBnKpGxAmYFEH0G6HvBdC9Gibl9w=; b=Y+DU9WBKeW9d0K
	4L0U44geCzfMlIOrT1UPjafv+ctejAvLAEiJq9nQ+EpN6pj9FjPonNWuIUA9ylS9UFIpwXbd4IkQU
	mC1yEQD2UO/j0zxBKR/LZbih7OXDV/CHKpDSNoUv1nR/jrQJHWntGk743UUYlXQYfs0VX9ipyfYPD
	4Ge/j+nJAOZyuk0ZyXt/p0u7EHCcLpFCW9S29PbLQVyBTJF5ZlikDIYLP98+mJ9v5iP6c3+3HIgop
	fnFM4pETezIleZdydYrMJ+6SQaP7NOpcBfmHj8YJJcWqBIGnljEDM454H3se3bMQFBx/zkIo01hXr
	biQ0FAzxM9O9lZ4sB8HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m16HU-00EjAS-S6; Wed, 07 Jul 2021 12:03:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m16HG-00Ej4o-DZ; Wed, 07 Jul 2021 12:03:43 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:c375:7561:3857:648])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 668781F43266;
 Wed,  7 Jul 2021 13:03:36 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 robh+dt@kernel.org, algea.cao@rock-chips.com, andy.yan@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 0/2] Add support of HDMI for rk3568
Date: Wed,  7 Jul 2021 14:03:21 +0200
Message-Id: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210707_050342_629228_8328295D 
X-CRM114-Status: GOOD (  10.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

Add a compatible and platform datas to support HDMI for rk3568 SoC.

version 2:
- Add the clocks needed for the phy.
 
Benjamin Gaignard (2):
  dt-bindings: display: rockchip: Add compatible for rk3568 HDMI
  drm/rockchip: dw_hdmi: add rk3568 support

 .../display/rockchip/rockchip,dw-hdmi.yaml    |  6 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   | 68 +++++++++++++++++++
 2 files changed, 73 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
