Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E7B0CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dxYgFpv5iWFIZRJyyKPf2dxMDeeRyMlvUBVpH4ILB4k=; b=3Bk79sOf8UOK9TGHGoPPAMfRbG
	itxNnCmhenQwc191XgDu0yD+B0tf/9c4P5StfTZ8wMj8Ezv/yN5O3UpY8Ol0+RVPQx5/udmVHCrXO
	WB+TcpfplPYwMeMyHi+3a1U2A61qO3uWuni9TJc8yYDi2QvD3zkGV/kaJR3FfWSoJCHj32l8yQwTw
	oRsxqlGoXtvE8PWFgchEk2dC8t7/e7dh8yDXbsgHNDCEyCWcI7rM+XvCNvCRZD6IvTWkGF5KrIftJ
	OczVPFsKAbvFnLQc2pEM6jDe6SlqIE4lOxWMQDoOIjzRAad/Zto2QdAZhGYhcF4cfBmZXk7DJRcUw
	DjpRkf8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoou-0000000DMZc-0mpd;
	Mon, 20 Oct 2025 12:17:02 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwXV-00000005xSJ-3FwB;
	Wed, 02 Apr 2025 11:45:51 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZSNNR0FSrz8QrkZ;
	Wed,  2 Apr 2025 19:45:43 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 532Bjd3j070014;
	Wed, 2 Apr 2025 19:45:39 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:45:42 +0800 (CST)
Date: Wed, 2 Apr 2025 19:45:42 +0800 (CST)
X-Zmail-TransId: 2afb67ed2366ffffffffef7-237ea
X-Mailer: Zmail v1.0
Message-ID: <20250402194542026OH8jAzuv0uq-J-D9AVPqJ@zte.com.cn>
In-Reply-To: <20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn>
References: 20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>, <robert.marko@sartura.hr>
Cc: <kishon@kernel.org>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
        <samuel@sholland.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <luka.perkov@sartura.hr>,
        <linux-arm-msm@vger.kernel.org>, <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgNS81XSBwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtdHlwZWM6IFVzZcKgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl1.zte.com.cn 532Bjd3j070014
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED2367.000/4ZSNNR0FSrz8QrkZ
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044549_970881_6589E7BC 
X-CRM114-Status: GOOD (  10.59  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:16:52 -0700
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

From: Zhang Enpei <zhang.enpei@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Zhang Enpei <zhang.enpei@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index d9701b6106d5..94d1e6ead1a7 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1151,11 +1151,9 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(tcphy->extcon)) {
 		if (PTR_ERR(tcphy->extcon) == -ENODEV) {
 			tcphy->extcon = NULL;
-		} else {
-			if (PTR_ERR(tcphy->extcon) != -EPROBE_DEFER)
-				dev_err(dev, "Invalid or missing extcon\n");
-			return PTR_ERR(tcphy->extcon);
-		}
+		} else
+			return dev_err_probe(dev, PTR_ERR(tcphy->extcon),
+					     "Invalid or missing extcon\n");
 	}

 	pm_runtime_enable(dev);
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
