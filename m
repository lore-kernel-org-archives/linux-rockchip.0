Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C42DC07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 15:13:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F31D61279
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 15:13:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F31D61279
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FSFIEULw0cQqHdKDWDjkCxyr50cGYbL1l2JRN2TjqsU=; b=ZZfyMkHTGWg5bj
	4lpB/Z5ECsvRxQVPKxhRtpXYrt00NEO9p+z2Ivm0o0KP/XGGb/LCHpMZs9++dpsqMi+RiQxhJ7F1a
	NE0CBr7X2SmmOeWtxlDbzLQDKE1Y72qTuzfrcs7IlkKSzuKm+fpKVIG9chytybPv+7+rKdYef0Jhb
	iPAZfqAeEMR1zZjd2VNMKkndASiRcHulHM4K932tct3GapCrdiQK/99d20V6Kkqq00h9Q6n8v/ML5
	0vCKZkj6fcHqP4dfxW2RHeGIKMDWtPeWFkamjA+/Do/aTMucF0elLrY7aV+pIsrGQAd0l6rYkqRAk
	vLANLbWwFqEl+229iFqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m432t-001AmF-Vr; Thu, 15 Jul 2021 15:13:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m432g-001AgQ-Gq; Thu, 15 Jul 2021 15:12:51 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:674e:7061:b49f:bcc0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0795F1F439FE;
 Thu, 15 Jul 2021 16:12:30 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com, nicolas@ndufresne.ca, cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v1 0/2] Add scaling lists support for HEVC
Date: Thu, 15 Jul 2021 17:12:21 +0200
Message-Id: <20210715151223.656453-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_081250_714052_41797EB6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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

HEVC scaling lists are used for the scaling process for transform
coefficients. Add structures and controls definitions and documentation
for this feature.
Add scaling lists support in Hantro HEVC driver.

Benjamin

Benjamin Gaignard (2):
  media: hevc: Add scaling matrix control
  media: hantro: Add scaling lists feature

 .../media/v4l/ext-ctrls-codec.rst             | 57 +++++++++++++++++++
 .../media/v4l/vidioc-queryctrl.rst            |  6 ++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  6 ++
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |  4 ++
 drivers/staging/media/hantro/hantro_drv.c     |  8 ++-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 52 +++++++++++++++++
 drivers/staging/media/hantro/hantro_hevc.c    | 21 +++++++
 drivers/staging/media/hantro/hantro_hw.h      |  3 +
 include/media/hevc-ctrls.h                    | 11 ++++
 9 files changed, 165 insertions(+), 3 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
