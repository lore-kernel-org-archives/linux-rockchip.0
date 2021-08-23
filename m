Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B2C0C4320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:50:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EAD06136F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:50:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1EAD06136F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vm1zRdMg6rCyZrGL6DAZcxgHe7nf+1gd0SX3eD5y7HQ=; b=AacNO++Cm8CV3N
	eENxiDSJF+zqKJBxRlfyYuvdEDQSEAFg5xqxllZL/yxA3db6MzUTLfsFGWRKNaOcNpTlvMZO3GIq9
	H4Shpe4WFy9sfBbcV9PWvlO3VJmgRg6oyQvejOtp/kjC0xQtrDCET/95OcjBrK4u5yT4LergKKcLe
	5RFRcZmCS4A0TT6+2Jr0ZLc4vhDxCCIeGmN67kTXk2K+6PY0Mo4nx0rkLVSnloDPtl5QllUJAU2k+
	Z6b4sEz1q1BgMD452LtMrPynHUfLgx4PdNdjUjt8wgVcf1M8AZ8c/elqw+5s0LZFa3X1oPastglfW
	dpGr0mUeOhdiO8DYRuPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI7Wk-00GPhO-WF; Mon, 23 Aug 2021 10:50:03 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI7WG-00GPWl-WC; Mon, 23 Aug 2021 10:49:34 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 7FFB1FB572;
 Mon, 23 Aug 2021 18:49:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760957703936S1629715760494266_; 
 Mon, 23 Aug 2021 18:49:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <11c0895db331193aa5b55d5be999c912>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 13
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>, Jaroslav Kysela <perex@perex.cz>,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 0/15] Patches to update for rockchip i2s
Date: Mon, 23 Aug 2021 18:48:14 +0800
Message-Id: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_034933_289314_2B69DFEE 
X-CRM114-Status: UNSURE (   9.19  )
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

These patches fixup or update for rockchip i2s.


Sugar Zhang (13):
  ASoC: rockchip: i2s: Add support for set bclk ratio
  ASoC: rockchip: i2s: Fixup clk div error
  ASoC: rockchip: i2s: Improve dma data transfer efficiency
  ASoC: rockchip: i2s: Fix regmap_ops hang
  ASoC: rockchip: i2s: Fix concurrency between tx/rx
  ASoC: rockchip: i2s: Reset the controller if soft reset failed
  ASoC: dt-bindings: rockchip: Document reset property for i2s
  ASoC: rockchip: i2s: Add property to specify play/cap capability
  ASoC: dt-bindings: rockchip: i2s: Document property for
    playback/capture
  ASoC: rockchip: i2s: Add compatible for more SoCs
  ASoC: dt-bindings: rockchip: Add compatible strings for more SoCs
  ASoC: rockchip: i2s: Add support for frame inversion
  ASoC: dt-bindings: rockchip: i2s: Document property 'clk-trcm'

Xiaotan Luo (1):
  ASoC: rockchip: i2s: Fixup config for DAIFMT_DSP_A/B

Xing Zheng (1):
  ASoC: rockchip: i2s: Add support for 'rockchip,clk-trcm' property

 .../devicetree/bindings/sound/rockchip-i2s.yaml    |  30 ++++
 sound/soc/rockchip/rockchip_i2s.c                  | 153 ++++++++++++++++-----
 sound/soc/rockchip/rockchip_i2s.h                  |  10 +-
 3 files changed, 157 insertions(+), 36 deletions(-)

-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
