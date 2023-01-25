Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7F0C54E94
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 17:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KaHArXLIFK+cQpBvi9e5Wz/6Du7Zkyp1TW0kvnGxxrc=; b=Tr0GonSwmVOI/a
	YmBeRMGtxPECQs3iiXiLB37sP0HjwU1eBC+Qebosr1PCiHksv0CirVFwx+u7Sgl858jCPq/nRf3yK
	EyC0pUfFIr+3ChmQj4iek7eEa46DF1M4sKqC8+jMPpwoGowXbgTOzD7EKlXdW7Gu5eN8FyBMb0Hyu
	MhohTCxxWPgFcbiJZIVafi7MXfjrZmhsKzpYW6/gJZqv1IvDsGNA6509LravLDKg4wZeY/l+ygugz
	GqeaY0wjgDlD8VNq7iQ6IxfFG/A6nA4ezcmOd87ikgJGYAqdC0Gea4TlVgZYaSeildfm62PjY+eNP
	48gU5TVKbrfXcsK9KJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKjZJ-008CH0-Qk; Wed, 25 Jan 2023 17:28:17 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKjZ8-008CCE-UL; Wed, 25 Jan 2023 17:28:08 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ad6f:c6af:709d:745c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 885DB66003B1;
	Wed, 25 Jan 2023 17:28:02 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1674667682;
	bh=ftbq0IBc4A40w5QgdUFCSat4ox2AWsD9fPmQCdsmw6k=;
	h=From:To:Cc:Subject:Date:From;
	b=VB2gMay4GS5sLnQPt9uV9LenFUkipBbqBwJINSnafY3wku3dpqUw7K92UXmKNrDPZ
	 7QxG840PgQRqLsYJkQY0OM9Xtl7lBHcKFMIRbZUXo5QGf4mNB0Qz3vCJVXwm7S69NP
	 YWOIZ0zKs/2h1U+ybVistGvQmVdR7lAR+8FhpPfyRPY7istkbKzbAaLfIsyQ8WHwed
	 9TqBeYF7FY8/cmMy5Vlu6+F+kKGQ8eAcRzEZVtRUCW64lfppbHRkj4kPZlPi4rS2qI
	 Vv+pMmRvIBDVBAeE2Vj37Ww9m0aIQ530Psc6VVqegYI97BfyBSyye3b0JmQGJGBLFB
	 +/3GKvF1aqM5g==
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
Subject: [PATCH v4 0/2] media: verisilicon: HEVC: fix 10bits handling
Date: Wed, 25 Jan 2023 18:27:53 +0100
Message-Id: <20230125172755.1498973-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_092807_207859_79C9C332 
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

version 4:
- Split the change in 2 patches.
- Change hantro_check_depth_match() prototype to avoid using
  ctx->bit_depth
- Return the result of hantro_reset_raw_fmt() to the caller.
- Only set ctx->bit_depth when hantro_reset_raw_fmt() returns is ok.

Benjamin Gaignard (2):
  media: verisilicon: Do not change context bit depth before validating
    the format
  media: verisilicon: HEVC: Only propose 10 bits compatible pixels
    formats

 .../media/platform/verisilicon/hantro_drv.c   | 46 +++++++++++++---
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 53 +++++++++----------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
 5 files changed, 68 insertions(+), 38 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
