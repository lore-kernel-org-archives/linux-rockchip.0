Return-Path: <SRS0=vlpy=L4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772ECC07E95
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:32:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45BD9613B9
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jul 2021 23:32:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 45BD9613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju0bDbGWlnq9vkiN+E3cfB+SDIHxRhl0NmRSgmK/Fkk=; b=uKjA8XMz7OweKK
	W8Z6IQZZJtPKm73cfTfFyfDEBr2YYAJhvTQWC6wzwnT+x6dSemmQGIchU0z+T+uLRnYab9KCdv3Du
	B17FcsVz+Tld0J44WnvN01Odn4r89AJDz3eVCCD0Uk4Z5ujRQQZ4HHlR0iyAj8+VSyUQBmVzr4IGa
	f/z9gqAFZv3deDZ4PQCh1HtqwanOHtk4eQcButCjSnJoM6w7UCHz5/VzDPcujOThbXE6DsyrmwDAa
	cT5LIxmzNpw1KnhebnTmsgqxGioRgzfCny/rpGqAJQDlNUcByZTSMwEW3B4M/1ePx1damxKL6aqIJ
	EYBVhQOEgZb3hoHR8epA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Bah-0077NW-4t; Sun, 04 Jul 2021 23:31:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0BCi-006uKw-4c
 for linux-rockchip@lists.infradead.org; Sun, 04 Jul 2021 23:07:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E209C613F3;
 Sun,  4 Jul 2021 23:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625440031;
 bh=I9lQf2lDW0MnmYwEu18O4W4OVDj02bCrE5JB6PVuLSs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EYm41YaPv3RUCmjfu6wRfwXcD872AM1Fw+wIrO/uYFUEcyE9HlngeKVG95ngtGMeb
 JkPWWPacaQqkkXyvq4RG4aJFIXSie525r1FOIPFlYqk1XmNEELgGh9dvhHvOBXEXi1
 oeo9i7wyTS1rPLN47zir7wb+PBNlSw0wseYd3jIZ8mWHAfyW48mm391pSeMSCGyu2T
 0I19w7Z7ydymvq/wVvJMCzSgwzvGEvVF1mj8DAzZsabC9BRzJFs5+Qw9gFeHzhND1U
 WuvKzRq4LLSzxhA9HCpB1E43MB1PzDuatqukIZQkkvXaKLUKAum3n+Nz6Qa+1EjXln
 GWXLJQLfISBhQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Sasha Levin <sashal@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [PATCH AUTOSEL 5.12 40/80] media: hantro: Fix .buf_prepare
Date: Sun,  4 Jul 2021 19:05:36 -0400
Message-Id: <20210704230616.1489200-40-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704230616.1489200-1-sashal@kernel.org>
References: <20210704230616.1489200-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_160712_283337_AA81FE5F 
X-CRM114-Status: GOOD (  11.90  )
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
index 1bc118e375a1..7ccc6405036a 100644
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
