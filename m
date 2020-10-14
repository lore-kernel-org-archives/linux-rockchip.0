Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25AC5C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB51821D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zw8AJdUL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB51821D7F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=erCf2S2X/rBCDecrjMNd9367IE0oghQaaHrvx9Vmj5s=; b=zw8AJdULtGiIyqtsFXA7iQ9I7l
	vb9l2SWvoXwCbwrCkLr5sCALYSzwF89w2cco1i7PxADrpvYJKku8ewQB2d5Tui4+XtVcB3Y51HWP9
	bDzq7lnrDo27iEWsqjdQkpHoMzeupmRnXzBRm+qv8WaoInOWDbtR965oIM5nfBPRSOhFYl9dPiUlq
	ofL2DfM2iM9URUN0hPVwQtRAnGqpSdmNxx4VxioDblKHGMvS4HnYXpod2SzWPE053xWmOijgRXiCA
	L9VOIaGpuwJz+VYJCmWFJ+tMpUMy5WuTM1qirl+2vW4EDxFp1toTxf7VSw4lyjLzwkYXY2ScqoHgZ
	Pylpi9iQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSWWl-0002Wr-BY; Wed, 14 Oct 2020 02:28:31 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSWWg-0002T2-I0
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 02:28:28 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id D032FB5569;
 Wed, 14 Oct 2020 10:28:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18907T140199837284096S1602642493459899_; 
 Wed, 14 Oct 2020 10:28:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fbf45e18dd1cbaac3d69411fdd11a126>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v4 2/5] clk: rockchip: fix up the frac clk get rate error
Date: Wed, 14 Oct 2020 10:28:09 +0800
Message-Id: <20201014022812.6733-3-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201014022812.6733-1-zhangqing@rock-chips.com>
References: <20201014022812.6733-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_222827_045346_7BDFCC60 
X-CRM114-Status: GOOD (  11.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

support fractional divider with one level and two level parent clock
.i.e:

normal fractional divider is:
                |--\
    ---[GPLL]---|   \                                      |--\
    ---[CPLL]---|mux|--[GATE]--[DIV]-----------------------|   \
    ---[NPLL]---|   /                |                     |mux|--[GATE]--[UART0]
                |--/                 |--[GATE]--[FRACDIV]--|   /
                                                           |--/
but rk3399 uart is special:
                |--\
    ---[GPLL]---|   \                                         |--\
    ---[CPLL]---|mux|--|--[GATE]--[DIV]-----------------------|   \
    ---[NPLL]---|   /  |                |                     |mux|--[GATE]--[UART1]
                |--/   |                |--[GATE]--[FRACDIV]--|   /
                       |                                      |--/
                       |
                       |                                      |--\
                       |--[GATE]--[DIV]-----------------------|   \
                       |                |                     |mux|--[GATE]--[UART2]
                       |                |--[GATE]--[FRACDIV]--|   /
                       |                                      |--/
                       |
                       |                                      |--\
                       |--[GATE]--[DIV]-----------------------|   \
                                        |                     |mux|--[GATE]--[UART3]
                                        |--[GATE]--[FRACDIV]--|   /
                                                              |--/

The special fractional divider, there are two levels of clock between FRACDIV and PLL.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index fac5a4a3f5c3..8f77c3f9fab7 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -190,16 +190,21 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
 	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
-		p_parent_rate = clk_hw_get_rate(p_parent);
-		*parent_rate = p_parent_rate;
-		if (fd->max_prate && p_parent_rate > fd->max_prate) {
-			div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
-			*parent_rate = p_parent_rate / div;
+		if (!p_parent) {
+			*parent_rate = p_rate;
+		} else {
+			p_parent_rate = clk_hw_get_rate(p_parent);
+			*parent_rate = p_parent_rate;
+			if (fd->max_prate && p_parent_rate > fd->max_prate) {
+				div = DIV_ROUND_UP(p_parent_rate,
+						   fd->max_prate);
+				*parent_rate = p_parent_rate / div;
+			}
 		}
 
 		if (*parent_rate < rate * 20) {
-			pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
-			       clk_hw_get_name(hw), *parent_rate, rate);
+			pr_warn("%s p_rate(%ld) is low than rate(%ld)*20, use integer or half-div\n",
+				clk_hw_get_name(hw), *parent_rate, rate);
 			*m = 0;
 			*n = 1;
 			return;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
