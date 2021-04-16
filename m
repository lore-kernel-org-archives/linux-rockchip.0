Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15468C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:31:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D6F56115B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:31:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D6F56115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t6tHWQ/OLa209Olu+VW92aYHw9C1KaLo5VMpzCtB+yc=; b=ZR7yKeKiKmCib+w/mtsaJLwM9G
	MZaa6pHi5PgPPpC/kfUn10epz2fNPAOXFbhg9GNHKumWDuILuToqjmuJBTjpwvQuIfuUymXRqzMYv
	oDKOx0FXuNXpOFltjrCq/epJAmKe8/i4pQZTzofRmjsu6jrj+vOAt7TGWnphwSQNsN9KLlCBUAoUH
	2t4R5GMAl3PYqbHLYPivBFKg/GR66a4brR3anYrkkbP9TGpGKTmt6gRVmSnPIql3BTToSYOermUSb
	iTrQkyqx8xmSBWy8jBCRZ9HeLUaJ1877T8Pjrmef5cQwjOB45O2oCJ3nHBnJd//OJGoPAhf4+BvCU
	HzXN4jAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJsk-001MGk-Cf; Fri, 16 Apr 2021 08:31:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJT9-001HGD-0x; Fri, 16 Apr 2021 08:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=OWRXiPGRi09QbcBFvA9VOlXlTCFeZlC+E/sc4KUB+7A=; b=mwbSnp52snONFazUpuHh3CQm/P
 b/ZDNZVRqSjp1nufT9xEq7lwNhEACSTw/QV6L5TuFRLEAnC/sl71mNpZg1E4sNmruAQaOsGL1jigU
 UVlDmJsx9jEE28Ujqiea5KlQ6ah9g5sud6P/Tvj6P/4xyYyaDxkGaGlSfulrSZPD8GFa2Wyj4No1k
 PzWapOcmZMnb0GeZoOXnIrHWysNr8KygEN3kH60GD8LF53Es94YeHPJc0LKWAX7mkBla1dg3LByFU
 ripVbE3qlK9hzEI2kCxPM5D0E7Q28Zi0lIo/kvM+jxtHN2mqfM8ehSNuprQK4QHhHkj/LA7W1xP7W
 vbg1rlyA==;
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJT5-009Anh-Iu; Fri, 16 Apr 2021 08:04:49 +0000
Received: by mail-ej1-x62f.google.com with SMTP id w23so25008086ejb.9;
 Fri, 16 Apr 2021 01:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OWRXiPGRi09QbcBFvA9VOlXlTCFeZlC+E/sc4KUB+7A=;
 b=YAfK0ActrpH0ig12JPJ+SU8a+VVAabRSDFiW+zaSwaLg0Ee6gIJZn8tP3RecwrR+rm
 g9L8LxCirOy1w6dhRcBh3/qU5dkA/OtyLYGDq62985DRxXQF+TK5KM38e5nkfxNuObdc
 qsH+BjsSndNVdByxQHGyiIS1ZC6XuZuxbfjRLmC0F75xRk7GMnfygH1qDvS1FvFhMC1k
 M25J8o0IRNA3InSOtUJqD2ANSElOIXkvhzUgZm+KCudblw0YK/Z1UVx7M+qutDP9d0T0
 jIh6ikRCPI++HL+ZybODn3A/jgsAzu/TKQ7KsowWG7/i+Olh9gAWOU6GF7Oy8yVgpiM/
 78CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OWRXiPGRi09QbcBFvA9VOlXlTCFeZlC+E/sc4KUB+7A=;
 b=NVyqWrc0/5Tg8EkaciZ/wJguqXug7OnVfkoQjHurNLaO3T7eJ+2pSUTKRwhAMIjvna
 6lmd4tWikM3LNdU4unM4Wk24+tKHR5d7iovceHUe1gRGhohZ+hzwkkfR9MpChv4lD248
 e8tO2LDtpbvKeutAkhLqWbygqTUUNXJE/IXd58BRhl98rNGQbW9soXkozdFAi5o5Ir99
 zM6A0tt8WB7UdOHg5sfCk0IqBIukAjOjqgepbkbhvmqyAbNmCG7fXcp1H0LrrnIRo896
 hS6QchxDfj6ONxfX9KsB/p03o7vPbu+H0MMbUBSljdascfiOL6ekmQjXSoZPLElVPc+B
 3qbA==
