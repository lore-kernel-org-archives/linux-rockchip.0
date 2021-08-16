Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28C06C4320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB20E617E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AB20E617E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQKKYbyX7WU9BTD1OiSFkNTN697IqoqjRzQJfq1K7j0=; b=eaDF1gwzroT/4Q
	NLphy6QfCCMJ1DXqlVKPFge9L+3xsnDvRA4qsPjeD2JIx56ZG4yP5Uz4NUxQYrfWIru1Am9CSGTV2
	DnyG27odQyJ7ryZf/O/73T0AtuqRLBeNsMw8CNfvJH5lJnVjXDLLqrZyzmJ6NzxqfTTWFWq+2mOZa
	cUiiqHseEVCZLBKfDvfF951TvSHdXcWyy6JU2TH+CHV+nl7TczhHDZfKpzIQs5vgT5Nw7NEg6VHry
	S3g0PnFHKNEotNtUSEJ5EpLSW/xgqivojVmv0/old5pu/det3C7y6iYpktojzqXE6qcE46rTEYL8c
	cB/DG01A5lj6Qpo1ONPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFTAf-00G3WI-PI; Mon, 16 Aug 2021 03:20:17 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFTAd-00G3UQ-K4
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 03:20:17 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 99E9CD62E5;
 Mon, 16 Aug 2021 11:20:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4989T139770959193856S1629084004780123_; 
 Mon, 16 Aug 2021 11:20:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4d0f75539e9bc9660cee06c1899b5596>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: lgirdwood@gmail.com
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: lgirdwood@gmail.com, broonie@kernel.org, ulf.hansson@linaro.org,
 lee.jones@linaro.org, zhangchangzhong@huawei.com, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 1/4] regulator: add PRE_ENABLE event define
Date: Mon, 16 Aug 2021 11:20:00 +0800
Message-Id: <20210816032003.1162779-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210816032003.1162779-1-jay.xu@rock-chips.com>
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_202015_964108_0ACA1A28 
X-CRM114-Status: GOOD (  11.31  )
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

Add REGULATOR_EVENT_PRE_ENABLE to allow to notify driver that the
regulator is about to enabled.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 include/linux/regulator/consumer.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index 20e84a84fb77..edd31f0dad17 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -102,6 +102,7 @@ struct regulator_dev;
  *                      Data passed is old voltage cast to (void *).
  * PRE_DISABLE    Regulator is about to be disabled
  * ABORT_DISABLE  Regulator disable failed for some reason
+ * PRE_ENABLE     Regulator is about to be enabled
  *
  * NOTE: These events can be OR'ed together when passed into handler.
  */
@@ -119,6 +120,7 @@ struct regulator_dev;
 #define REGULATOR_EVENT_PRE_DISABLE		0x400
 #define REGULATOR_EVENT_ABORT_DISABLE		0x800
 #define REGULATOR_EVENT_ENABLE			0x1000
+#define REGULATOR_EVENT_PRE_ENABLE		0x2000
 
 /*
  * Regulator errors that can be queried using regulator_get_error_flags
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
