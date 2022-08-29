Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70C9BC0502C
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QoBbFhLNntdtu/ZdVn6J/jjoyV3nke7bNIapu2Xv1dc=; b=2KDTAUvRwGOOE/
	QSBTFkuq539fDXWxstMLYzinvRd0krVuBmXut1OexAm9/EF4AgUqaodo/G2x/V7jE+MX/lOppgfDo
	W48bq0ZYvEsxsDLtYNyK8YAujcDh7D8eebM1Z/bfnR5qPvVw8fd2pXzQsTQYzs4shCJv/YxXFQcql
	eIeQlNnLNjOxJP8Ts8vEvO5Pa04QPpAb8msnQdC/OD/9e2ZnLE6ESc4y/A//0aLQxs9g98/PkSotB
	+CSPsgi4fNC98kVqRk/mRx7rDbo1iKVPHlzvhdKGMd2uLSqlnK5ZUbH1nJe8Luoxs4kPN5NKbjf+Z
	hEuRUS5FoJ0jy5UtDj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShiz-00Bn6e-5y; Mon, 29 Aug 2022 16:34:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWd-00Bhvs-L9; Mon, 29 Aug 2022 16:22:16 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D42376600360;
	Mon, 29 Aug 2022 17:22:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790128;
	bh=iBVc29gKZFKqyDDdPbh8NNqE2+5tS5jY80daWeZGfmw=;
	h=From:To:Cc:Subject:Date:From;
	b=i6qHqulyX4bx1mBsTqn1R7eaM5k9788KC9y/nCwrzs43gu99+zGQZLJgy21cV0gEk
	 IdQ0bsVqESQOv40FBuADSyI2x0mZHF9XYkgtw8fqNDWoDMv/TenC7+vwCyNnFd+Rqp
	 ZEfLa5EmB/Q/d1Wq+M9w1ISzETPO4R9WACAuWg8un+gsyeDPUnBqJw786ogbShNwtX
	 SahsN/L8+LbNqtxpxPdcRUaBpJ8Nmz1OylEo8RMvqDmIVhEyiMWGatkCW/YIXZG4L8
	 A7N0VpcyvJ6YMF8HGE9YhX895bUMAH2ylC7CJVJahqG2e8ldq+GdMrK+q8lFimP3iP
	 ErSui+dKCqkow==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 0/7] Enable 10bits bitstream for Hantro/G2 HEVC codec
Date: Mon, 29 Aug 2022 18:21:52 +0200
Message-Id: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_092211_968755_A7A80138 
X-CRM114-Status: UNSURE (   8.04  )
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

This series add 10bits support for newer hardware blocks (i.e without
legacy regs) and for HEVC codec.

Tested on IMX8MQ with HEVC conformance tests, the result is that all 
10bits bitstreams are OK.

version 3:
- Based on top of Ezequiel's patch "media: destage Hantro VPU driver"

Benjamin Gaignard (7):
  media: hantro: Store HEVC bit depth in context
  media: hantro: HEVC: Fix auxilary buffer size calculation
  media: hantro: HEVC: Fix chroma offset computation
  media: hantro: postproc: Configure output regs to support 10bit
  media: Hantro: HEVC: Allows 10-bit bitstream
  media: hantro: imx8m: Enable 10bit decoding
  media: hantro: Allows luma and chroma depth to be different

 .../media/platform/verisilicon/hantro_drv.c   | 14 ++++++----
 .../platform/verisilicon/hantro_g2_hevc_dec.c |  4 +--
 .../media/platform/verisilicon/hantro_hevc.c  |  4 +--
 .../platform/verisilicon/hantro_postproc.c    |  7 ++++-
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 27 +++++++++++++++++++
 5 files changed, 45 insertions(+), 11 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
