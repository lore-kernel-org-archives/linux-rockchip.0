Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6001FC48BDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 11:47:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F122613C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 11:47:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F122613C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qw2DJW5MiLVtx8QDZW7E+kC8dEcBETp0OvzsM1XiXzk=; b=NF8yKKRTT7EzkZ
	FyMwQ3pRx+OEKFOy20FwNjGCXU5Yutdo0i9M4pOkCttfaPzPGaoPhL4CirPvUxaQLZKwCSuixymWb
	Ukh+C9yXcXBrBlKsZsho/y17DG7r2VDPVrN3FkfdvRL422Qpw4lOnQpMvbeZArDq65DiSclnWqzFF
	hcHGv6JZ80GJ5HYW88amoma3N0CS3Pts1rXYihDGa2BB0fXwGBNuCevGQ/2yiXjjW9wXooRaNVidk
	gU6nE/QqJG9D1IeB/dOi+6yRmdG6rJAH9Nbjn5z/mQMbOlOSe7Ig4+9Q+/9OcPqiFQK0IQA1ucA40
	ipKv5A8zavay0g7kovDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwNpo-00ERQ6-O9; Thu, 24 Jun 2021 11:47:52 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwNpQ-00ERHq-Fk; Thu, 24 Jun 2021 11:47:30 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id ACA82D56BF;
 Thu, 24 Jun 2021 19:47:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1335T140034770458368S1624535240956933_; 
 Thu, 24 Jun 2021 19:47:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fb16b192f82d02a1bda5123360655013>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, zhangqing@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 lee.jones@linaro.org, Liang Chen <cl@rock-chips.com>
Subject: [PATCH v1 1/3] dt-bindings: arm: rockchip: add rk3568 compatible
 string to pmu.yaml
Date: Thu, 24 Jun 2021 19:47:17 +0800
Message-Id: <20210624114719.1685-2-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210624114719.1685-1-cl@rock-chips.com>
References: <20210624114719.1685-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_044728_723607_EEC256B8 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Liang Chen <cl@rock-chips.com>

add "rockchip,rk3568-pmu", "syscon", "simple-mfd" for pmu nodes on a
rk3568 platform to pmu.ymal.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 53115b92d17f..ceb15cea77e2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -23,6 +23,7 @@ select:
           - rockchip,rk3066-pmu
           - rockchip,rk3288-pmu
           - rockchip,rk3399-pmu
+          - rockchip,rk3568-pmu
 
   required:
     - compatible
@@ -35,6 +36,7 @@ properties:
           - rockchip,rk3066-pmu
           - rockchip,rk3288-pmu
           - rockchip,rk3399-pmu
+          - rockchip,rk3568-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
