Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E2AC87FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfLeNRvmeiptBjgR8Y7ApDpVE9CNlTvLy6JxAFX6WNA=; b=mo2v75f8iGlK91
	DhWRg9f30tq9I+iT/htIGr/7V1THdPtBzCDFsHTeILWxvmC9PKJG0GevCT7CNLvMWJ0MSX5UdvS8g
	/eOoxz26qmEFCvN5vHU23iBDXn1B7lrKSqT9SWXAMMGD/8qZOMXG6a+OCgLY2/DS0Wkst0SBRzvIl
	SaByQkqtZe6HkMclbspLnLGAhijcg0SwAojWR7Dss0HpBmE8yEMyMdrZVTWPcOQUzBsLwn2OsvhiV
	uV9kWsNcGuj6OvbYwIL5BLYvxWHG7L2DADgE0vkuaGD1L6/S3pjYbMXfmf1zdNhYjhhE/UhjJoNFO
	2DVW5G4E5AwjPiTZt5rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF2z-000000069yq-1USy;
	Sun, 10 Aug 2025 23:01:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoJ-000000068BF-1Yr4
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=; b=R+7FmJ+zaB1rzJ+tAh9WxT5Xbe
	k8mbOqlNdKVpsnOPBFUDkq2Lb2KNorOZ4RfRR5j7n6EdLlh2BIhe1B0Nm9UbXU667L9laRaBIz/V9
	KoLnlSsC9+/I4nXHS1Pwh7iKGmM10xe4rXmu/FiLBqGnTzUOCjVVZix8UPSSGLZezPy5PseGZOiGe
	Gu70G+uvKESQTMNPMS8yNlMM+uVUrp0fwgVzz/Ed59ZJdynGbTlfovH6eWj1ITWWdzqa7ZjDzkZxG
	TBLniPiWN2m1vHT0a5RTPhmRphvigBa30+8JYUfMK4n5V28QP7jV2/d3U8ISKlXa5m36bG/ZVU1Rp
	Jt0ofcgA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoG-0000000FJhZ-2KxR
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=;
	b=TdofCqCwsHtyoWpS1jwr+hYJLfv1l2GJMWHqRB07K2iy0C1s+JSCsnHE1pGCwVlfWYXlDb
	RxmADlLFgm9WtWLwT7YOQCLBD8rXcL1DjxKIqUln0cXzVRzv+FRbxMzeJbMUKXHT49JA1i
	Jm3IGMfHosfP5MiCFAg00wlPbbi1yK0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=;
	b=TdofCqCwsHtyoWpS1jwr+hYJLfv1l2GJMWHqRB07K2iy0C1s+JSCsnHE1pGCwVlfWYXlDb
	RxmADlLFgm9WtWLwT7YOQCLBD8rXcL1DjxKIqUln0cXzVRzv+FRbxMzeJbMUKXHT49JA1i
	Jm3IGMfHosfP5MiCFAg00wlPbbi1yK0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-271-Ln53D4W4OSmnBnSHB-mIGg-1; Sun, 10 Aug 2025 18:46:33 -0400
X-MC-Unique: Ln53D4W4OSmnBnSHB-mIGg-1
X-Mimecast-MFC-AGG-ID: Ln53D4W4OSmnBnSHB-mIGg_1754865993
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b081d742d9so149093661cf.2
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865993; x=1755470793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=;
        b=vvQuiNH8cgc0X/ZwEa93UZb3N2j+xGqDG9sUS8LVVfpUtoujwqbIWUs+jgs1kKW0Za
         /HZQuDHQ+bh/TA9bpeBjTjsco/EydLdplhlxkps2f5dehSO/ZtBpZDM17ZfQO+63BLqq
         aCSgIHJV+T1a5saTNelmKp3IE3U/Ia624PQ4dlJDsZt1OCIzMok+gbwQdTvqMm7NYmGN
         hU09YBdRTzT8mMlbMYSnC1SWzbj+i7L/suRFXYra5paSRj9SHOgDt7AB3UjC0vxdSqUB
         fqJKKw1JSPnj/3SbXm/bSjWYOTSfMb8qkFi4TZEo6R+pD0gOsQf3lmBeE3GZRYM9Pdro
         ybRA==
