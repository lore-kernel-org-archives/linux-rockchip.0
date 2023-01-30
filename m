Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9C4C54EED
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 17:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=09gqN+CpA78PS2Vp1n9r+8RakpMRStkZcm7EPzah5+I=; b=TYYa1ZS4kbDmmI
	r895MB9v36nwtf5dublibnMhvOi5pQFs90U+osjp5VMn8K+eIaXNoYeG9U8laNpI9Do3Bz/T5kSt2
	DnKddbTEWjJZGYKpe7LoIp2CHamZarLAtj5eYqXV99zid9BLd0e1ePpgRTp7hbQrccjGZau0cIh8N
	lbni/5v7nquTGfSrsJ46f2t0U8H9Lrm0NoOkdhc3Vnf3Hn93G60Q7eUGPIddpP+tEXmwYskw4kR9U
	dHAG1lCVQKcQzhfbco4pmEZqx2qkl+WnprTTr8f92IA261JqmzL2FOvQzh0SCsM0/eRDe3ZwiFxQH
	74NmGRzwyBm1HC/kuz/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXdt-004P3X-9U; Mon, 30 Jan 2023 17:08:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXYj-004MQQ-3o; Mon, 30 Jan 2023 17:03:10 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:e655:2335:9172:6e39])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24D9A660036A;
	Mon, 30 Jan 2023 13:58:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675087091;
	bh=RPbrmCUOIpq0gVkbEtOzsq+cJcNZI6nEsp8J93mhhRM=;
	h=From:To:Cc:Subject:Date:From;
	b=O1obHAzzOK/iWXu+eBJKrUtSNcZeWHgz5T2utiIzExkU2uY3tluYHkrziFb2u5goD
	 5I4vjaHMcm/Nw1+7wKGK69YhjILTeRd+Lv4kAgk5kck9syu5yzpNsVSIj7v93l5jg9
	 ewq7HstHhmAK1JPdlymOlsbYiv0uDaeSZ0wm9F2qxS3u7U0cdDp1AQLsT0LOX8nFJF
	 wAcaawpcUztz3ocYw5PGFca9ZjVU87mi1YJExMDQokjR6AXvVARtckEgqAuzF8Qoe6
	 Al62crU80k5NAbFqhAoQdXiVoxav0PAsCphys3yaAT56w9xitilv/Er4RFtKRDNK8A
	 /s2Z96W1vvn5A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 0/5] media: verisilicon: HEVC: fix 10bits handling
Date: Mon, 30 Jan 2023 14:57:57 +0100
Message-Id: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_090309_289716_2E367D8D 
X-CRM114-Status: UNSURE (   9.26  )
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

When decoding a 10bits bitstreams HEVC driver should only expose 10bits pixel formats.
To fulfill this requirement it is needed to call hantro_reset_raw_fmt()
and to only change driver internal state in case of success.

Fluster score (140/147) doesn't change after this series.

version 6:
- Split the patches in multiple sub-patches.
- Rework hantro_reset_encoded_fmt() usage.

version 5:
- Add Nicolas's review tags
- Add Fixes tags

version 4:
- Split the change in 2 patches.
- Change hantro_check_depth_match() prototype to avoid using
  ctx->bit_depth
- Return the result of hantro_reset_raw_fmt() to the caller.
- Only set ctx->bit_depth when hantro_reset_raw_fmt() returns is ok.

Benjamin Gaignard (5):
  media: verisilicon: Do not set context src/dst formats in reset
    functions
  media: verisilicon: Do not use ctx fields as format storage when
    resetting
  media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
  media: verisilicon: Do not change context bit depth before validating
    the format
  media: verisilicon: HEVC: Only propose 10 bitscompatible pixels
    formats

 .../media/platform/verisilicon/hantro_drv.c   | 39 ++++++++-
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 84 +++++++++----------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
 5 files changed, 79 insertions(+), 51 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
