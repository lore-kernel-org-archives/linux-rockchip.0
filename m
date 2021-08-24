Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CDEC4320A
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:18:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6340F61178
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:18:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6340F61178
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9cD7HZDo8IUdVO0Csex82n3k9B+oBl5o7pa94dZJ+Y=; b=Sxm4+vltJS39/w
	+2xYlg4ETdPENX4pJUjGjRrhUyfvv0MxHLwpi0b3It0MF91dgmWkBv/QO7ax5XZU17eoM2nrZJ9vR
	nJI+1o81pST3yGiWgLGyB2gVw5Y4Z2J8nOb9Poa6SpKkS6OwjYydUcN4liVweIAD99d7m9bEyEyA9
	rfaboBBr/gt5E5jK4R3RvkKul7H/b6/Ign10oxHUUC9DSv+JG3tytD3tH2XffauzfLqro5cyTVdkF
	LmSUUQ1y8ZAwDRT0ZdNgEQ4cwArrMSZpvZ+4+znLuPQhQf4pqN2KcjnckaWKPut1+cnSOX2nypwSo
	N9EjlPGteu0e0O0jY5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mISZc-002HUs-St; Tue, 24 Aug 2021 09:18:24 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mISZW-002HPT-A1
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 09:18:23 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id E4EEEFB573;
 Tue, 24 Aug 2021 17:18:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760842565376S1629796684553502_; 
 Tue, 24 Aug 2021 17:18:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bc2a301772c19ec0be5369bbb8b45f97>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 09/15] ASoC: rockchip: i2s: Add property to specify
 play/cap capability
Date: Tue, 24 Aug 2021 17:17:56 +0800
Message-Id: <1629796682-4170-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_021818_601044_26FEC1D2 
X-CRM114-Status: GOOD (  10.98  )
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

- 'rockchip,playback-only': support playback only.
- 'rockchip,capture-only': support capture only.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 15e2690..90580dc 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -720,6 +720,11 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 			soc_dai->capture.channels_max = val;
 	}
 
+	if (of_property_read_bool(node, "rockchip,playback-only"))
+		soc_dai->capture.channels_min = 0;
+	else if (of_property_read_bool(node, "rockchip,capture-only"))
+		soc_dai->playback.channels_min = 0;
+
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_i2s_component,
 					      soc_dai, 1);
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
