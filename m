Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8C5C77B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 11:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICHh+JA7GHf+34GOjW8l4QgYv7Vc4NiyNKbGcS9QLYk=; b=XAWVMK0af/hthr
	AK+9pUX5dWI+ISpBJxcqXl+smPdGKN3Vog1DDkKbLmnW3Lxxot5Abfl7/gO0YHd4wGffOe1dPXHAS
	YKtPQs6nh9rjGOb9bDjHUwnA+GLSIobORiJpY5nyYh+ed9oveEX+GtZ9VLFwJyWvtYLZkFovd1QCF
	orsSzXVf6zsphOjsmJNjQwDEPV31YNk8UgpXPK4GbGwMgmUn199xu2wXae7LojDz+1HR90/PYAood
	RvrjJG4aPL/+lwxHRsg2CyNJgRpSIAhACppkuizuDlV9uEQDdkXHKRC2wgcOg7fsvVm2f0bxM3iAs
	ssDRNxPvRqCDWIaGJkVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZ6U-002zIH-2D;
	Wed, 12 Apr 2023 11:57:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZ64-002yvM-0J;
	Wed, 12 Apr 2023 11:57:10 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:c2e:89bd:4b8e:9e98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E77BC660326B;
	Wed, 12 Apr 2023 12:57:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681300626;
	bh=g41XyyHBmbMssUN5c7ZvMN8gUuqx7OSKT4P6IGFh8Fw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KllQBzg7XRRIbLQbrPYlMyUjiVCXtV94oPZMkV+6s4RRUKnzgGqSlyneCj5GESOLl
	 F+agXHvWPHWDSeCoq5wGDYGEc1d2ZhJjRwuqGReNCU0E+gEsqHOVkDeR9nwGoRRMoS
	 jqK1AkaBDJg5tbeGSqP0tebBk5rp/ov01nVWnn4owzmBZq8tnIzFlNaezQwRIaWSkE
	 l4M5aNNd8xMZkicV3Iisq5216o0EbeUr/a5QGItfjYh7XDVpW2x8At9ttgjEi9LYmg
	 zGJemjqOK3pUMyLp8qg7voTUNvsJ4AYw3wptl22rf2bDx+PD3Pbhak1516ajhoSX0U
	 51eCXgbUAt0Ng==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 05/13] media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV15_4L4
Date: Wed, 12 Apr 2023 13:56:44 +0200
Message-Id: <20230412115652.403949-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_045708_304425_E7311073 
X-CRM114-Status: UNSURE (   8.40  )
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

Let's the driver knows that V4L2_PIX_FMT_NV15_4L4 is a 10bits
pixel format.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
Changes in v6:
- Rename NV12_10LE40_4L4 pixel format into NV15_4L4.

 drivers/media/platform/verisilicon/hantro_v4l2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index d238d407f986..4445dec630cb 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -71,6 +71,7 @@ int hantro_get_format_depth(u32 fourcc)
 	switch (fourcc) {
 	case V4L2_PIX_FMT_P010:
 	case V4L2_PIX_FMT_P010_4L4:
+	case V4L2_PIX_FMT_NV15_4L4:
 		return 10;
 	default:
 		return 8;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
