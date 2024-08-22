Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06157C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLLx7JRsRN1wvXRmn0bBSehgNdQ54Xs8Y03fKkN7tss=; b=Wd92i5sma0G86d
	P3FxJKX4aAuzjJMcxpy15cr/DzNGRfNnYMA2ofRa7zsygKU1D5SnlFY5WHYPn3rWR1CmU9Bdvj5xy
	eRVHKmesJKyZzouZpBN045UieBvUVPmqjbCuzlDTwIyqbY6RMxyywRn4M0bd96brihgrMeh4T+L1C
	snvjvDEwpJEekYpuBjZOYYThLv4zrWtAVKB8HeKiSpkyp9e3UE5Xych21VWAX4wBjAbvH9xe3n5j4
	bP7jTlihCPOgwrhy+VfMZZ6LvaAOSoEKnDt1xe49mFg7FYQ+xx+rtBk91OMmPmnRJ+WeDGq5uq8e6
	FS0Po1y5Ovxrjly4iOGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDph-0000000E9OO-3UmH;
	Thu, 22 Aug 2024 19:50:57 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDpa-0000000E9M1-2RZe;
	Thu, 22 Aug 2024 19:50:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356242; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Smzzu57kwtKi3+i+iipKpGHDxPrw7B2rkSbgYLIZfMT2r3RegOb2fTQsVZMdqBgicLbZOzv0jtBy1L3NjYj6Vf+QBvV6DPriVr0uzsMtYPkINYj+kxy2AkyrHoRb+YOOlIilDCEiF0MSBlAejW6VUDUOTYVJ4lThiwOamK87aXI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356242; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1nAinSTq7n3Km4Nm+1m1jCkVbcD+GZU2DovoVzRzBTM=; 
	b=C5QYwUs0iwARPln3VKNqIbdziFxEiKtMXA5MyCnGzTP18qiZdRZOUdSuNyyNb3MAtVOucVFGPgfF45HzAZ2vUR3PrU42RJErSpU9ocRG0FW29AI+TBv3XqmywcvLSTkaiXghu/tR48EoWyLRSBfQadf2myOghN51ZEjrGNw78jc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356242;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1nAinSTq7n3Km4Nm+1m1jCkVbcD+GZU2DovoVzRzBTM=;
	b=CwB841z/RtRKBaoVD1A9dANIRTv7FWlDvSFMVX4o/0nttPFSm83EIn5UkZYT0oW1
	Hua/BAlKvxB2UD7m/EmEJy6fbHxZneInLlEnhaMFBp59vgrPGIKurjcm/yww00EltgV
	rgSru74wOegCrkeJ2n6D9HzyLpD7Emn//ELqUoF0=
Received: by mx.zohomail.com with SMTPS id 1724356240193829.9990063974029;
	Thu, 22 Aug 2024 12:50:40 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v6 2/3] clk: rockchip: Add new pll type pll_rk3588_ddr
Date: Thu, 22 Aug 2024 15:49:33 -0400
Message-ID: <20240822194956.918527-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822194956.918527-1-detlev.casanova@collabora.com>
References: <20240822194956.918527-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125050_697120_D3138C4D 
X-CRM114-Status: GOOD (  13.16  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

That PLL type is similar to the other rk3588 pll types but the actual
rate is twice the configured rate.
Therefore, the returned calculated rate must be multiplied by two.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
(cherry picked from commit c99648df60d3763723de9e443b862da44e8872fe)
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/clk/rockchip/clk-pll.c | 6 +++++-
 drivers/clk/rockchip/clk.h     | 1 +
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 606ce5458f54..fe76756e592e 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -914,7 +914,10 @@ static unsigned long rockchip_rk3588_pll_recalc_rate(struct clk_hw *hw, unsigned
 	}
 	rate64 = rate64 >> cur.s;
 
-	return (unsigned long)rate64;
+	if (pll->type == pll_rk3588_ddr)
+		return (unsigned long)rate64 * 2;
+	else
+		return (unsigned long)rate64;
 }
 
 static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
@@ -1167,6 +1170,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 		break;
 	case pll_rk3588:
 	case pll_rk3588_core:
+	case pll_rk3588_ddr:
 		if (!pll->rate_table)
 			init.ops = &rockchip_rk3588_pll_clk_norate_ops;
 		else
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index fd3b476dedda..40fc0e4703c1 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -287,6 +287,7 @@ enum rockchip_pll_type {
 	pll_rk3399,
 	pll_rk3588,
 	pll_rk3588_core,
+	pll_rk3588_ddr,
 };
 
 #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
