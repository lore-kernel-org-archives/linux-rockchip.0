Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5439FC433E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 09:54:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A008764E4B
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 09:54:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A008764E4B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r+HaQRE5cWmnDNomdy/8Q3Zz2AZDfuqDvR76zEh6YgU=; b=YRSSlHTllahuuYXb7aB++5Skpp
	8+eaCKyRNqW8IG7ejNxu4adWGatotx9cvNaArHKtJ0ipKNYX5ReuwMoOwW8xoyrRylDeRBFe0VXgV
	4Kmn71DgqFH7dT8mb5qDUmo/S+pstwAQD38tlv0PvFc9faZXyg8HKV19vyP/PgiKZJ4ek22b/X4D7
	UHOsn7gtBZiaGeZeYbTpKr6hS2E1DjFOtDJjz9ZhOOs62qiDEY1VBgfD8sD6/wqBzMaEGELQTclxo
	Neye4Ocy60cwedUhTFw0sDD+Jl1xEXn+YQEDigxns1b8xVnta4bnOIS1Q1WTSAookvWld+Nuqw5uZ
	ZJqtlz5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUOX-0005Zp-4q; Tue, 23 Feb 2021 09:54:17 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUOP-0005Wg-Ec; Tue, 23 Feb 2021 09:54:10 +0000
Received: from localhost (unknown [192.168.167.130])
 by lucky1.263xmail.com (Postfix) with ESMTP id DA6D7A7521;
 Tue, 23 Feb 2021 17:53:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21323T140439055234816S1614074035264055_; 
 Tue, 23 Feb 2021 17:53:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4718419ea0cf12351627ef3878a0b8c1>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: sboyd@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH v1 0/4] clk: rockchip: add clock controller for rk3568
Date: Tue, 23 Feb 2021 17:53:48 +0800
Message-Id: <20210223095352.11544-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_045409_779931_0B390013 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the clock tree definition for the new rk3568 SoC

Elaine Zhang (4):
  dt-bindings: add bindings for rk3568 clock controller
  clk: rockchip: add dt-binding header for rk3568
  clk: rockchip: support more core div setting
  clk: rockchip: add clock controller for rk3568

 .../bindings/clock/rockchip,rk3568-cru.txt    |   66 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   25 +
 drivers/clk/rockchip/clk-rk3568.c             | 1724 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   45 +-
 include/dt-bindings/clock/rk3568-cru.h        |  926 +++++++++
 7 files changed, 2793 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/dt-bindings/clock/rk3568-cru.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
