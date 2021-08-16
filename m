Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F14F4C43214
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F377617E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8F377617E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3ME9XFDQWAMkxuyOhL0a6C9kTTecEiUmwd2E6RMsQE=; b=Mq+hJWspuqTVql
	cLNAbHe/hj6CdfccRdVbfSkXIY6l8sdGXjd8nQV/r2RzjfVWNK0Rnf/4e+h1LHd1NNyfIdmGsT8AE
	vTtvAymXLtmBhFWYoewHVwiL7SIJRDcw8gS0eGxXYmLViYZQzKqNT8L/35fTlbjIEqLuUhkKzO05+
	2BTAm+HMZLtj/dG9zuL0mMVcIftYlwVZ17Gb+6JIk8qfjjwXdOixMMo5bX7x9wGioHbtwOLrQWDhB
	6rW4hRJ77f1/vqaPMfBMHb/Xb3TQo9pDyCSAG8Q+5UNQrXu36r/xiIyRsbugcjNzf7TiFXpa8QdkX
	JQX3KAhiirVERh0TMvzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFTAe-00G3Vr-E9; Mon, 16 Aug 2021 03:20:16 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFTAa-00G3Tp-Vq
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 03:20:14 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id B41D9C25EB;
 Mon, 16 Aug 2021 11:20:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4989T139770959193856S1629084004780123_; 
 Mon, 16 Aug 2021 11:20:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b18628a2a5eff082964d7f568fd73698>
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
Subject: [PATCH 4/4] soc: rockchip: io-domain: do more thing about regulator
 notify
Date: Mon, 16 Aug 2021 11:20:03 +0800
Message-Id: <20210816032003.1162779-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210816032003.1162779-1-jay.xu@rock-chips.com>
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_202013_328788_5ED75BD3 
X-CRM114-Status: GOOD (  10.21  )
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

Do a fix to rockchip io-domain, follow this orders:

* system running state
  -> io-domain vsel to 3.3V
    -> regulator_enable
      -> vsel change according to regulator voltage

* system running state
  -> io-domain vsel to 3.3V
    -> regulator_disable

Found on some Rockchip SoCs, the regulator enable or disable without
care about the io-domain maybe caused soc damaged.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/soc/rockchip/io-domain.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index cf8182fc3642..af5fb11ad9a3 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -123,6 +123,12 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
 	} else if (event & (REGULATOR_EVENT_VOLTAGE_CHANGE |
 			    REGULATOR_EVENT_ABORT_VOLTAGE_CHANGE)) {
 		uV = (unsigned long)data;
+	} else if (event & REGULATOR_EVENT_PRE_ENABLE) {
+		uV = MAX_VOLTAGE_3_3;
+	} else if (event & REGULATOR_EVENT_PRE_DISABLE) {
+		uV = MAX_VOLTAGE_3_3;
+	} else if (event & REGULATOR_EVENT_ENABLE) {
+		uV = (unsigned long)data;
 	} else {
 		return NOTIFY_OK;
 	}
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
