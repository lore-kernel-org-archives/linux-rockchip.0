Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42F9C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u0Hb+ac2ZTWm98JBlA0bWxJj2YJ30MWC7OMxzCCSps=; b=UuObZ3/lKUxKCM
	wXYSvHKl0tk3IXqz9JP9g49utrhB9LiMCLNQ66g1Hi1+l9KDzR6rlrFzoz2r56wxVvJG5o6ik+rBH
	n5hRe0ZaGxZVoJ8dXiWBkwX9gmEH04KBFtmXvoYiNppyAo/4noTQ+aM91I1uHREzswW00LnphsvuF
	7y1z4am9Zn/2TlQX9BERFr4V9hFyEnqGnHCDm60J0pOoAy1l2I1I/98R07G5369pn05S8MLEsOhiV
	8HwKG4fICmqlFpQmh5fJir8M34BNGNdpy/AyE3O1pXqpKH5BG09GT/VVl02o/6xHKGBtZQ1hgKWQK
	J92zNgtomIoRpHXOI10A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrlQ-005gLO-1j;
	Tue, 31 Oct 2023 16:38:48 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrfM-005cnH-1H;
	Tue, 31 Oct 2023 16:32:34 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:c562:2ef4:80c0:92f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE49E66073BF;
	Tue, 31 Oct 2023 16:32:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698769951;
	bh=nxe8x/V/1l6XolEQlUJAmFRKBPmiBgQL0drOV0CYbaw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZOF6ma69mY9buv7hJHLR0h6Vl15crg0ezaW/yPcLElvpQmVaXL1CxvEPuaTl4De/b
	 140wp3zNZzbEqJcCnTI/5FaNJ6mDQ2GhO38HlRopPj91Vy65WTB78fyeC9OFjWAEHb
	 XHfElZyfpBl8ApUwwkO2AU3rDMGrUejL2E4XcJKb3UWzOcibTzPrSVHMhkwa5PNnYu
	 luforDop+1IOhqUw62ntXoBa1dXHFoCOjAHTyp8MwA44nA2ZCqnrK+IlBIoDubDewH
	 f5wA1U5SU5bMb6lWm2E/lFh2LYZA0H7fyZNSDOgBueT5qEefp0b1h7wxd5zEDWEhOh
	 H2GqxRVgW1TrQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Antti Palosaari <crope@iki.fi>
Subject: [PATCH v14 41/56] media: usb: hackrf: Stop direct calls to queue num_buffers field
Date: Tue, 31 Oct 2023 17:30:49 +0100
Message-Id: <20231031163104.112469-42-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_093232_592107_5DCD3242 
X-CRM114-Status: GOOD (  10.92  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
This allows us to change how the number of buffers is computed in the
future.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Antti Palosaari <crope@iki.fi>
---
 drivers/media/usb/hackrf/hackrf.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/usb/hackrf/hackrf.c b/drivers/media/usb/hackrf/hackrf.c
index 3e535be2c520..9c0ecd5f056c 100644
--- a/drivers/media/usb/hackrf/hackrf.c
+++ b/drivers/media/usb/hackrf/hackrf.c
@@ -753,12 +753,13 @@ static int hackrf_queue_setup(struct vb2_queue *vq,
 		unsigned int *nplanes, unsigned int sizes[], struct device *alloc_devs[])
 {
 	struct hackrf_dev *dev = vb2_get_drv_priv(vq);
+	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
 
 	dev_dbg(dev->dev, "nbuffers=%d\n", *nbuffers);
 
 	/* Need at least 8 buffers */
-	if (vq->num_buffers + *nbuffers < 8)
-		*nbuffers = 8 - vq->num_buffers;
+	if (q_num_bufs + *nbuffers < 8)
+		*nbuffers = 8 - q_num_bufs;
 	*nplanes = 1;
 	sizes[0] = PAGE_ALIGN(dev->buffersize);
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
