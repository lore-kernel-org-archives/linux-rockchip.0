Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAA1C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBq9XLjBPUxaQk1jUqHixSA1Uc1VBdIMAzUB4BCAqKc=; b=oEuiPVcr8Tv96c
	eZxUGgqdE9ZZcWttM16vwzo7RLOWHOgeZUhs/uQH033DhLkaN910beBcsYvtKkQ675IjjrFkCkbwZ
	yoziQsI3mhD03/8ZImTyZisYaon6/bT97ynCK7DNb5ZFKuZ+oSJotaNzjCJNDz/9IbqrVuSITgWOm
	JK1rCjXBv0bAe9jvKUOE/ZZNUvCofYQktQkQ1VKhD/psg8ZkWnG1yWu97HiDjJEhidzj1ke5nECbf
	fNU6GFgjgxVY0m2T4ZTulbeiLxqG/bH+zJXaHwQRanH3wCvZe7fbnvwMNAUIfzyWqVPr9MuzveUlH
	70xiYeLueGv/JBOr9EXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0N-0000000Chht-2oDH;
	Thu, 10 Jul 2025 18:28:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtow-0000000CMLS-0SA1
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g80E3oSz/omJ6RwmtY0/wAHZ8ite3UzHVCEfpHhebcI=;
	b=Mz7duTc/s2VgEY5xR95Ic+GAlYvyBxKyfOh7VEzaKGULzP/SbIePxexbqQWI+NyAz5iqSP
	+ERRBjif4hiKoWlDfa1QQDP6gIxDXryhLnWcxJ49PqbWtt/LfGLXgvKbf1qoIRXJYsf1tD
	LDxiGacK1csstZkG4lmVG2ks1HB2tm4=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-7ld4KGdIO9CdUJXc1y1jng-1; Thu, 10 Jul 2025 12:08:23 -0400
X-MC-Unique: 7ld4KGdIO9CdUJXc1y1jng-1
X-Mimecast-MFC-AGG-ID: 7ld4KGdIO9CdUJXc1y1jng_1752163703
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a6ef72a544so25870681cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163703; x=1752768503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g80E3oSz/omJ6RwmtY0/wAHZ8ite3UzHVCEfpHhebcI=;
        b=XUsACi7Zo8a/3UjDlM/r2XREa6NlcQibH2xEEkwxW/Bysq8Zb2D0yv1Yg2566pe9bx
         vsKhqxAMzFMr6k+yS8sP/6+ePDx+KOJF9bkTSuRXQx/T6d4TmuWjLAP8tbfwIW84KRdw
         0bIu8OQSB57svfWIHmONo8LMVcfcZnLS8tgkdd5o67IZ34UM8xdptFIdjcqvdsFz7ehj
         1yAz8KCqxh55AaAcIdVsfvW3+1AJRGLVfpODpV4bbz5MAT9P++fsDZwBD+IbiBiACfVh
         op8uc69JPJNkTx5VzryTGSUN54xlTGzG8n6K710gLzraV4KTY6DpWjoYcnoLyrCMcPIf
         Zgfw==
X-Forwarded-Encrypted: i=1; AJvYcCVus0+48MQVhmPRWxb+fY5OkC1vrs6gEhJIb5CjNz5mqhHOZH62v5csFKSFba8y+jrZiHol4fm5bjRLCT6alQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhT7A30BR4UMWZwh4e+0y3PsiX+ja9iopA4zTbSQA0aDvc8aZE
	nm1vIqBRnIlfrIjXNdiUPtmrz3Dx4pXxmPfXR7UptD+XgzOn1ul1kWhaLTaUIR7mWkZb/ezx8r3
	+/dZ2usMDeMme+yHx8966q7fs6/w/3DKAudQcLBczo959z8RCD+OQzW8CkPpovIlSQx5z0uEhhA
	==
X-Gm-Gg: ASbGncuV778+TfWUHoWNKAf4tU6BsWCacrE7ZIvbyBICtluLI7SFxyVEdnJ5FQVCsfb
	lADb5VLPwp1/i7nnVBAO6zp0N2K0Zk+HoWnWEs3Co+qby9Uoy33ucp34cqp6iRVlMwtfyOpd2IS
	yuHbMSoGK24TAfnry+SWrpUv7oT9CkaBWf9+nwTd4hvOd49G1ZlqdeSQ63aeqUBVcbYEsT4QJ0X
	RIOn6tcp8QMPytkXBs5tWOaFIUqJhY7L7Yi6xWh480VOfDOXW7ex547Htk1Jixv+QBohRLjq8DM
	RgmbxY+0u1v2lzM6qe28xcyjTHjsrXVLL4wthc3/DeakKfnqSq58ovC3BfvG
X-Received: by 2002:ad4:596a:0:b0:704:761c:d021 with SMTP id 6a1803df08f44-704980653a9mr39030196d6.12.1752163703047;
        Thu, 10 Jul 2025 09:08:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdCZQ7W3y8kThWl4w+CnUCECNX6Cyj79KFh3PeC/HpUcHl6P8QBnf3iscE4pNrdpapav2INA==
X-Received: by 2002:ad4:596a:0:b0:704:761c:d021 with SMTP id 6a1803df08f44-704980653a9mr39029866d6.12.1752163702588;
        Thu, 10 Jul 2025 09:08:22 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:22 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:16 -0400
Subject: [PATCH 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-6-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1507;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=ZKlsIvlM5HHyda796a+VTO47/qeucu/BCMXwHXG/S40=;
 b=+r3EuMe/pzh9qF2oPdX67HS2VmnZ350abewNM1edJtWvBPtHINXt26quhidSdRFg7SeVLEzsu
 YVJmnDogbgKAaAbXcN1nbXJrSBi27Fk+BJ7qXWfiPpZHj+x2CtpRepu
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Iiu6b_WNgDIKOxgO0vxqe6v5qN-PzEoQkJfN-wNpxfQ_1752163703
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090826_211076_F184AF9C 
X-CRM114-Status: GOOD (  11.91  )
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
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
index 553725e1269c9d7ad88f89367dfa1cf367aaf1ce..a54d44ef70ab49937d210f04fdf42300e8e5f2de 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
@@ -97,16 +97,18 @@ static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 125000000, 1600000000);
+	req->rate = clamp_val(req->rate, 125000000, 1600000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.enable = mtk_mipi_tx_pll_enable,
 	.disable = mtk_mipi_tx_pll_disable,
-	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.determine_rate = mtk_mipi_tx_pll_determine_rate,
 	.set_rate = mtk_mipi_tx_pll_set_rate,
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
