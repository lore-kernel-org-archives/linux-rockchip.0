Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2811DC4320A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAC6461875
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 03:20:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DAC6461875
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eGZeEgp8gwHieGOZgFj8f3KzfMoQSV7cTU8XDfUOCM=; b=W5/OvzUQfu8K6C
	ccWbCUDMhjDHAvoAOviMiHZsNsVNjjrJLL4ulS3bZHvIey163+Mj0wdBEIm04pGGcRlejCrLAwcJ+
	lniLF0uP8NU0YcQdL775ViFrfNaZDddXxqWLYnIabQbrqgELvFT8JS4zzR1hmLhYKGgEk36dNSM+R
	QMj5yvGhFC4J2KEM5Il9OnvpP6mHrUpqDXswAUsWheMu6sH8T1XJCPpv3vmJ0ThEeAwVVw6ViuoV6
	VaPHlH3i7YPY4vWi6cAQzXgi9QFkQGqaqfBAylyvH8bkIXHDg6XA87R2nkamlEcZWQ8yw6dnj3/G4
	CP2IAf9xvoVoK+qwCXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFTAc-00G3Ul-7A; Mon, 16 Aug 2021 03:20:14 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFTAY-00G3Tl-M2
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 03:20:12 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 713E7B2C61;
 Mon, 16 Aug 2021 11:20:06 +0800 (CST)
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
X-UNIQUE-TAG: <2eb7ea09efe101ed92c78d230ebfab94>
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
Subject: [PATCH 0/4] regulator pre-enable
Date: Mon, 16 Aug 2021 11:19:59 +0800
Message-Id: <20210816032003.1162779-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_202011_017905_868CA5EA 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip io-domain care about regulator pre-enable

Jianqun Xu (4):
  regulator: add PRE_ENABLE event define
  regulator: core: notify regulator enable with the voltage value
  regulator: core: add pre-enable event notify to regulator
  soc: rockchip: io-domain: do more thing about regulator notify

 drivers/regulator/core.c           | 9 ++++++++-
 drivers/soc/rockchip/io-domain.c   | 6 ++++++
 include/linux/regulator/consumer.h | 2 ++
 3 files changed, 16 insertions(+), 1 deletion(-)

-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
