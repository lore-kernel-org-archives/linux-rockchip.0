Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F3CC433E2
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 07:44:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E4682074D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 07:44:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TKXXm2wX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9E4682074D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H7XGQH+l+FKPQIAjJPUcbrN5OI/XoXweXDqSiiphscE=; b=TKXXm2wXR644Syt6OABkBnKIr9
	LCGHW2bDLH1JhgClDKulkGSZBnJHIGXpwfgwzZF7B1vtpWmAQ45e6ak9r90rOSkUDDg6PHs5BaVvl
	lhBq0rDPEZUunb7MT2T3qoHL1Df082fS7qxBnIagyNuhkc+mVn3Q+KAGtMuyqvSwWm8WVCWAel0QO
	0tSfH9O56EgtT/fD4br4hbETsqzDEtjPGmQZHd4sl8uGczqFUIEWsU44uhGM/VParz5A3U7H87GG6
	CzVePOscYleCsXGkzsE+69RxPSJ5LFrrRmWOKOaJ0aGzl0o7qAAxihTX4+JSWo9/obGe4pFF+G+fC
	itFLljew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kE6OZ-00032y-QR; Fri, 04 Sep 2020 07:44:27 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kE6OW-00030h-BO
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 07:44:26 +0000
Received: from localhost (unknown [192.168.167.223])
 by lucky1.263xmail.com (Postfix) with ESMTP id EE542B2236;
 Fri,  4 Sep 2020 15:44:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15471T140656136742656S1599205448140075_; 
 Fri, 04 Sep 2020 15:44:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9a7e37fcb4d78403b256b4ee0b674a65>
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
Subject: [PATCH v3 3/6] clk: rockchip: Export rockchip_register_softrst()
Date: Fri,  4 Sep 2020 15:44:02 +0800
Message-Id: <20200904074405.24439-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904074405.24439-1-zhangqing@rock-chips.com>
References: <20200904074405.24439-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_034425_223145_7F223CD8 
X-CRM114-Status: GOOD (  11.05  )
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

This is used by the Rockchip clk driver, export it to allow that
driver to be compiled as a module..

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/clk/rockchip/softrst.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/softrst.c b/drivers/clk/rockchip/softrst.c
index 5f1ff5e47c4f..caba9055090b 100644
--- a/drivers/clk/rockchip/softrst.c
+++ b/drivers/clk/rockchip/softrst.c
@@ -77,9 +77,9 @@ static const struct reset_control_ops rockchip_softrst_ops = {
 	.deassert	= rockchip_softrst_deassert,
 };
 
-void __init rockchip_register_softrst(struct device_node *np,
-				      unsigned int num_regs,
-				      void __iomem *base, u8 flags)
+void rockchip_register_softrst(struct device_node *np,
+			       unsigned int num_regs,
+			       void __iomem *base, u8 flags)
 {
 	struct rockchip_softrst *softrst;
 	int ret;
@@ -107,3 +107,4 @@ void __init rockchip_register_softrst(struct device_node *np,
 		kfree(softrst);
 	}
 };
+EXPORT_SYMBOL(rockchip_register_softrst);
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
