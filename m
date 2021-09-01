Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B711DC432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:47:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D26A60FE6
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:47:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D26A60FE6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yu/een6hNDXI0BuTv2oBsY0W4FtXrsKKbvFvF3WAHUs=; b=US0i+rXCwDNm8V
	UCKH96Lalh/w27G1C3GIB1gZWkKW+4lYzOjR/pMszvfEebA10sa6eiS3sEZmx7UGYcg/tS7Ew3Uwz
	qQGHiWGMDIZJB4Doku1xM7zEWcKUte6AQ1OiC3aBr3NWjzJKJmH1QTvWN6s4kp9RNU9vfIul/Bhly
	KepH1gNUMzv5OIWefRWzQjw7ikCIpv40UYVFqavEhdjqTugqmC4N1pp2CDBr19OOsIxOTsm6kc9AU
	T6+Dk1ruKkF67xO/dKeUtjpPwbkeADjLQkNZ6Ry/ocx1xe21WOrRK24MfGY3bGbP2yNQcsBYVJG4W
	Pc3i7Rm1crE7BDAoBquw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLHE4-003hLO-0e; Wed, 01 Sep 2021 03:47:48 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLHE1-003hKL-1C
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 03:47:46 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id ED800CFD10;
 Wed,  1 Sep 2021 11:47:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10690T140033205974784S1630468054398410_; 
 Wed, 01 Sep 2021 11:47:35 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ed0c6444b4db858f624370675799cce8>
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
Subject: [PATCH v3 0/7] Patches to update for rockchip pdm
Date: Wed,  1 Sep 2021 11:47:19 +0800
Message-Id: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_204745_337361_25952650 
X-CRM114-Status: UNSURE (   9.38  )
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
