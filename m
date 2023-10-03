Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B89B8E75435
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 08:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtDxouowAJ2K+y5jiiVA3QQKpMb/KynGl9G0pBa7axY=; b=Kkz5IB7pN1EW9W
	Z3Tt4g7COAqu+QxXDHap5usnG27ghem09S78iFcYvNhoKw/bMz6/x4qkMFTAiyobIhVjhcq42Uw7E
	dFP3mDPbw0r4K6HzmljSxOsj9yaUduj1QblJ3IL6QsFUY0MuS+qkQYgAxk/6U9yal/X7xP6wzHuVq
	NJRFp1ty9RQjI30hHBh4P5sHxMeotfcWymrdGpLGKbUkaRUEktPFW6ySXD66mdK6snlmzm8nWHXJ9
	0unldp7CDs5JCWxRmJM3Bp9LPqBpyRuHng1l53qFNYiZ2yAZ8vbxmfcSRIDzvE6Bb+tYaTdmPLPWB
	98kprNlSlLQGCGv8w0ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaUE-00E7J4-0m;
	Tue, 03 Oct 2023 08:10:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaRe-00E3ko-17;
	Tue, 03 Oct 2023 08:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tNAbg+knkabZcIfZKYQJcMQ9aVj2QfkLtg7kl/Xz8lA=; b=dfy8Lqwyy/1uL2jvDRTFwlTKAB
	Kpsl3qPgUYAuBCrcSje5SBVpr/wjbP7kG9pP5mgWjfqrRw8T2TD9sqDyGmVFa6kD/IXD7GzI7zOd2
	SwsII86XE5057k+J2v3FsYxHwM7zscd13tdJA/NNgPoT/mG3SQ+TXhxISVeqmclpG9q15xtBdXaBI
	c6m6tMMKk7iRXA/G+ofyyECXQcYVM0OyvFax9mwGgApEuwCBecVoCXVO6F8jXWNrAPeWTh0ddt6G7
	EDJxYCa6v/CcJm6hPdmtgChtGpAJG1ys9FoTFW9i1ftzBZowJVmejk9fptTo378Iu3O6HkA7CJJNm
	f5cmsrGA==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaRN-009jwX-1Q;
	Tue, 03 Oct 2023 08:07:53 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:b6df:b784:6a0f:8451])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D67136607387;
	Tue,  3 Oct 2023 09:07:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696320457;
	bh=ph7BpDmTndhVgQkibEyHEMgMXbFU1u8TVxC65OSPSxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M44ioBZhEwt4ZQbAALO2XXtYqIDGCjGeVsmIoBks7uX9DDOhq8vUWkL5PGfjQVglZ
	 1+sPRHNS8dyXnQiakiWavVMU+UfU4V9x9Q5iFbyPHq1AXLmWM9PZQtfrIfdR6zz+H+
	 nzAjBiiAU3PJX2OitiWDAmvtVuxmuT47sLRz0CwXHRrPiYF+qu7NkdopQ0cVaymreP
	 7hd1ZJM4803LMbS3FvYju4wirdhfnaO4b//9sBjo5t8xECVF05/hHuWvS35dqb9Ivb
	 Alpu7hyS0WYUujk7vlDAP56gQBjz/GwtSOH4v0W/euDtaia/xsmOwtku4DFdm2Stbr
	 0cAoRIKo+NhmA==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v10 46/54] sample: v4l: Stop direct calls to queue num_buffers field
Date: Tue,  3 Oct 2023 10:06:55 +0200
Message-Id: <20231003080704.43911-47-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231003080704.43911-1-benjamin.gaignard@collabora.com>
References: <20231003080704.43911-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_090751_651282_A04D293C 
X-CRM114-Status: GOOD (  11.58  )
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

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 samples/v4l/v4l2-pci-skeleton.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/samples/v4l/v4l2-pci-skeleton.c b/samples/v4l/v4l2-pci-skeleton.c
index a61f94db18d9..a65aa9d1e9da 100644
--- a/samples/v4l/v4l2-pci-skeleton.c
+++ b/samples/v4l/v4l2-pci-skeleton.c
@@ -155,6 +155,7 @@ static int queue_setup(struct vb2_queue *vq,
 		       unsigned int sizes[], struct device *alloc_devs[])
 {
 	struct skeleton *skel = vb2_get_drv_priv(vq);
+	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
 
 	skel->field = skel->format.field;
 	if (skel->field == V4L2_FIELD_ALTERNATE) {
@@ -167,8 +168,8 @@ static int queue_setup(struct vb2_queue *vq,
 		skel->field = V4L2_FIELD_TOP;
 	}
 
-	if (vq->num_buffers + *nbuffers < 3)
-		*nbuffers = 3 - vq->num_buffers;
+	if (q_num_bufs + *nbuffers < 3)
+		*nbuffers = 3 - q_num_bufs;
 
 	if (*nplanes)
 		return sizes[0] < skel->format.sizeimage ? -EINVAL : 0;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
