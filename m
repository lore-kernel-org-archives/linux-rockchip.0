Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FF6CDB482
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 12:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6f0Ioii/RneFillWLJOQZGrC8RgGZ2e33xR0sI+Fw4=; b=IHIQvJ4deCOnJ9
	tn+RcjSM/aYKahbJRmnQUkOTiAJ4giEumAy6LPZsM0dQbE8Mq9hh9ZSxEVXd3Hd0klu+qbHogDcTw
	3H2pBDawsMkqlOYMNz0geGcJ2Xo4uBrMYWGvHFLp9Uq14QYDcevEpwCQf54L6lOykws8RlDlKV6G1
	/n0T1CcvdGv1azcf4kOQc9daYYrT18G9D4ygi9z6rlXAIqvsvruUljRMa5vDp+m2V+L8pKlU9XBYR
	BL8Jum0qXCLMRudZ+26JTio2GGMBuBD0ZBcpf5ZDV2l1Qyy2jC1rPb3D99aL4gC2CE1ZQBgjNYi/z
	dTB65nhPeR02lCot6twA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSad-00HSC4-0H;
	Thu, 19 Oct 2023 12:57:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSWI-00HNh3-10;
	Thu, 19 Oct 2023 12:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9mE4isXMY+sPvFFydzybto5CFyUf4D1YY7+c8Y3rQIY=; b=NUNsjX2MtDpOBzlSanJj5CXACR
	69oL6k5gqHyvDF8D/DoWKitLekOk4D7npraCrLzljP6b4PyBVKMvZ364bOb9hqUocUnA/go5tjGVP
	bVdndP7VqKU7RR4JcL6y9lkoBmeMuZJB4sGpHAUHqj5Jr7rBwVEMFlXonHYy8V0oo4Kh1tqYsULGZ
	Sf+GYvLMZULQx1zaCPiQixicvJGIur8Q5O/DqK8j8quwFwNouBdl7Lj+taE8rg5xmo04EWmf09QDi
	YHm8NHP/x49AuOHmesdqTvebs5McoI09/hn9VPqZyyD7ypkfCG2GVGYhK23jcGix0ja6IiLYmuvOr
	x4EW4+AQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSWC-009rU3-32;
	Thu, 19 Oct 2023 12:52:56 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ccea:1fb5:34eb:239b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 60413660733E;
	Thu, 19 Oct 2023 13:52:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697719968;
	bh=Cxne9UW1Rdv3DqE7yxtW6lkbxfpON9tV+mkocfttCkg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NL2MRYBl+nTe3/yuVeqtXBB/6CVcreZqdbo3L+tLPGcBlDZB6OYHE+3xqMV8DlC1e
	 zTv+q30S+xfeelVU5D4KSUByICt+JUWQav9A+YnN7vMaIhwgWOYG0un68LqziH/XNp
	 /IRtI8FPolDLvWpwDxJdG90M9KHttFcCrFGsJRyHnbnO+M4iOXxa+IAsipJwNy9MPZ
	 k3/S7LRAxPSQgmetrfCRpNFido7+zVtYmtoLQXrqQLy7XEKOIMePmKQvp6P579jSPd
	 GF0/QLv0T7WM2JE+ikzPX/2wygOfFg0tZ+463eiP1CTHvoWEJ+YtKl56kW60tjyk9a
	 SqdDJ9URQSncg==
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
Subject: [PATCH v13 34/56] sample: v4l: Stop direct calls to queue num_buffers field
Date: Thu, 19 Oct 2023 14:52:00 +0200
Message-Id: <20231019125222.21370-35-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
References: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_135253_392472_7504BF9E 
X-CRM114-Status: GOOD (  12.39  )
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
