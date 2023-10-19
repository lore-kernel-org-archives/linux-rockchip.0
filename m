Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D59CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 12:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rogwT1CuKGKsaYzUXewg+jpNugFO1tnwO4D8CLniIpQ=; b=rDIhVf6i/W73jj
	r+1OrxvDwzzy5SWoa1bTaI8opKJCKX+ckQc+7RgvraMawCT6nUFGE+a08KFGxTMbLV7dyaMFQ6vtx
	953YA5T1z+/ttWGlM6+s/UI/B2OtrbKzTepD93o3EEs+oE/O2rOhZVrKS4O9pxZDkXzAHmof/IUBA
	9zjJIk8ejcv6B7Dn2DcAlzIQcD5HQFaAuLX35fjR/10ek+fRjrjW9Ds2nQ6vIzlbI5fXPyFeQ2X2R
	0t8JCvrgHBJsOHXYV9gI5VeS2uwT28xQJC5asmMH7sxiygzEg7AdQuGD13rAaT+KbznbP+BOFYHf5
	zk4KCNBsPwMGElalCPEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSXp-00HPKS-28;
	Thu, 19 Oct 2023 12:54:33 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSW6-00HNR8-1N;
	Thu, 19 Oct 2023 12:52:53 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ccea:1fb5:34eb:239b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 846A9660732E;
	Thu, 19 Oct 2023 13:52:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697719961;
	bh=7OP/lnsbD5MzPZ4L/gceSmxIzda3Ng9eLtu0phjni7k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e9Q5c/XGmoS4q5vNs27JgY/Cjoiran6iFcIpvsC9LeJbR4YLU/pJBA08Ipaf+8RxA
	 xYJFq/edyFkoLyHWKDeV7GGGjkYX7lemUC7swD4Avp2Eu+MZb7k2eSzQQwGRJfR81R
	 sD0BI95cAER5TkephbcbW051fRv8rJk7Ni3/LdylTvOKV6LyqlfFQ4bjvjapep+M0L
	 dI6mQCk1uR0a5Qt0d5kLvBrIEOmbusOqffQKB9xlXFAsB6tEN5D9AD0f3NKk4I1+ne
	 soPvpnnrfgpdG8SR6muomRK1e1jlZUOz2L7eJ4Tl6fBXICwAuEM0tSHSuUSR9wUwx2
	 w2DcSY2J9uF0g==
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
Subject: [PATCH v13 21/56] media: pci: dt3155: Remove useless check
Date: Thu, 19 Oct 2023 14:51:47 +0200
Message-Id: <20231019125222.21370-22-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
References: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_055246_621996_0E8C9537 
X-CRM114-Status: UNSURE (   9.55  )
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

min_buffers_needed is already set to 2 so remove this useless
check.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/pci/dt3155/dt3155.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/media/pci/dt3155/dt3155.c b/drivers/media/pci/dt3155/dt3155.c
index 548156b199cc..d09cde2f6ee4 100644
--- a/drivers/media/pci/dt3155/dt3155.c
+++ b/drivers/media/pci/dt3155/dt3155.c
@@ -128,8 +128,6 @@ dt3155_queue_setup(struct vb2_queue *vq,
 	struct dt3155_priv *pd = vb2_get_drv_priv(vq);
 	unsigned size = pd->width * pd->height;
 
-	if (vq->num_buffers + *nbuffers < 2)
-		*nbuffers = 2 - vq->num_buffers;
 	if (*num_planes)
 		return sizes[0] < size ? -EINVAL : 0;
 	*num_planes = 1;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
