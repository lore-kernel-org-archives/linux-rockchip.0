Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B1DC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 06:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdeACeba13jyCYYB07RYwrlKV3z7ZBrUfWGu6k6q2A4=; b=ywNykdqXE+vK+k
	DkWJ02gM9fMuvYzrRGD5i45GvxhztD6FzAMK1GalkeGGJAkgKu0IWP/Ua4ed3pQIxye4aAvmpqVcA
	nJqcJ5Bg+0Bc3/erYoU3+kQyK33Lib5arqreBkYV+AxGpUu6VqXtgeYCLQUIr6TkgpLXBPKwywb2K
	dUF5DqSBNGKPr/cVgVuEFrj6rj/Qb5QaF0dXV/7aWignnzzj/ppzEQNqTOxPK35htY3ZDwMVLs6OH
	PTB4koPjRzYyXpSGMSso9N4PBc7U0PbwmwsYP1CZBNWJI7MJo8wghL5gP8WSaG+pSg8WMZvx9iHg2
	WZV1cfVldQgr19EGPkRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0c2j-0034xw-1W;
	Wed, 08 Nov 2023 06:28:01 +0000
Received: from mail-m6010.netease.com ([210.79.60.10])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0c2g-0034x5-0C;
	Wed, 08 Nov 2023 06:27:59 +0000
DKIM-Signature: a=rsa-sha256;
	b=JQ9YS+K2TeSv6VPrUp5ha/ZcZV5v0ebwyKo9b/+UYL584zoPILrwFLnFfZNDdFK9bHQ7nSIK5Xmgf4YXFnhNznROO1RyfX7KnIjBIn3BJdPhVVDb/tjQcjOSGiBJxt/gIT1Yb2nWS85ndD/Y1gbefde8k00Z8TJpyGovby0PGFg=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ZNeB2wozA8E90INwwcWUSVp2xe4Q7ySaQgoaY7gbCkY=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 5B78B40030F;
	Wed,  8 Nov 2023 14:18:28 +0800 (CST)
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
	andy.yan@rock-chips.com
Subject: [PATCH v5 1/4] clk: gate: export clk_gate_endisable
Date: Wed,  8 Nov 2023 14:18:19 +0800
Message-Id: <20231108061822.4871-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231108061822.4871-1-zhangqing@rock-chips.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlLT1ZNSkIdSUpOSB1PTRlVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8bad950dcc2eb3kusn5b78b40030f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mz46IRw4DTw3MQoqPChCSE03
	DTEKCT1VSlVKTUJCT0lPSEtCSElIVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLSUw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_222758_279751_644E40CB 
X-CRM114-Status: GOOD (  11.20  )
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

make clk_gate_endisable not static, export API for other use.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/clk-gate.c       | 3 ++-
 include/linux/clk-provider.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 68e585a02fd9..531bb84a5b3e 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -53,7 +53,7 @@ static inline void clk_gate_writel(struct clk_gate *gate, u32 val)
  *
  * So, result is always: enable xor set2dis.
  */
-static void clk_gate_endisable(struct clk_hw *hw, int enable)
+void clk_gate_endisable(struct clk_hw *hw, int enable)
 {
 	struct clk_gate *gate = to_clk_gate(hw);
 	int set = gate->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;
@@ -87,6 +87,7 @@ static void clk_gate_endisable(struct clk_hw *hw, int enable)
 	else
 		__release(gate->lock);
 }
+EXPORT_SYMBOL_GPL(clk_gate_endisable);
 
 static int clk_gate_enable(struct clk_hw *hw)
 {
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index ace3a4ce2fc9..76b050d73feb 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -630,6 +630,7 @@ struct clk *clk_register_gate(struct device *dev, const char *name,
 void clk_unregister_gate(struct clk *clk);
 void clk_hw_unregister_gate(struct clk_hw *hw);
 int clk_gate_is_enabled(struct clk_hw *hw);
+void clk_gate_endisable(struct clk_hw *hw, int enable);
 
 struct clk_div_table {
 	unsigned int	val;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
