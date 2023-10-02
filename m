Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58094E784B6
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Oct 2023 12:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZetiY2C/IhhyaYVToTKY5uWfOb95hrjZgX6nTv9VYew=; b=Po6CeLfYpKNlWP
	1bOA4jWN0u5Vs4bqFQ2qWbG2sN3pW0c1R4Ba7Tv/eK08ipmldxBf7njPzL5QuMOhuHUc5i4Y7wOnD
	AstpQfObCxmb24akJtzL4PWBgU0wRKzWrAjZi31owjG2sMB5LWomSBBbc5xPiaZTZrBmrjuX07HRr
	I8TQgxCluwm4u8AM8wUU5vnwx9Q5mjKjelS6UQud4RFEU12ln2Jnl/jo31R17fFi8mfWxrzT5MFV/
	MToJBxPh9Zsi3guedTRTgfjhrKIqI+cdzWpX1W/JGhyHGYYbZGpqbnkL15gev+ayNUL4qzLiKM+hz
	G+yBwdjP5sxt6f1JMdqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHkY-00CfeU-25;
	Mon, 02 Oct 2023 12:10:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHhX-00Cbg6-2U;
	Mon, 02 Oct 2023 12:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NHwNkhr5QFK9GIbxnuRVaaAZiMba2Wdss9SCt91KwfI=; b=Y8vHoYDusdEHqeBvpKDaEHUfA4
	VZVAgK7EOUPgHXWWOgpud9v6jGTK8qFXd3sQo/6jcAfVLBwY15f3iVgdDe3tYLVooU90mRjpJfO0V
	lmapxiXNHkbVy1qyuwW8/BBs+JvtURy6TCofCqv91dBztSCeb/tPz3tUHEKGzdhnPntqScx3yCwjW
	jKKEcmEApY5JfhkiuDSZfrTpKKe35tlxTFgwRkS6QcVDwQOldEwKtDAPdJvTSZohgff/xgJq2na8N
	ab6w51cjWt7Ojvfgpy1rXn5ap7wDtFaEnSyq041MC4yPs20REJXAAXAgs4ijMx9XqG6ui29V/LpP/
	0kL1iaWA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHhK-0090Rb-2m;
	Mon, 02 Oct 2023 12:06:59 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:9537:67ca:c85e:d0ae])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1D1DF660738B;
	Mon,  2 Oct 2023 13:06:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696248409;
	bh=/cndzbQG0EfdVraDFE6iiWONWcwO1/xN2meedcRh5A0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OZIZlYiZZBJVXu8Pjtt7ACOpjp2e09ky4E+doqU+FZoBSFfKpaaSEEnMzBCvVKe0G
	 kcQBxMRwq5WboOadi3pNaVJkoFB3hYrYEqXQuj/Usz5LZmMumKq+BJ4BdehzrbQU6w
	 +wtE8ZXtN21IkRbesIipT6PpOuwhxGUN1ELcvYHmCWTrzqhxF2JaSvBvHAOuZWocCe
	 PT62SMp/vuNB1QGmmEYhvVxrJgCh5arMwkL4qz/08+QSEbSP1uz/qapw7PgVHNg3tQ
	 l9HBOgJ203mFYR9o7F8qevla+unEkgQG4j6bSYiYuLQzljzcaSH4bTceUlOVKiNMg8
	 qwR7V7meifDmw==
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
Subject: [PATCH v9 46/53] sample: v4l: Stop direct calls to queue num_buffers field
Date: Mon,  2 Oct 2023 14:06:10 +0200
Message-Id: <20231002120617.119602-47-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002120617.119602-1-benjamin.gaignard@collabora.com>
References: <20231002120617.119602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_130652_771000_14E19A59 
X-CRM114-Status: GOOD (  11.47  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.

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
