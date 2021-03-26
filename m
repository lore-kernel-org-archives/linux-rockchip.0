Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0A90C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 635C861A48
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 635C861A48
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZADceP9drSMKHxGhnvyKmRtHLcNmMvRzfkftxuJCsgE=; b=klvvA4kQg+YW90jKS9TLplwi0k
	drmaKBTNwX4lK2mlGc3vzlwKa91EeVcDrhVwe8T0xGnCHiHNDuivrFCdZMNGXvH8vcyeJQmtqxICB
	3ID9YAcKJfnu5wSX/8ZV37AbzrLMdVBxsPSEyPlFZb/nv+amgCX73p/LrVm7iV4cMOurRYKGV4eeW
	3eOqHjofNxbu/wmlPdX1MOYNfzDb8tdjv4mLxIDE628kuJg24pIky8exZP3H1whNa14eFZnwWIRxn
	fBlSynAo99DDch8PTTekOHuQ4QBTDFvul84aVt28xRpt+wWt5dvPyvhg0s4B/qf40Dgkd1YSy9bWF
	LrrqQwMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPjhm-003IMY-39; Fri, 26 Mar 2021 10:28:38 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjgx-003I9Q-BN; Fri, 26 Mar 2021 10:27:51 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 949D5A8A3F;
 Fri, 26 Mar 2021 18:27:40 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22964T140517867665152S1616754460486434_; 
 Fri, 26 Mar 2021 18:27:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f157e6d359adce75cf1c39877979e8e8>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 00/11] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Fri, 26 Mar 2021 18:27:27 +0800
Message-Id: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_102747_887092_A7563C19 
X-CRM114-Status: GOOD (  10.84  )
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

Fix power-controller node names for dtbs_check.
Convert power domain documentation to json-schema.
Add a meaningful power domain name.
Support power domain function for RK3568 Soc.

Change in V6:
[PATCH v6 1/11]: No change.
[PATCH v6 2/11]: No change.
[PATCH v6 3/11]: No change.
[PATCH v6 4/11]: No change.
[PATCH v6 5/11]: No change.
[PATCH v6 6/11]: No change.
[PATCH v6 7/11]: Use kbasename(node->full_name).
[PATCH v6 8/11]: No change.
[PATCH v6 9/11]: Update the commit message.
[PATCH v6 10/11]: No change.
[PATCH v6 11/11]: No change.

Change in V5:
[PATCH v5 1/11]: New.
[PATCH v5 2/11]: New.
[PATCH v5 3/11]: New.
[PATCH v5 4/11]: New.
[PATCH v5 5/11]: New.
[PATCH v5 6/11]: New.
[PATCH v5 7/11]: New.
[PATCH v5 8/11]: No change. Same as [PATCH v4 1/4].
[PATCH v5 9/11]: [PATCH v4 2/4] Fix up yaml code styles.
[PATCH v5 10/11]: No change. Same as [PATCH v4 3/4].
[PATCH v5 11/11]: [PATCH v4 4/4] add a meaningful power domain name for
RK3568 Soc.

Change in V4:
[PATCH v4 1/4]: No change.
[PATCH v4 2/4]: Fix up yaml code styles. Remove the new compatible to
[PATCH v4 3/4]
[PATCH v4 3/4]: Adding new compatible for RK3568 Soc.
[PATCH v4 4/4]: No change. Same as [PATCH v3 3/3].

Change in V3:
[PATCH v3 1/3]: No change.
[PATCH v3 2/3]: Fix up the code styles and add rk3568 base on:
https://patchwork.kernel.org/project/linux-rockchip/patch/20210225102643.653095-1-enric.balletbo@collabora.com/
[PATCH v3 3/3]: No change.

Change in V2:
[PATCH v2 1/3]: No change.
[PATCH v2 2/3]: Fix up yaml code styles.
[PATCH v2 3/3]: No change.

Elaine Zhang (11):
  arm: dts: rockchip: Fix power-controller node names for rk3066a
  arm: dts: rockchip: Fix power-controller node names for rk3188
  arm: dts: rockchip: Fix power-controller node names for rk3288
  arm64: dts: rockchip: Fix power-controller node names for px30
  arm64: dts: rockchip: Fix power-controller node names for rk3328
  arm64: dts: rockchip: Fix power-controller node names for rk3399
  soc: rockchip: pm-domains: Add a meaningful power domain name
  dt-bindings: add power-domain header for RK3568 SoCs
  dt-bindings: power: rockchip: Convert to json-schema
  dt-bindings: power: rockchip: Add bindings for RK3568 Soc
  soc: rockchip: power-domain: add rk3568 powerdomains

 .../power/rockchip,power-controller.yaml      | 293 ++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt    | 136 --------
 arch/arm/boot/dts/rk3066a.dtsi                |   6 +-
 arch/arm/boot/dts/rk3188.dtsi                 |   6 +-
 arch/arm/boot/dts/rk3288.dtsi                 |   8 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi        |  16 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  40 +--
 drivers/soc/rockchip/pm_domains.c             | 252 ++++++++-------
 include/dt-bindings/power/rk3568-power.h      |  32 ++
 10 files changed, 511 insertions(+), 284 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
 create mode 100644 include/dt-bindings/power/rk3568-power.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
