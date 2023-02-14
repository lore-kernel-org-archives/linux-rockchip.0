Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD90C61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o01k+9u5FRiaRDBoomt0SImRnyqtUn8YjGiv6/WSLGM=; b=mE3nqYZvMqEPJG
	T/C/f2S1irALb/o6PJHSqdooDUM5X4j7jy9M+cUPvhk+15f6KxNHEp39fcsC+gjh/X6T7Fuk6mJOY
	NZuFe7cFCAVaRCcPSp/cQBlmYyNka5yfZQR+9msTRJumSE/fEp3eSFh/CYOVtH8tAQxTT1xj6RCoo
	eR61WICOmXw5S+hA70VdkuRx09ARpYA3pu1ZCbbzBzFDOD+VcGtPXUsdILdfJKx8ShWGBDgFl6WMI
	2nnbuMt2UUW1a8cMiTpGiKQT9cmQ+isfIEm1uoXAq4wKIJdXJfgNTyNCHrom1G+TsuJIJ950x5h1P
	8mN75pqpBbuhWNd3lEMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwJE-002ADS-GR; Tue, 14 Feb 2023 14:29:28 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRvwf-001z0R-K3; Tue, 14 Feb 2023 14:06:11 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:37c0:9b2b:ec16:1f37])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 46D826602175;
	Tue, 14 Feb 2023 14:06:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676383566;
	bh=C2ytQn7g5F9glJYj8exgBvOufUBxTRZnBChpS2Z8Ydw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e3+G7ueG3VN4WAMNizu6XIi92CiJxsdojh4s4+XdH8eIHD/a0jAUCeRn0XzyhBH5v
	 fI4gk7n7+DJubMzrOT7NcJ2hrQRUgFqxzl7TXwS3Lz4cNnXQazJkvLgYyPeRujcOVh
	 40Vi9vdY1JAuM4QQVJ2eUTDS9emd1182qBwITTyv3PxtEblM5/fGf5u93xn42wF3IR
	 cdG2cxLrA+eTAngj+mPP5oPNaPoASZoNIG2uXCqgXH3WEizVBfmgwSkMm/lq5d7Z+V
	 wQc5ioPmVCFYIbEIYLy3AY3Pr+P9EIGdsI6NK5aw59R26izo+1yWJyDypZWjFs4adl
	 jxpHABNGvtHLQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil@xs4all.nl,
	nicolas.dufresne@collabora.com,
	jernej.skrabec@gmail.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 04/12] media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV12_10LE40_4L4
Date: Tue, 14 Feb 2023 15:05:49 +0100
Message-Id: <20230214140557.537984-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230214140557.537984-1-benjamin.gaignard@collabora.com>
References: <20230214140557.537984-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_060609_859965_B814CB75 
X-CRM114-Status: UNSURE (   7.72  )
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

Let's the driver knows that V4L2_PIX_FMT_NV12_10LE40_4L4 is a 10bits
pixel format.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 9df302278856..992c5baa929f 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -71,6 +71,7 @@ int hantro_get_format_depth(u32 fourcc)
 	switch (fourcc) {
 	case V4L2_PIX_FMT_P010:
 	case V4L2_PIX_FMT_P010_4L4:
+	case V4L2_PIX_FMT_NV12_10LE40_4L4:
 		return 10;
 	default:
 		return 8;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
