Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A13EC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:48:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B18A206F0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:48:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VBwQNnDk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B18A206F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M1HrY/DbmVr79fLhRelIL+lAQpebARqnOQWEtPJ7jSI=; b=VBwQNnDkFDnZQNllggH88LmhHY
	8ExMirrNXORUqZgXA45GKl9vgSnEPrSIrnqOMADV68O4IpCb0qV7ji9F+GRSGe6+PmQ3Re9bKlUmY
	+DGzDtYXUsGBgQVL6GOxDqZoMas4AQOsPA0BzjmqrUyJ0PkJTTbbAS7SpmBXp1I7RSXjRc3B/h2/y
	7jicDRcfBKFe1EZWLDKfdEz/mTs96RbHLM/xH3N1DUZ/Q34I9f1ewwJIeYboNJ510qiYeVx0q9V0Q
	BeP0z2hXK9eshlm6hma2MQo+wQwJ9bl70clv7GZmntByCJ/vmKeIGun/QZLxstITvwsh0VLDBx419
	SyJvyJNw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfU2-0008TE-0q; Mon, 31 Aug 2020 08:48:10 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfTz-0008RA-1k
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:48:08 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6F5E4A263E;
 Mon, 31 Aug 2020 16:47:58 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11834T140500763920128S1598863675343235_; 
 Mon, 31 Aug 2020 16:47:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3892b05da8124e78724d07755bc66f37>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 4/6] pinctrl: rockchip: do not set gpio if bank invalid
Date: Mon, 31 Aug 2020 16:47:51 +0800
Message-Id: <20200831084753.7115-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831084753.7115-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_044807_334407_71FB071B 
X-CRM114-Status: GOOD (  10.22  )
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add valid check for gpio bank.

Change-Id: Ib03e2910a7316bd61df18236151e371c4d04077a
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 265d64b8c4f5..6080573155f6 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2687,6 +2687,9 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 				return rc;
 			break;
 		case PIN_CONFIG_OUTPUT:
+			if (!bank->valid)
+				return -ENOTSUPP;
+
 			rockchip_gpio_set(&bank->gpio_chip,
 					  pin - bank->pin_base, arg);
 			rc = _rockchip_pmx_gpio_set_direction(&bank->gpio_chip,
@@ -2752,6 +2755,9 @@ static int rockchip_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
 		arg = 1;
 		break;
 	case PIN_CONFIG_OUTPUT:
+		if (!bank->valid)
+			return -ENOTSUPP;
+
 		rc = rockchip_get_mux(bank, pin - bank->pin_base);
 		if (rc != RK_FUNC_GPIO)
 			return -EINVAL;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
