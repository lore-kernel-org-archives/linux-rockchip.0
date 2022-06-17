Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C352C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yyEvC6J0dj5j2+pJ69x3vPdPoUXrILFyGbdtLAHXfro=; b=MSM8BV8YbI1ZJt
	YmgoFeZYNJriZFvMohayxbWWJAsov6yNOwuFOcSHMDXGGJu7xK80CFZyVLWMn1kO3bQAVGOaeiXH+
	Gjqt3ktI0WXZOj3yBdCCuUfF8jpeb6yzOu6hxpjYJu07FVM5mfjNdiWSa/SsqVjxBEqSKwdTrrwlX
	6E4iUbljIQxfZZNcMip+9MHledoDAvcIWYjSvgbIaQUu0X94q+xLZCHsNc/b9+Boh9z1HBKI51ODf
	IfDcxstI+pat+zJlTki8m6ltGLb/gpx7bsx1YwL2TtlkCgUoJKhxzPb3lSenbVcoGkhYcjr9GMrHH
	4JmUyU7Lz0zDvBL6njNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ad3-007VDE-L6; Fri, 17 Jun 2022 11:59:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcA-007Uq0-RV; Fri, 17 Jun 2022 11:58:17 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 54D35660179A;
	Fri, 17 Jun 2022 12:58:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467090;
	bh=bmkptHQUlkkCdHC5ksCT9Ab01Sj/lrYkZJFYy5abr5o=;
	h=From:To:Cc:Subject:Date:From;
	b=frdPQspHObR+qQp+aMt1vMTPsEKhPxUimVzD3mf5lVBRs4QpJILObfMH9YhyawfbW
	 nJNWbZDKAyt+ILWlmeWko/eNcjEvZHSqxP+GkHvNGH64PzofVTk+ZvMud6k6eZ31cl
	 sOXt8FDUjoG10MYruAk3U9q9T6h0rQKaljoCUsSoWQOhmHxzzhci6elqRH6irsqBkY
	 CU0Z6FtviZPJDxraRylHumnwPDVIvTnZ6srn8EVQY/yoLv3fXbWRbssXUTRS3P5hYh
	 9JFlp1J6cukoY65uaZNzwj8tgCPIA50GPGshdvjNOn2/leQux2HSTsi/LMRyy/UNNd
	 A4bzxH0yF1Juw==
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
Subject: [PATCH 0/7] Enable 10bits bitstream for Hantro/G2 HEVC codec
Date: Fri, 17 Jun 2022 13:57:55 +0200
Message-Id: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_045815_184217_6953EAA9 
X-CRM114-Status: UNSURE (   6.64  )
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

This series is based on top of Jernej series: "media: hantro: Add 10-bit
support" v2.
Jernej series is focusing on VP9 and hardware block with legacy regs.
This one add 10bits support for newer hardware blocks (i.e without
legacy regs) and for HEVC codec.

It based tested on IMX8MQ with HEVC conformance tests.
The results are that all 10bits bitstreams are OK.

Benjamin Gaignard (7):
  media: hantro: Store HEVC bit depth in context
  media: hantro: HEVC: Fix auxilary buffer size calculation
  media: hantro: HEVC: Fix chroma offset computation
  media: hantro: postproc: Configure output regs to support 10bit
  media: Hantro: HEVC: Allows 10-bit bitstream
  media: hantro: imx8m: Enable 10bit decoding
  media: hantro: Allows luma and chroma depth to be different

 .../staging/media/hantro/hantro_g2_hevc_dec.c |  4 +--
 drivers/staging/media/hantro/hantro_hevc.c    | 13 +++++----
 .../staging/media/hantro/hantro_postproc.c    |  7 ++++-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 27 +++++++++++++++++++
 4 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
