Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E923C46CA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 12:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W99Dr2AaD7Ht0JFtZE8DUXxCuvtI7yuuJk+SjqEm1mY=; b=B+G+lVAnsJvFGf
	VKmLZHGLoqKH54yr0Gf8CojPUKNE2M6yCmmKunN1bEcJpk59J7lAsrayALFC+O8PWy9J5NJoq7E/8
	JkR6O0lRsmLSW9OjdJL9bvIyCQYKLpgq75YDVbg7VrlgnAbEdBB4IbO8VqNmXDlioRY3hH3NSj+I/
	9uOiL0jCGQnhXDL5O7+EkW/K8GOQGYGDB1V5jR1H/7+2mIyFm8gwjXiRTJJY/AkQwEwpmkELVNODM
	jLtUHIqTXibtzYC6G0RHQPu4IoU0w/4Yma1BXy2UZ2lDHjk7EKlL9w38LP/6uch6BH7kU9r90u6kt
	bNguc9rlSCKchvCctaew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSad-00HSCn-2W;
	Thu, 19 Oct 2023 12:57:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSWK-00HNju-0e;
	Thu, 19 Oct 2023 12:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A8ph2qj3xtdztdYD/RMDg4TbsW9JnsQI8cJywFJ5HKQ=; b=FMJj7fAtwtks1o4eWgC62W/Rxo
	XB/rZ7+UQ86LxjJDaEysiDo5MrTIYssmE4injZkS2s0+b6Ma7CeEk7U7NShN5sCIKklFwBsLvUTUU
	BuCCWZraGUcJDaJNAAW8SFxOAdDpg06vJSzIHGQj3ON6ZaRk7oLurfj+rWyfDzXWPKS+iPtBnf5dd
	LCtEjWZVPE0BMlZQKVQUNTFjxJH3qOQljvL68VpItxff0xcgeU5LPRN99IA/PktrWhgvEQGo93f4h
	/2a298THexf/yTQCV/A+UxymmUIdcyzroU5xwOKFrss+YBZcYOZcyWf9pZNYiBvZgG2Tj//Mw/r7N
	VENhj9wA==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSWC-009rU2-32;
	Thu, 19 Oct 2023 12:52:58 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ccea:1fb5:34eb:239b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CE7096607375;
	Thu, 19 Oct 2023 13:52:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697719968;
	bh=k33G17zQJxCQXpWsnxb/MtZzvTjkhGFNRYE0Jo4tkpA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VONUCUoqT/ATgu3IKaEjzelgQyb6F/NtglliTKAUxRA5tnN8IolF9z5ApEeRtdkq6
	 PTruK/vZXpFv9SYQcG4cNzScYL3+hjV4dXcidMUasl6Z93Wy5JQ5Q70Wl4H74HzFVj
	 2cBjRq8u99KiTniZSVjiv1BK7Md1L7FdJyeChzRx3bXPGKTi+gpWRJYk1W0RzUTPEd
	 yYfECioEMGMoUjdqiIBnvlnYVd0YwT1pUoRUaOuvUa6BJ5CtwLjVXGPlqmKN32QMqb
	 n8RJNTjsgUsSh4hrzbPdvsfkcm1Xi5kHfanJ4O0ixmulPqLhGkII6+Y5kucXUarwkr
	 5zKztEZyzFb7A==
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
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Henrik Rydberg <rydberg@bitmath.org>
Subject: [PATCH v13 33/56] touchscreen: sur40: Stop direct calls to queue num_buffers field
Date: Thu, 19 Oct 2023 14:51:59 +0200
Message-Id: <20231019125222.21370-34-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
References: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_135253_472092_9D8F7A22 
X-CRM114-Status: GOOD (  12.02  )
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
CC: Dmitry Torokhov <dmitry.torokhov@gmail.com>
CC: Henrik Rydberg <rydberg@bitmath.org>
---
 drivers/input/touchscreen/sur40.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/input/touchscreen/sur40.c b/drivers/input/touchscreen/sur40.c
index 8ddb3f7d307a..e7d2a52169a0 100644
--- a/drivers/input/touchscreen/sur40.c
+++ b/drivers/input/touchscreen/sur40.c
@@ -847,9 +847,10 @@ static int sur40_queue_setup(struct vb2_queue *q,
 		       unsigned int sizes[], struct device *alloc_devs[])
 {
 	struct sur40_state *sur40 = vb2_get_drv_priv(q);
+	unsigned int q_num_bufs = vb2_get_num_buffers(q);
 
-	if (q->num_buffers + *nbuffers < 3)
-		*nbuffers = 3 - q->num_buffers;
+	if (q_num_bufs + *nbuffers < 3)
+		*nbuffers = 3 - q_num_bufs;
 
 	if (*nplanes)
 		return sizes[0] < sur40->pix_fmt.sizeimage ? -EINVAL : 0;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
