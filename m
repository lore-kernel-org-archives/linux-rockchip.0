Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB0BC4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:29:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8596961181
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:29:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8596961181
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OZIA/ET3+fpsNeFpJf+mnQ8T286Jve/4XBfiTnNN3ok=; b=T7mIkkx1VEhFqo
	T6BXJyVxs6B9ZCZ6Nl9JXe6XnfSUX0vIgjle0GkmUIVBHeSwX8LXZ9xS++6Dlk1hGW2SKGxhpxg1P
	/EObu+k6hK40GuqndyIec7aYcLrqDnvqQMda8XxWiWZ2LqHdg4BFXlwVryUqqBwCkIrH2V05GCGh8
	ex5H9IsI2AeMwAx9+ONxJo0kVvZxY7V2j/Pt9jrxheHjS7QEvV8kTVmBqD8wG7b8abb5EhnFJwBRm
	ZXjpqUv5tdH9Z1Mh3lA9pO2rsAe5b2VmVTSMv5b6ObuuotZxFmY9Kr0y2b6qOklLTD1x0t+uAtxt9
	8zL+7iUMN84lEITekPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBOl-003sr1-Kw; Thu, 27 May 2021 08:29:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBO9-003sZH-Kd
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 08:29:10 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id EEA8CD1B36;
 Thu, 27 May 2021 16:29:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31748T140095126476544S1622104146775929_; 
 Thu, 27 May 2021 16:29:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <772a100b2c004e91e253c91fafc56d3a>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de, lee.jones@linaro.org, ulf.hansson@linaro.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, jbx6244@gmail.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v2 0/3] rockchip io domain
Date: Thu, 27 May 2021 16:29:02 +0800
Message-Id: <20210527082905.1447591-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_012909_857275_41EA1F7F 
X-CRM114-Status: UNSURE (   7.83  )
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

Covert rockchip io domain document to YAML, and add rk3568 support.

Jianqun Xu (3):
  dt-bindings: soc: rockchip: convert io-domain.txt to YAML
  soc: rockchip: io-domain: add rk3568 support
  dt-bindings: soc: rockchip: add rk3568-pmu-io-domain support

 .../bindings/power/rockchip-io-domain.txt     | 135 ------------------
 .../bindings/soc/rockchip/io-domain.yaml      |  46 ++++++
 drivers/soc/rockchip/io-domain.c              |  88 ++++++++++--
 3 files changed, 126 insertions(+), 143 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml

--
v2:
- add yaml
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
