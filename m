Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C06FC4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 18:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KA46YPvPKMxUcqKSNCr0GbYH9XfehjFfu/qbdeIk4LA=; b=LzD6nkG3jLXYy7
	VZUBHDYUTc1pBpUo2o7n+2NLlYJHJ02KpnPKQoF3f8Q5FCU/PTS6Bx7ycLhrvZnN+Cl9fUWbrvVYV
	HsyfJ4eHC3K1+hFKQ/V850AFeMystSoVF1IiLvbXjeYA+mqcuifT93CMscM6XOiGuc30RKbJT39DI
	bh08mP1r/Ez1gxUMZmsSKqOBRWXo+Sr5p3AZG+MBUO7YRZxVymPSGuEaQ6C/mmlaXrPJDokn9pwCb
	PvpOi8ZgXY9Rt4FWBI9r+bFrvIcAEjljtNWebKmrLPJwB6z/jqfFkEXNEPtyaCBc6eilP20Sxv/St
	IoEASwkx9HNIVGnSiZTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKN-00FlMY-0c;
	Wed, 13 Dec 2023 18:51:27 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKJ-00FlJs-0A
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 18:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702493477;
	bh=5rhOg385ALxMZC2NP0YG1CGe+OyMaqjG1bdXKQfeSHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ifXDnd4V8vmvYonESSOBvL0+iP/UdhuF2m1wTzv24d5htZ6Gl6JzHCQixWDXLX16z
	 vscNm0IsIPFBql21BU1/KFEWNXd5EgWp+SLSLjsnscQgjh6NM2LqzG4c4Z6GhoSQvZ
	 h6+a9SHKYRdn5HTetpjrywy/Tkl5B9S97HKoVH1/imLq9TS++yj5LtTFaYfEekr9tq
	 0T6GC6/Q5iE0ce4LjzOw62lbg7Qzit7t2k6mOWbkklhTkJR8KxXRjNbgJuaoP/zEVO
	 o/brZDIDPrJnNlbNRFjT+1NnRIKEts7jsrTmCuH6Vh3gcbODwgMpJ7l3YvJpIomAj3
	 uEl9NBjJpkOvw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 318C637814A0;
	Wed, 13 Dec 2023 18:51:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3C265480107; Wed, 13 Dec 2023 19:51:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v7 5/7] clk: rockchip: rk3588: fix indent
Date: Wed, 13 Dec 2023 19:46:50 +0100
Message-ID: <20231213185114.47565-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213185114.47565-1-sebastian.reichel@collabora.com>
References: <20231213185114.47565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_105123_236234_E64BA5C9 
X-CRM114-Status: GOOD (  10.99  )
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

pclk_mailbox2 is the only RK3588 clock indented with one tab instead of
two tabs. Let's fix this.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 26330d655159..2e8bdd93c625 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -1004,7 +1004,7 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	GATE(PCLK_MAILBOX1, "pclk_mailbox1", "pclk_top_root", 0,
 			RK3588_CLKGATE_CON(16), 12, GFLAGS),
 	GATE(PCLK_MAILBOX2, "pclk_mailbox2", "pclk_top_root", 0,
-		RK3588_CLKGATE_CON(16), 13, GFLAGS),
+			RK3588_CLKGATE_CON(16), 13, GFLAGS),
 	GATE(PCLK_PMU2, "pclk_pmu2", "pclk_top_root", CLK_IS_CRITICAL,
 			RK3588_CLKGATE_CON(19), 3, GFLAGS),
 	GATE(PCLK_PMUCM0_INTMUX, "pclk_pmucm0_intmux", "pclk_top_root", CLK_IS_CRITICAL,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
