Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB0E3C61DB8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEnz7XZyqCKO6yszFyKZjJcxWpd2PrSwg3+eA1Tx5jo=; b=cHWTAcR0il8w4a
	jdzM46lq9L5HGOv4NY1hzWEZZjS0U6Lsy5FymRFlJ3txwPbk4Xxwj88xsMvZLRrqHGEQJ8VszpwSD
	IsbLsyU/kPfcBMjSYvIBeSeB2I1FLf1o6GkHgTL4hvjiNAGSlZb0gvv64/Xv6y4613ssOGO54k7po
	Hl+vkdlN0UUJiPh3WsERjvU3geBA4rlnqsT2Z4c6o8IFbHtNgnxwVIjlJTGOVqNpKNKJubh/lA+Me
	6PQ+0WujQYNJrF0eiBiFqSJTOW+1ZF7Y+odBygMKIZqs+6rXKiQsNE+0hPOqrrYrjbexwshuKczun
	2sCviJ8B8O/0MhQB/XJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKsS-0000000G3yg-2Q9U;
	Wed, 28 Aug 2024 15:46:32 +0000
Received: from a7-42.smtp-out.eu-west-1.amazonses.com ([54.240.7.42])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKoy-0000000G1Zc-2tpJ;
	Wed, 28 Aug 2024 15:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724859772;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=yDCZg1ffTuRALSjRU0LbBdSAyalvvGprIpLg3SOyseI=;
	b=TDDUGeIlCdH6xGw4J3wukYYzXKqXmMzkN4qw+427rE9V2RhvVE4DZTV/msYXuPuT
	UzdbkzjEsiXLCimpQrEX3gHGa+KmR2M/0HGbx0hVLUqqve/H+iTRE9uuC4Zz8kfg/u7
	Sy6z+dtpCTzx71gcsoSe4OdIP9h10urYNveUeqDJFFPIrLVjJ8c3kC5CbUZ07R+4PzT
	JTmD5LoYzWVoiCUlTmEXS2FwH453e1NczSbdTDuEALAeEWmbTAu9tNNtsLNysAL6Ip/
	+3Kfk5AC/0uDDAF33szOfvt8EoA1tf/17eOFMzEjJsKN7qe/JKwG9v5lsVLhnfSRhQg
	OHQSGtlClw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724859772;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=yDCZg1ffTuRALSjRU0LbBdSAyalvvGprIpLg3SOyseI=;
	b=jOAA5plZfHHqXEtHa4s3CJjv/kVm0in2FzByEDhYeYvf0sVrJ0Nje/oNHWwT2mry
	QsiH5okpeWfvMtaEdhPVYyC4z3HXF5L+5EkoYEe9ZlrWtUxFDm4srRv1iGr8bbO+5Td
	kyyaYmBukXBwqMqv2V5h2i4JCJfbI6T703jncmUo=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v7 2/3] clk: rockchip: Add new pll type pll_rk3588_ddr
Date: Wed, 28 Aug 2024 15:42:52 +0000
Message-ID: <0102019199a76ec4-9d5846d4-d76a-4e69-a241-c88c2983d607-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828154243.57286-1-detlev.casanova@collabora.com>
References: <20240828154243.57286-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.42
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_084257_364686_85EC27F7 
X-CRM114-Status: GOOD (  11.85  )
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
Acked-by: Dragan Simic <dsimic@manjaro.org>
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
