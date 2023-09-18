Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1945CD13D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V418kWdmf7io97Ix8pX3kLkfs2wTx0Dn5sTbdZ88eDU=; b=i31U116X0KineM
	CUmX7RfFh108cG5r9vLySf8ylXj4Gj5jyeN6wkNhRCsULwlAfkxOKUIiCquFRp6tBbrGbOgUOSMPH
	hBeX4AEKz7cYtORaGVekxtivaRpBlAmqcuAfVNHMMPau8xZzb0+oooaXPEiVD3JLE1nfosw0Jp4eK
	af/1am6wbsUo4MXbXbuu8HVpTFlC9cQBR0nPZ7E+nGE1Z/hbonbQvtasqV5i59bwbbbUtphBPAzxr
	/XmnmXS+sluq1u5FLRrbYdEKqVAq+VqqefgG7dZ83U5mQukMs+fpEfJefsJFFGU9GLCruEJqSkQ/r
	R20Cue1oAYFjZB7EGS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kU-00Ej0I-0s;
	Mon, 18 Sep 2023 07:32:50 +0000
Received: from mail-m12737.qiye.163.com ([115.236.127.37])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kP-00Eisa-2c;
	Mon, 18 Sep 2023 07:32:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=ZwXs1GBSjZwKqg5hCo8UmM8vhdPvEKScYskKbClAKbM69+rHkSipOVX1bZ5rwf04cZh5WM9QBIUraUuJpENVMO6HMsqvDQ3wYP8umDX2JY0yM5iymBOfd2KA5V0H2xHuRSM6OGCseOMObrN0tv30CZ9v/YchAXQTXa4hbRlND+M=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FVjj8wFV8jwGPF8t4GJPuriYLO1LL7PtUtc22EoDAPI=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 0E5E1680587;
	Mon, 18 Sep 2023 15:31:53 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 1/8] clk: clk-fractional-divider: Export clk_fractional_divider_general_approximation API
Date: Mon, 18 Sep 2023 15:31:44 +0800
Message-Id: <20230918073151.7660-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgZGVYeH0JOTkgaQx0aGklVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa733efbe2eb5kusn0e5e1680587
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6Mjo*Lj1NDUoPIg1CSUgC
	KQ0wFC9VSlVKTUJOS0lJSEpPS0tLVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlPSE83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_003246_322226_3837D4E2 
X-CRM114-Status: UNSURE (   7.77  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is used by the Rockchip clk driver, export it to allow that
driver to be compiled as a module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/clk-fractional-divider.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 479297763e70..44bf21c97034 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -142,6 +142,7 @@ void clk_fractional_divider_general_approximation(struct clk_hw *hw,
 			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
 			m, n);
 }
+EXPORT_SYMBOL_GPL(clk_fractional_divider_general_approximation);
 
 static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long *parent_rate)
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
