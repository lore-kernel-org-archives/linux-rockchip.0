Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BDEDC76196
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 07:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JxLK6NZ91bcHgyHptxbHa7P0wDVSovQNwxMCgx6zfyw=; b=zoa
	Wwj/fNTK+94cGCxIkY9J+FN3vMhgPALjve/yfHuwINLZjmK8uwLRGXud2dPvV9Lu5fi0q/IHekUof
	p+lS5eediC2pGrqnzky+eB550cuqGrJmhrr1CcWh7Gpfsg7L78lTVCQiQa6Ae/iqdkXbMUPgF6gXV
	R9oDYMsZUIOUEnYO1BGoKfOQVqlB8HWxFgvQrXqwqYZws0opGIj4Q8WbRhyuJXclvqx+HZqU9Uq0T
	D4ke9ssUxoYT0Tq6IAN8jRUOPSZPW0sagnnlOgBuQ69pwp7/MoY6WjsRUuK90vD3pJAvX99Fc+4zq
	tX94W0Sw4OIDGR4mHeyjkKHsmG/9xPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFjA-0019hV-2U;
	Thu, 23 Mar 2023 07:51:16 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFj6-0019fn-2r;
	Thu, 23 Mar 2023 07:51:14 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4PhyFq2JT2z6FK2g;
	Thu, 23 Mar 2023 15:51:11 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 32N7orob099158;
	Thu, 23 Mar 2023 15:50:54 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 15:50:56 +0800 (CST)
Date: Thu, 23 Mar 2023 15:50:56 +0800 (CST)
X-Zmail-TransId: 2afa641c04e0ffffffffe29-9500b
X-Mailer: Zmail v1.0
Message-ID: <202303231550560132407@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <heiko@sntech.de>, <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IHJvY2tjaGlwLXR5cGVjOiBVc2UgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl2.zte.com.cn 32N7orob099158
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641C04EF.000/4PhyFq2JT2z6FK2g
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_005113_072558_21084443 
X-CRM114-Status: GOOD (  10.00  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 8b1667be4915..c2e554e0a611 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1153,9 +1153,8 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 		if (PTR_ERR(tcphy->extcon) == -ENODEV) {
 			tcphy->extcon = NULL;
 		} else {
-			if (PTR_ERR(tcphy->extcon) != -EPROBE_DEFER)
-				dev_err(dev, "Invalid or missing extcon\n");
-			return PTR_ERR(tcphy->extcon);
+			return dev_err_probe(dev, PTR_ERR(tcphy->extcon),
+					     "Invalid or missing extcon\n");
 		}
 	}

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
