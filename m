Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53504C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:41:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 18E2460EE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:41:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 18E2460EE0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWoFxsY/j3W2KoPFpMMIbq4QxpVNkimh0o3dskXhB6Q=; b=eXWDIB5S5NAIcH
	js2bS8H3ScGPIArFea/RrOYtJylEmT2ens3wDV2ffBFO2wPt1sVRKK3LcUA3SlOTk5TggUOea90AN
	OoS1/sahG1yfToWn0MhToo+sXEyNAX0CuQ6JOATS4haiUQX/EnG6WtlNcnW/ybMDrmBDSZrF3dPrr
	0H6M659xHAE7El42XkF8BD6vqBuR25EtpFD6VB4ipJ1wt5vP4z0rDltt/DsgfEnIlx5dskYepUBJF
	51iYIzDZF/P17B4f1ZWOXRi6ytrhfUtLA//rrqkrV94nD954pWg6L4PZpvr4VToL8OwDw6SUHmyvY
	D/uyeF40lAD+sUKJkS4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFpyx-000zNA-2B; Tue, 17 Aug 2021 03:41:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFpwG-000yR2-DV
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 03:38:58 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id DEFDEFB912;
 Tue, 17 Aug 2021 11:38:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26933T140041124820736S1629171530026669_; 
 Tue, 17 Aug 2021 11:38:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7bdc27060b36dfdb4e9799efaee7136d>
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
Subject: [PATCH v2 0/3] regulator pre-enable
Date: Tue, 17 Aug 2021 11:38:45 +0800
Message-Id: <20210817033848.1396749-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_203856_762305_CED1F88D 
X-CRM114-Status: UNSURE (   8.48  )
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

Jianqun Xu (3):
  regulator: add PRE_ENABLE event define
  regulator: core: add pre-enable event notify to regulator
  soc: rockchip: io-domain: do more thing about regulator notify

 drivers/regulator/core.c           | 3 +++
 drivers/soc/rockchip/io-domain.c   | 6 ++++++
 include/linux/regulator/consumer.h | 2 ++
 3 files changed, 11 insertions(+)

-- 
v2:
 - remove patch "regulator: core: notify regulator enable with the voltage value"
 - use "uV = regulator_get_voltage(supply->reg);" but from notify data
v1:
 - first

2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
