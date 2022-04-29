Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C5E1C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 00:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYzDvAq/+FnjK/TwSABBgqfTAVJqU835rrrtnWRTeZA=; b=ZGDaO6doG4c616
	O3sFQtklpJAF//mbA4s2trBQ9k7H6htbZrFc7KEjC35fxdmluz7h8CXq6H+IvZInw6w8vP8DoUpv5
	5zGihcQQDuRVx+cV8W1H7aDsQagTvWKpiQoAZmXoV4mANjh7vpaAxwPLIxMM550/jH9BpN7CG/jVv
	0DCxZZ4184BiZqJtgkoNpp1qf6M2b5FqqKZU5BDape8LuI+/L3vP5Evgx2znIwzNV0N97j/iYHL5h
	B+lNrgUDZ36F2KorC3L0eO0Zgf+vbiAfYZSttL7/3z26P4cGkOIMlHPKXEuAY55W/6gO40s9UiSuL
	MVwehdbsmMAZ912RbIGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkEm7-009AC2-SH; Fri, 29 Apr 2022 00:46:23 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkElw-009AAC-PO; Fri, 29 Apr 2022 00:46:14 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 74245800280;
 Fri, 29 Apr 2022 08:46:09 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: kuba@kernel.org, davem@davemloft.net, joabreu@synopsys.com,
 alexandre.torgue@st.com, peppe.cavallaro@st.com
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH V2] ethernet: stmmac: support driver work for DTs without
 child queue node
Date: Fri, 29 Apr 2022 08:46:05 +0800
Message-Id: <20220429004605.1010751-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220428010927.526310-1-jay.xu@rock-chips.com>
References: <20220428010927.526310-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlDH0NWS0tMTU1PHx
 hDQx5NVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRg6GRw5ED02EBEfIxgJN0of
 TjoKCwhVSlVKTU5KSkJISkxLSk5CVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUlCSE83Bg++
X-HM-Tid: 0a8072c84756b03akuuu74245800280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_174612_996448_DFD01F20 
X-CRM114-Status: GOOD (  11.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The driver use the value of property 'snps,rx-queues-to-use' to loop
same numbers child nodes as queues, such as:

    gmac {
        rx-queues-config {
            snps,rx-queues-to-use = <1>;
            queue0 {
                // nothing need here.
	    };
	};
    };

Since a patch for dtc from rockchip will delete all node without any
properties or child node, the queue0 node will be deleted, that caused
the driver fail to probe:

    rk_gmac-dwmac: probe of ffa80000.ethernet failed with error -22

This patch try to support driver work well for DTs without setting for
the child queue nodes and then have none child queue nodes.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
v2:
 - change subject and update commit comment, sugguested by Kicinski

 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 2d8c095f3856..4f01a41c485c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -279,7 +279,7 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 
 		queue++;
 	}
-	if (queue != plat->tx_queues_to_use) {
+	if (queue != plat->tx_queues_to_use && of_get_child_count(tx_node)) {
 		ret = -EINVAL;
 		dev_err(&pdev->dev, "Not all TX queues were configured\n");
 		goto out;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
