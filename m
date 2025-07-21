Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D47C83F25
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 17:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=blN6tOdnvDuwgaUQeQ+MHp/Hi/9aqubqTk/a3s9abSY=; b=4tsnNyhFTyFViW
	L4FAx0rIxAFfK2jY4iCvEf3X9jJf53zrM//HGBV566+7lH/LULWjaCjSrY7vHaTffTm78UMKw3can
	Aii6yW76rC1+Y2Ddcpz2NoS8u6UYAfIjjzeJP3TD1PAUmslSLhvW38rlW8Z0+39t0Z+bZGg0OzxLa
	3cQf4huCcXvPRulGbXS1Y1HbjB9JUxqDnAf7pAeUm/2HnAEt28VfzasBSwDsXxuwPS4pl+Fh2r27/
	b4QqkG1DYevufGiomBCKfRKYde2Za2MXBRLFegurc9Y4FYBf/esgiPmtpbG64hbNX1w7LbQi7dJ4x
	CxAPsD7tj6TzvKoEqubQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udukn-00000000NNQ-0n5p;
	Mon, 21 Jul 2025 17:56:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uduTt-00000000L3W-2vGa;
	Mon, 21 Jul 2025 17:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753119555;
	bh=dHhguMwz0kEDLX+532xIurAbZ7MjjLHU4FQ7aKYTGBo=;
	h=From:Subject:Date:To:Cc:From;
	b=SD9ogbyTVBuGVxmj0D3pEiOix6OM6CMMYuZ/DKqtbCcf3DhtdB9HXtHn8m6I25c/p
	 Df82h1emHCCkr6EunA5QOYhreHIblt0mnh8fArDFSWQxA709qUnBDlKVsFOQUmqZ+O
	 qKvrGYNsjhJuU5hVy+ZCq2AHeDGAowVUn+PUbnZuGjldv3j8S6zsj/dcq5jyEaUw+z
	 9qjjYqOMnW+UqRQ6oocPj8h90voAlH+EAo5GLqLJNxrLj7jA7GpepZFs1n52k/lFQD
	 E9mGBSLjFLeacocCx07lculEWcHuUTrJ6N6UdJ732J8pviEO/ZwG94j5L8+/DdijYT
	 iM/2tBI0b1zRg==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 799DF17E0FA8;
	Mon, 21 Jul 2025 19:39:15 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/5] High color depth support for RK3576/RK3588 HDMI output
Date: Mon, 21 Jul 2025 20:39:03 +0300
Message-Id: <20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADh7fmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDcyND3aJsY1MLC11Dg6SCZF0L07Q0k2QjI4tUM2MloJaCotS0zAqwcdG
 xtbUAwIc+hl4AAAA=
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
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_103917_897066_21F00E95 
X-CRM114-Status: UNSURE (   6.96  )
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
Cristian Ciocaltea (5):
      drm/rockchip: vop2: Add high color depth support
      drm/bridge: dw-hdmi-qp: Handle platform supported formats and color depth
      drm/rockchip: dw_hdmi_qp: Switch to phy_configure()
      drm/rockchip: dw_hdmi_qp: Use bit macros for RK3576 regs
      drm/rockchip: dw_hdmi_qp: Add high color depth support

 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c   |  11 ++-
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 113 ++++++++++++++++++-------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c   |   3 +
 include/drm/bridge/dw_hdmi_qp.h                |   4 +
 4 files changed, 97 insertions(+), 34 deletions(-)
---
base-commit: 97987520025658f30bb787a99ffbd9bbff9ffc9d
change-id: 20250721-rk3588-10bpc-85ff4c228e63


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
