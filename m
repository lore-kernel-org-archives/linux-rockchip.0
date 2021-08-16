Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26026C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D9C2A617E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D9C2A617E6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXhCI1jmGoPaJpcVUXEaf/vrpp8MJeKUVcIo5FlfDKU=; b=SsgzYh/Vm3Gk8A
	9mDElxk5Nkhw1WlS1N1C2XBaqOnnGON8hsoyLMNrNlZiomxvu8LeQVW0rtV104thvvvdjvveTtQpe
	qkkG0tFT9aq8MXWnjmsHymWqv9N5F5Ih1lAwswbmH6hWvTvgmz75seULDxiz6SC5kRs7MXwz0l8Yq
	2CyOJlB0Q15PCVJtbwU7gxGnS9xHwpDppJf8O0i6RQLx5kiffoLp5JpXt+zDOW0Ub7aT1o51LNJDH
	b+zGmr+nF4wRZMMqtdWSPw8ERD6rQnl2DStruP9v8SkfqTbyWkXheSI11Q45gFGfh63tXPaU/qjbp
	jz9I+3CWZ0x9Lz1mXW4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFTAd-00G3VW-QT; Mon, 16 Aug 2021 03:20:15 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFTAZ-00G3Tm-Qo
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 03:20:13 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 30A04CF700;
 Mon, 16 Aug 2021 11:20:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4989T139770959193856S1629084004780123_; 
 Mon, 16 Aug 2021 11:20:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c4f8c53f758bc9d3c8598cc53bfcec66>
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
Subject: [PATCH 2/4] regulator: core: notify regulator enable with the voltage
 value
Date: Mon, 16 Aug 2021 11:20:01 +0800
Message-Id: <20210816032003.1162779-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210816032003.1162779-1-jay.xu@rock-chips.com>
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_202012_147237_B5882FBE 
X-CRM114-Status: GOOD (  13.03  )
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

Get the voltage of regulator and then pass it as the parameter of
notify, the driver could take it.

The origin parameter for notify is NULL, so this patch do nothing effect
to other driver who not care about the voltage value.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/regulator/core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index f192bf19492e..a53f1644a6f4 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -2658,8 +2658,12 @@ static int _regulator_enable(struct regulator *regulator)
 			if (ret < 0)
 				goto err_consumer_disable;
 
+			ret = _regulator_get_voltage(rdev);
+			if (ret < 0)
+				ret = 0;
+
 			_notifier_call_chain(rdev, REGULATOR_EVENT_ENABLE,
-					     NULL);
+					     &ret);
 		} else if (ret < 0) {
 			rdev_err(rdev, "is_enabled() failed: %pe\n", ERR_PTR(ret));
 			goto err_consumer_disable;
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