X-Gm-Message-State: AOAM530TP6ilp0DxncLRi4oWaii6WZOH3eZ28YtpK+BTg8k2qPDRiQJD
 2yULb6vSuxS+sGaXtZWciHs=
X-Google-Smtp-Source: ABdhPJwtExuvPla2KbvdeXR3UALergaPe7QsuMA4vfP9OXbIKm+ngpy0r+5X0gsJnpl0ENGH/GqBfw==
X-Received: by 2002:a17:906:cb1:: with SMTP id
 k17mr7136631ejh.307.1618560285007; 
 Fri, 16 Apr 2021 01:04:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.04.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:04:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 00/15] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Fri, 16 Apr 2021 10:03:27 +0200
Message-Id: <20210416080342.18614-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010447_667439_1E460A23 
X-CRM114-Status: GOOD (  13.31  )
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

Changed in V8:
  Add #power-domain-cells to power domain nodes.
  Convert pmu.txt to YAML.
  Add more compatible strings to pmu.yaml
  Add pd-node ref schema.

Changed in V7:
[PATCH v7 07/11]:
  Fix TAB warning
  Fix alignment
[PATCH v7 09/11]:
  Fix commit message and author format
  Changed SPDX-License-Identifier back to GPL-2.0
  Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
  Fix indent example
[PATCH v7 11/11]:
  Fix alignment

Changed in V6:
[PATCH v6 7/11]: Use kbasename(node->full_name).
[PATCH v6 9/11]: Update the commit message.

Changed in V5:
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

Changed in V4:
[PATCH v4 2/4]: Fix up yaml code styles. Remove the new compatible to [PATCH v4 3/4]
[PATCH v4 3/4]: Adding new compatible for RK3568 Soc.
[PATCH v4 4/4]: No change. Same as [PATCH v3 3/3].

Changed in V3:
[PATCH v3 2/3]: Fix up the code styles and add rk3568 base on:
https://patchwork.kernel.org/project/linux-rockchip/patch/20210225102643.653095-1-enric.balletbo@collabora.com/

Changed in V2:
[PATCH v2 2/3]: Fix up yaml code styles.

Elaine Zhang (10):
  ARM: dts: rockchip: Fix power-controller node names for rk3066a
  ARM: dts: rockchip: Fix power-controller node names for rk3188
  ARM: dts: rockchip: Fix power-controller node names for rk3288
  arm64: dts: rockchip: Fix power-controller node names for px30
  arm64: dts: rockchip: Fix power-controller node names for rk3328
  arm64: dts: rockchip: Fix power-controller node names for rk3399
  soc: rockchip: pm-domains: Add a meaningful power domain name
  dt-bindings: add power-domain header for RK3568 SoCs
  dt-bindings: power: rockchip: Add bindings for RK3568 Soc
  soc: rockchip: power-domain: add rk3568 powerdomains

Enric Balletbo i Serra (1):
  dt-bindings: power: rockchip: Convert to json-schema

Johan Jonker (4):
  ARM: dts: rockchip: add #power-domain-cells to power domain nodes
  arm64: dts: rockchip: add #power-domain-cells to power domain nodes
  dt-bindings: arm: rockchip: convert pmu.txt to YAML
  dt-bindings: arm: rockchip: add more compatible strings to pmu.yaml

 .../devicetree/bindings/arm/rockchip/pmu.txt       |  16 --
 .../devicetree/bindings/arm/rockchip/pmu.yaml      |  57 +++++
 .../bindings/power/rockchip,power-controller.yaml  | 259 +++++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt         | 136 -----------
 arch/arm/boot/dts/rk3066a.dtsi                     |   9 +-
 arch/arm/boot/dts/rk3188.dtsi                      |   9 +-
 arch/arm/boot/dts/rk3288.dtsi                      |  12 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  24 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   9 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  60 +++--
 drivers/soc/rockchip/pm_domains.c                  | 252 +++++++++++---------
 include/dt-bindings/power/rk3568-power.h           |  32 +++
 12 files changed, 575 insertions(+), 300 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
 create mode 100644 include/dt-bindings/power/rk3568-power.h

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
