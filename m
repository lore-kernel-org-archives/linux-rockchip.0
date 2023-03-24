Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76D9C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 03:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4RWCU5DzHor5NnfmmxAojBDPm7TP/F5tY6ML+roRvyE=; b=DdS
	4dNlSrlR8x4QDEHnxT9zSWc9CelvEVXwwhhOggYxaWr70ByxFVuvXK0hRy1tAz3Pa8BSZ1iIh7myw
	R9iU+fI/QwpPGkcRdRyxZVofn4S8ilucGCOUs8rbB7CxCgHbVkTEN9LXQMTxt6bPha/R+HQlx2zMJ
	UA53YkPO4MSQavQcpotfMQz9kD4EjjHZolmKpwTnqUtA8rW2uvQDNNLPoedY3VDv0F48MQEosnMbb
	7r8t5FedVmJDyjfQgXvtya69X53KBhV7U2T2jyQC5qqvp1lOjgO1bNu9x3AHM6bl5wQ8j3IUMGF/z
	2AJ3nr/cJjgjbTG7W9Z2QNUFCSq6fMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfXmW-003REf-1Q;
	Fri, 24 Mar 2023 03:07:56 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfXmT-003REK-2K
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 03:07:55 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4PjRwR3XZCz8R039;
	Fri, 24 Mar 2023 11:07:51 +0800 (CST)
Received: from xaxapp03.zte.com.cn ([10.88.97.17])
	by mse-fl2.zte.com.cn with SMTP id 32O37UC7057835;
	Fri, 24 Mar 2023 11:07:30 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Fri, 24 Mar 2023 11:07:31 +0800 (CST)
Date: Fri, 24 Mar 2023 11:07:31 +0800 (CST)
X-Zmail-TransId: 2afa641d13f3ffffffffff9-41a36
X-Mailer: Zmail v1.0
Message-ID: <202303241107315726171@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <p.zabel@pengutronix.de>
Cc: <ezequiel@vanguardiasur.com.ar>, <mchehab@kernel.org>,
        <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBtZWRpYTogaGFudHJvOiB1c2XCoGRldm1fcmVzZXRfY29udHJvbF9hcnJheV9nZXRfb3B0aW9uYWxfZXhjbHVzaXZlKCk=?=
X-MAIL: mse-fl2.zte.com.cn 32O37UC7057835
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.137.novalocal with ID 641D1407.000 by FangMail milter!
X-FangMail-Envelope: 1679627271/4PjRwR3XZCz8R039/641D1407.000/10.5.228.133/[10.5.228.133]/mse-fl2.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641D1407.000/4PjRwR3XZCz8R039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_200753_950446_1E95775A 
X-CRM114-Status: UNSURE (   9.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Switch to devm_reset_control_array_get_optional_exclusive() API.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index b0aeedae7b65..143a9a2edc4a 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -945,7 +945,7 @@ static int hantro_probe(struct platform_device *pdev)
 			return PTR_ERR(vpu->clocks[0].clk);
 	}

-	vpu->resets = devm_reset_control_array_get(&pdev->dev, false, true);
+	vpu->resets = devm_reset_control_array_get_optional_exclusive(&pdev->dev);
 	if (IS_ERR(vpu->resets))
 		return PTR_ERR(vpu->resets);

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
