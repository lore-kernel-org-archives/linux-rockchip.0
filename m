Return-Path: <SRS0=vlpy=L4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 323EFC07E95
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:49:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2EC2613C1
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:49:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2EC2613C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqS/DjBfHRVgls1v/XIxklrtdeveplc0D1qnxKyqlP4=; b=psNHbbsIAhhyXv
	3kSps+Okf7IXtlBfbeIsG7CpxCUwbyppLpNxnsmNeciq3sxuhLnoXA0chFa6PA30bGnYS0oO39Aeo
	Du5+BiCYHERtzVOvZYxh9VWj2P9vngUj+ruJ3zD/svQGowwdgAADPZ4zkukjtj8oZ6arW/c7W4LZA
	LGz0pLpcqVRpFFn7GoUpjqhCE0/AZafATyHIW/c80r9VAgx9hEcKibA7hC7oD6shJfvf6yL92cJ4L
	3AvM1hlTZ8Igc8h6os64IErFJUi9h7v1ozvNoacG5cumKfK6W3wynreN9i/NOM5T9Bw4nIXaUoH/G
	RWvCokln+xUpwVijnzkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0BrW-007FK3-IQ; Sun, 04 Jul 2021 23:49:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0BEN-006vfH-FB
 for linux-rockchip@lists.infradead.org; Sun, 04 Jul 2021 23:08:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0F2A96195E;
 Sun,  4 Jul 2021 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625440135;
 bh=HlMWwFUjkv9kRDxxoRQ0bxzJXMOvK+avXOn8miRFB+Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U6RTZu2VR9Eb23t4ojSzjY5Ivg1lxIvj1mvbtiiZj1Tf8yoy9ysNQoc7o+0fUPVbk
 pB+zE6+fDWAK6bS4rNk1UqC+sy7XUDm299+TjWv+d0D2gEQ0AupxgLJt3Ep86UV20u
 pENoKK5zm+pbq//T5ZJO8ZKKm/l6XNeZ2SaaTZkaL9MXvJaDGJ6WbUEYXUdlrFKnwK
 DXseSVzdkRmoS97//ieZ41i2/Tr7VyN9Y3vEbN0+dHYUVYI8Tf0YuU69VM7iR2wPxR
 ETxNYT+STZ74cHAIsWg37D54uhC5n1Wr7TUo2fsg8M53a9T6i0ALW4998CiueRsxTl
 aHdt7jafDCw/w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Sasha Levin <sashal@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [PATCH AUTOSEL 5.10 37/70] media: hantro: Fix .buf_prepare
Date: Sun,  4 Jul 2021 19:07:30 -0400
Message-Id: <20210704230804.1490078-37-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230804.1490078-1-sashal@kernel.org>
References: <20210704230804.1490078-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_160855_544278_9D2AA43B 
X-CRM114-Status: GOOD (  11.80  )
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

From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

[ Upstream commit 082aaecff35fbe1937531057911b1dd1fc6b496e ]

The driver should only set the payload on .buf_prepare if the
buffer is CAPTURE type. If an OUTPUT buffer has a zero bytesused
set by userspace then v4l2-core will set it to buffer length.

If we overwrite bytesused for OUTPUT buffers, too, then
vb2_get_plane_payload() will return incorrect value which might be then
written to hw registers by the driver in hantro_g1_h264_dec.c.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index f5fbdbc4ffdb..5c2ca61add8e 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -639,7 +639,14 @@ static int hantro_buf_prepare(struct vb2_buffer *vb)
 	ret = hantro_buf_plane_check(vb, pix_fmt);
 	if (ret)
 		return ret;
-	vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+	/*
+	 * Buffer's bytesused must be written by driver for CAPTURE buffers.
+	 * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
+	 * it to buffer length).
+	 */
+	if (V4L2_TYPE_IS_CAPTURE(vq->type))
+		vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+
 	return 0;
 }
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
