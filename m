Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96641C88E77
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VzkadR+SJH/1eYwAlZTOhCI8vWbXd2UWrm3md67+a74=; b=ankovyTLpACqe5
	hlrGO0N6yie5ctonpiMXYPgSFnofMMn7S+6qUOW9oqVmbsZguA+sf7uP4JilkLNJdIAP6+5OQWzIv
	YvfvnvL6f2xj+ZV7nKYBIZHMF15PhcuXjJwX96I4gSDLrnSY8L50ya9hUEmFPzpiMau8EZkKk8Kz2
	sGbE0BZEuc2DhmoLIK7TcoFqDRl44PV33nv3lO89F/WGPc0CueDUhIDY323+xJGYsuH0r73/YB2oS
	n2HUMTKmqQaKdYiMupohH7BdKB2KpDK6bloxKqyaS+9lQ2XFqxosVV256J0Gd2Fn4Z7nO/AB0GFrj
	fnTguZ2O2laEMgVpg19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA7-00000009DBf-3soi;
	Wed, 16 Sep 2026 12:54:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pA4-00000009D9M-195l
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563289;
	bh=3OqxyAVOw07bW65jX9ZlMxzkFNrQL8bfb5NlzTYd0wI=;
	h=From:To:Cc:Subject:Date:From;
	b=CeMdfTOOux/ah0Bd2DaODSB3u+uhmkItkUvnj4ZLmSKb00siFx6OrIvjP05Tx33lQ
	 qLgCII3bEVT4ICRatdt2BHFI8L2anB/vvqi7isJWwEKTdkDEiFPcaXiYn7P1O3zaVg
	 kSDppWt+ewbGMo0oQnw3il3Yc09mgCegu2ccseIONMVx3VNjn5ZSRTkclzgh6BTj6a
	 KRuMA58uIPDVhq+akGpjG0S8kQCg0gjb3cwVDN69CkPEZI2nupr+qdF//2edPe3NAL
	 HceJFNOtWsMpIUYJDhrwXOb9sDVIAw/MhqDEES86/Z0MvtJeuZbde+/3K39TysaLY+
	 Jll3bTodsGRHw==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0672917E07A9;
	Wed, 16 Sep 2026 14:54:48 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 0/7] media: verisilicon: simplify auxiliary buffers allocation
Date: Wed, 16 Sep 2026 14:54:36 +0200
Message-ID: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055452_565330_15D251D6 
X-CRM114-Status: UNSURE (   8.67  )
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

Verisilicon stateless video decoder driver allocates lot of auxiliary
buffers to decode bitstreams. These allocations duplicate a lot of code.
This series add helpers functions to allocate and free auxiliary
buffers. This simplify the driver code and will allow to implement more
easly incoming feature like disentanglement data buffers from mv and rfc 
buffers or adding reference frame support for more codecs.

This series has been tested with fluster on IMX8MP for h264, hevc, vp8 
and vp9 codecs, and on rk3588 for av1.

This series depends of this one:
https://patchwork.linuxtv.org/project/linux-media/patch/20260910092021.139970-1-benjamin.gaignard@collabora.com/
which itself is based on media_tree/fixes branch.

Regards,
Benjamin

Benjamin Gaignard (7):
  media: verisilicon: Add helpers to allocate and free auxiliary buffers
  media: verisilicon: AV1: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: h264: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: vp9: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary
    buffers

 drivers/media/platform/verisilicon/hantro.h   |   4 +
 .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
 .../media/platform/verisilicon/hantro_h264.c  |   9 +-
 .../media/platform/verisilicon/hantro_hevc.c  | 130 ++++---------
 .../media/platform/verisilicon/hantro_mpeg2.c |  17 +-
 .../platform/verisilicon/hantro_postproc.c    |  21 +--
 .../media/platform/verisilicon/hantro_v4l2.c  |  35 ++++
 .../media/platform/verisilicon/hantro_vp8.c   |  37 +---
 .../media/platform/verisilicon/hantro_vp9.c   |  37 ++--
 9 files changed, 139 insertions(+), 328 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
