Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A7D6C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 03:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N4UCkZFSlWauWiC6gNoi/sf+FI3zpC+1D4cS+WddG+w=; b=C66
	Nd9vd8sSCB+HKlGYYBXCcAXlCi0tPZ4HtcvvE1spyFQY1bDCVxpX5g14C7clegFlsSInpUONRkQUK
	ZJRe2Y+tocUNmSjbZwn+QTN/jkSF6hYP4jUHQFmRorAtgP5zlStR7EQiV2uvwzedKdDNwzdf5YIcx
	5zScTMZzjQcASuMy/Kbhe5hofp56bUNwbfvdnOQB3wjzWRHmKKW52L1NX1cJoYV5yBOOZbqUrBf8d
	9MbOrkSK6wTbFEDHi7NUSaoCHLHmUf6vnGNvIrSTuoxNgWOVAPwSrqzJUukGKGdImrYpKPswV0mRH
	JbeeQyS3vc9RCN+UGOpcT4CwjaTSGHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfXng-003RJc-1i;
	Fri, 24 Mar 2023 03:09:08 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfXnc-003RJ2-27;
	Fri, 24 Mar 2023 03:09:05 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4PjRxq1NDYz8R03x;
	Fri, 24 Mar 2023 11:09:03 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 32O38smi059329;
	Fri, 24 Mar 2023 11:08:54 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Fri, 24 Mar 2023 11:08:55 +0800 (CST)
Date: Fri, 24 Mar 2023 11:08:55 +0800 (CST)
X-Zmail-TransId: 2afa641d14477cf-46207
X-Mailer: Zmail v1.0
Message-ID: <202303241108553006227@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <rafael@kernel.org>
Cc: <daniel.lezcano@linaro.org>, <amitk@kernel.org>, <rui.zhang@intel.com>,
        <heiko@sntech.de>, <p.zabel@pengutronix.de>,
        <linux-pm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSB0aGVybWFsL2RyaXZlcnMvcm9ja2NoaXA6IHVzZcKgZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9leGNsdXNpdmUoKQ==?=
X-MAIL: mse-fl2.zte.com.cn 32O38smi059329
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.137.novalocal with ID 641D144F.000 by FangMail milter!
X-FangMail-Envelope: 1679627343/4PjRxq1NDYz8R03x/641D144F.000/10.5.228.133/[10.5.228.133]/mse-fl2.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641D144F.000/4PjRxq1NDYz8R03x
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_200904_854189_0253824A 
X-CRM114-Status: GOOD (  10.11  )
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

Switch devm_reset_control_array_get() to
devm_reset_control_array_get_exclusive().

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/thermal/rockchip_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index bb254bdff043..85df34417159 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1378,7 +1378,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (IS_ERR(thermal->regs))
 		return PTR_ERR(thermal->regs);

-	thermal->reset = devm_reset_control_array_get(&pdev->dev, false, false);
+	thermal->reset = devm_reset_control_array_get_exclusive(&pdev->dev);
 	if (IS_ERR(thermal->reset)) {
 		error = PTR_ERR(thermal->reset);
 		dev_err(&pdev->dev, "failed to get tsadc reset: %d\n", error);
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
