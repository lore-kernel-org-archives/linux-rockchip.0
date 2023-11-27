Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34C0FC07CB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 16:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZJOeTYZz8XkLO6kZomXXH5VUzVTFQ9ihJwH8TheYUg=; b=DGrUvDf8sGQgMF
	ZYHbzTHLYC1XYgwC2OlcIF/m3F/suE6hwtSwfo6fyqmnjgV+vlKJP59x6UYhG+z9S1VwGFpg2u8j9
	2rZWlUYNbIQknXdZKwgqpkh8f+BRsNe0VpbOlYad7R64Ot4F0sYPNQS7qYnpVEFazPYCV7kc2hkCP
	IQhv3ACtWDo7ZOUOICkdaHvj/N23yzPEO2/uFU9CEfkMv1/hDx1y74u/aoCS30Mh/3EPQ+OrowuEh
	CMk2oVoNmL4U2W/xt9yWroFYF4jOQ9EMDWiqCBGgiLyWeTVrpFDD9koc9QrbIA/KqOSpKX6X8pV5Y
	Fvbg4okSi9PZr71A8QmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7etH-0033ZL-01;
	Mon, 27 Nov 2023 16:55:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7etC-0033Un-1e
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 16:55:20 +0000
Received: from benjamin-XPS-13-9310.. (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4ABBA66072A4;
	Mon, 27 Nov 2023 16:55:14 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701104114;
	bh=TyWnSNSrmM8e46vPb9QIHFcmc4e6SFgOyK7FFQxtbXw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Err5SscROifk648ZJExh4TQcnejZoFk5VctUstRXFW7HD/aTCrbJQJX8ZSLDvvyRL
	 MQLLvghzMeFsGURIpqImWeUvuqVd/eyR8Azsb4eHTgSWBKOUcyPuPWfFnhvWe/zshf
	 a0DtV3EBKK37x+NgmCtrbbdsIevIEP65WtQyWnxpmnRZq9ZlZ3eemnDf+sWtBRIyCa
	 rttpbZsQHyXxXKX2GYv69QEk3eyMnHYeAYyQp/VaT1vJJpl0TRoFihbCrCg1NzoNao
	 rFxqDtpQmDWOg0mLYj8078e7FMg89rwT+n01VTwqP2Jy1V9cqPCCXEK006LM0k7fZN
	 5qi/QTyW5oC8w==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl,
	mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	matt.ranostay@konsulko.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 12/55] media: rockchip: rkisp1: Stop abusing of min_buffers_needed field
Date: Mon, 27 Nov 2023 17:54:11 +0100
Message-Id: <20231127165454.166373-13-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127165454.166373-1-benjamin.gaignard@collabora.com>
References: <20231127165454.166373-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_085518_699482_F53E76D8 
X-CRM114-Status: GOOD (  10.96  )
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

'min_buffers_needed' is suppose to be used to indicate the number
of buffers needed by DMA engine to start streaming.
rkisp1 driver doesn't use DMA engine and just want to specify
the minimum number of buffers to allocate when calling VIDIOC_REQBUFS.
That 'min_reqbufs_allocation' field purpose so use it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Dafna Hirschfeld <dafna@fastmail.com> (maintainer:ROCKCHIP ISP V1 DRIVER)
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (maintainer:ROCKCHIP ISP V1 DRIVER)
CC: linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER)
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c6d7e01c8949..de3d89b1fac7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1431,7 +1431,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	q->ops = &rkisp1_vb2_ops;
 	q->mem_ops = &vb2_dma_contig_memops;
 	q->buf_struct_size = sizeof(struct rkisp1_buffer);
-	q->min_buffers_needed = RKISP1_MIN_BUFFERS_NEEDED;
+	q->min_reqbufs_allocation = RKISP1_MIN_BUFFERS_NEEDED;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
