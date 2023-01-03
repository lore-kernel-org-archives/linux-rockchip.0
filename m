Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D53C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 18:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc0Y7Scz510XYoyXjq1hSnXYo+tEeDywKm+SdaxSUiM=; b=vaEUAufN0vcaH7
	VbmQJLtqlKcylWdyaL5K2PRvdjqCTlCi6rJR/NeoNSsArVc9oLrjvH/Ga1rTdYFTJoxapL9EF2xqY
	SzCDFOq08GHNShGqEVBbu93HdD4cvbpvAwT94EyR2Eh91dsEfH3ASW6X/QbkjwdGYeLRu2bNrvQg3
	jJ0vY/KAFie3BQTO00k4buWEhF7P1A2ZlpuLe/MLyQJqfZs/1eYji+MdJsfFfhDiBD8bPN5gIXRf7
	BY6r/3sv5NQuJ3e5AuUy5mEAgw1Sgu3972GkW86U3vYqRgxHy8v185TgoZM8C+d7ObUynvztIuSAk
	S4ii7qJMHsQL4IF3koVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmHj-0040ye-20; Tue, 03 Jan 2023 18:45:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCkf5-003BrF-Hq; Tue, 03 Jan 2023 17:01:19 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:abfa:cf23:1e4e:2b14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2E52F6602CDE;
	Tue,  3 Jan 2023 17:01:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672765271;
	bh=9um+KEVR7P+gZc2gYPj/3g5J+YLW4FhxyxYBCrnBhZM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hvSm4baQOwhZ4B92OKP2cfiFaP97PX590UiGpe8i/DFSfM/OTe9xqnhJrSDIEYoaN
	 r2u2IHfIOIrSUD72PVhdh339P3PFt54Jx1lcY7CJFpxu2bVUyrqk4cIImAFZSXqaHT
	 56t4E5BsKZphYMvYlCBYyr46kMotb1EWm/0WTUVCjQ4fgAYSageHKtjGh3BQxM6el/
	 +wc9kaVA7ybWGXXecPX3zseTjcXsxw6SlNWeiLA4AX4Jh/CaalpGDg9eQ+fHrU1zm8
	 3s6gjSx8V6tVM3LSHp8+c1kWpnOYzubDE8J4iDPKd6FK8qTK/VGcc95DlK/qb2YDY9
	 JfVuVZZDmvpJA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	daniel.almeida@collabora.com,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 04/13] media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV12_10LE40_4L4
Date: Tue,  3 Jan 2023 18:00:49 +0100
Message-Id: <20230103170058.810597-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_090115_937473_0AB87A72 
X-CRM114-Status: UNSURE (   8.47  )
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
index 2c7a805289e7..162110ac118d 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -69,6 +69,7 @@ int hantro_get_format_depth(u32 fourcc)
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