X-Forwarded-Encrypted: i=1; AJvYcCUvrORogjzqIgKC8dPtX9r/61RUeH851+Jy/evc2dBixl1rBGh/herW/l9IYb6f+HiLZGG4q2aulUkNtzZQbA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6frEtQxFOMVf47Y5Ksc5c63YFj8Kmzczatse40XULIlmlsVVN
	2bgc7YW3IbAkNSE40XTz4LVZwRCwIrpS7vdVw99YArO/yqQk4N2vrRmoEaECLqnGul6k2b0PC6m
	P8lU99oobCuyHBzlMLAKlouf8FK/NbMJbDyADlUB2LRrtoKWNCK/047mS2Kk6QS9zWsx99GvhJQ
	==
X-Gm-Gg: ASbGncvrVxVgzoL8699WxANj4jetOo3wqp9A2r6RKVYuG6Tx4apVQGowjZt+7j2rXw0
	R7h2jsSyUcXRM4k04ILg5HFmbDX/3T7up5FqaPfeFSQYPiXpN8joz5h0nlgxXnvBH6qhhFnOi6c
	SmK8FrevM6VjTQMcgtlgQJ2xiJf+4FdQQfMFc1D1Lmf4GcCzPgq9yXiT16QvYdRpFGEnSZyILNN
	ei9wFqTRjliEUHygFyqhcfqT0+pD9On/Gpi7SD4SW96JH6jcETS07Y10ycAg08AK7bViDzhbzyW
	MfkLWGrSX5J3oDhEUr54gFq6Q78koGW4lsu6NdW4Yq+bSs9F19xyeLp26DUI3t+QYYlzVTeEmRS
	7esH2/g==
X-Received: by 2002:a05:622a:2b08:b0:4af:1fb2:339b with SMTP id d75a77b69052e-4b0aee5ae32mr145137661cf.59.1754865992945;
        Sun, 10 Aug 2025 15:46:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3TxaNlOm6CWR20thRFc4k1fydx3ZMYAWuNcAfSFTfYY5caqw80RA7wi77MbUh3gKnqnfd0A==
X-Received: by 2002:a05:622a:2b08:b0:4af:1fb2:339b with SMTP id d75a77b69052e-4b0aee5ae32mr145137151cf.59.1754865992498;
        Sun, 10 Aug 2025 15:46:32 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:31 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:33 -0400
Subject: [PATCH v2 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-5-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1519;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=x3H+bi72Ud0O2ADBCQwtbhpk+18O8IQnZUeD4zYXytc=;
 b=Ko6nm+pXyNo8X1nQDJr+lVHcu4cXjZr/njvgKDiWI9hUw5g4z0iGWyficBfc/rHylfr1bFBC5
 OcjcwnYNCZzC9mq0m1MLk4fjF5rjaP4zt/gCvk1nnxylsB0GMKTpJxJ
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZJ0zJV_9_7WyLfbAtyghnpZRuuSnmIlEG1ucjPIIWZI_1754865993
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234636_813149_E2163A6E 
X-CRM114-Status: GOOD (  11.35  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
index 673cb0f08959e0e4f2b1ade2ebaf796e8b76f8bc..438ff3605d90121b7bfe02b3ddca8194437ed9ba 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
@@ -237,16 +237,18 @@ static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_DSI_PLL_CON0, RG_DSI_MPPLL_DIV_MSK);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 50000000, 1250000000);
+	req->rate = clamp_val(req->rate, 50000000, 1250000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.prepare = mtk_mipi_tx_pll_prepare,
 	.unprepare = mtk_mipi_tx_pll_unprepare,
-	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.determine_rate = mtk_mipi_tx_pll_determine_rate,
 	.set_rate = mtk_mipi_tx_pll_set_rate,
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
