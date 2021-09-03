Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42E6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:23:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FDF760FDC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:23:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0FDF760FDC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdDtxnpu7IjJSMZZb1hcjww3uu4d1PigaganwLMgxJM=; b=PkGgOjEN4p1fUI
	m41b3PhPxfdrYfihF84hyieZu5DG2pypJ5an1+o9MOqS6eimAWfP9rYhqYxpzrglHsSm0Y46AhMgo
	GJoAlDg3isJ8446XnyZuZfsOIxwPA2NixDTRWdZJlHtOiyVazSFMABjDPeABE9dhzqDunSnxPUyce
	RgwgP7JU4pRaLH38jFnyK0iPNL7kp7xoi7pDZSdV1bRp74X0XoWb1iJk8Gmo7wt1ImvH4TS3zVs0M
	OG/p27E8EmzLTiwJFmevLpJP8cai+EUoFUEJQUz4hKC9nLm9rt513SciKKkq8IIU7K+ecE1ifIeVP
	feiMcCL5m/2ANDz4xt3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mM99z-00C2fX-8O; Fri, 03 Sep 2021 13:23:11 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mM99w-00C2f4-HQ
 for linux-rockchip@lists.infradead.org; Fri, 03 Sep 2021 13:23:10 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 426A7CFB46;
 Fri,  3 Sep 2021 21:23:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10690T140033392494336S1630675380363840_; 
 Fri, 03 Sep 2021 21:23:01 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6b58d55599e902373e8be39cca1af432>
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
Subject: [PATCH v4 0/7] Patches to update for rockchip pdm
Date: Fri,  3 Sep 2021 21:22:37 +0800
Message-Id: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_062308_884939_13824BFE 
X-CRM114-Status: UNSURE (   8.92  )
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

These patches fixup or update for rockchip pdm.

Changes in v4:
- Acked by Rob Herring

Changes in v3:
- Fix property 'path-map' suggested by Rob Herring.

Changes in v2:
- Fix yamllint errors.

Sugar Zhang (7):
  ASoC: rockchip: Add support for rv1126 pdm
  ASoC: dt-bindings: rockchip: Add binding for rv1126 pdm
  ASoC: rockchip: pdm: Add support for rk3568 pdm
  ASoC: dt-bindings: rockchip: Add binding for rk3568 pdm
  ASoC: rockchip: pdm: Add support for path map
  ASoC: dt-bindings: rockchip: pdm: Document property
    'rockchip,path-map'
  ASoC: dt-bindings: rockchip: Convert pdm bindings to yaml

 .../devicetree/bindings/sound/rockchip,pdm.txt     |  46 --------
 .../devicetree/bindings/sound/rockchip,pdm.yaml    | 120 +++++++++++++++++++++
 sound/soc/rockchip/rockchip_pdm.c                  | 112 +++++++++++++++++--
 sound/soc/rockchip/rockchip_pdm.h                  |   6 ++
 4 files changed, 232 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml

-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
