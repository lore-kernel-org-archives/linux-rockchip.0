Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1972C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:41:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA14A60EB5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:41:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BA14A60EB5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAbcsfMe7OB5RN+UitXSnWNMRfQHhBmE/24C260XaNI=; b=zalPAI2QsN5Ds6
	1BGpmerRhRet3Z1LXIRh7A50YCzxk0bwfGbRt2mlgq8tvee0dSbAWxl4lRtdRb7QVEnUc88rIoJAD
	qFDCTRbFHYwypxGEQIKbKeag0t4KZTKBmqiuv78VugrBvI+gnZUxZ3I2pD9Ri/jbxzBIqwNyUgKyM
	4WZBVjy7UucLeXBFhS05/CvWAN5ipxCPqnF9IQ4IU4YElPNBJJTey2d9JAJDmqakcuGPbxvzRdTaI
	GP7jlxgC2dSHaQ3lbZ20WoY3pl8/M22/SuD4rzOuMKOA7L62v8ztuOpTNgXyGjGVfYYfcknY3Byfw
	Fdc5l2kuInlxPiuYTX2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFpyk-000zIQ-4o; Tue, 17 Aug 2021 03:41:30 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFpwF-000yQv-MC
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 03:38:57 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 36BE8D6578;
 Tue, 17 Aug 2021 11:38:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26933T140041124820736S1629171530026669_; 
 Tue, 17 Aug 2021 11:38:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f3f9d8ee7b06ccff04482f6e72f2692e>
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
Subject: [PATCH v2 1/3] regulator: add PRE_ENABLE event define
Date: Tue, 17 Aug 2021 11:38:46 +0800
Message-Id: <20210817033848.1396749-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210817033848.1396749-1-jay.xu@rock-chips.com>
References: <20210817033848.1396749-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_203856_053559_263ABCA3 
X-CRM114-Status: GOOD (  11.02  )
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
v2: none

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
