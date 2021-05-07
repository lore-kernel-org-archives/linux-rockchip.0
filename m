Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C469C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:03:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ADFF461443
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:03:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ADFF461443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Prq8YGwoiatqNAFG52Nyjz3GKwPSq0xS96fkVY6Irb0=; b=aW89e79PUTIBwc63ELDTRrS+f9
	rYMZXIt5i6QQqBPPfOzThTf+8XvRXqatJo/OQzWX2NaGWrT2fPI07DMB+Dm5r6by4Fn7ay/VqnyGi
	IWzRpJIDxCGBLwcgkM5JUp+Z4s/A+wvlLsBObuywRHW/ZF0W69yq6W+OFb0QPWTO6LJuf7w2RMwGv
	3NZ/rY3GaGm6vtJu1K1lyBENN4wwyoU6mlG6EuYsfmP8gNHsLcTaCKNqjX/K0Y4qEGbTbbM7tGEhY
	2QLZZUVM+E2buGSoKJ7yayN13u4+drjBDlyIYUDo/bGo9K7hbkpoFobqRt4SbXTsMRbmg5PSdVZPk
	nR/P3J+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lewO9-006YiL-0p; Fri, 07 May 2021 09:03:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNk-006Yez-OB; Fri, 07 May 2021 09:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=H0PZ+8HuZsJen6TpSbSqjOpUN5YYiV9SJmlPSioZ86I=; b=htDr9Ve/XNQNDMkYbE0ZhL9nuw
 2bwmgLWDqDH5Phm5HUoYVmXIoxtO1/Alwo+emnvOStyhJVXtWMopw6CB9PQxncPtP8tUCGeNsyWpu
 EueROYRBPfhe7M6LMYJmNdDrkt7H17+lIeJxtz7DzYqo74njg67XT44Kd6px4hr9rNANppEZM34+l
 AyIw8aftkTGbRkcHth7bybYjCn5gbj/oM/XoqbKGGHrkPaUqundtc5sA3O/J+N3j85xC6lMC3hUJm
 bn5SOOtjhMA8sqmyknGUR2jlnEstiVCWgM2m5wx3p0Tq2YtlLze7cdHlGSY5/LS0A/XCGezrBsri+
 DAE/AvxA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNh-006iSW-UA; Fri, 07 May 2021 09:02:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 5E1021F43295
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 0/6] Add IOMMU driver for rk356x
Date: Fri,  7 May 2021 11:02:26 +0200
Message-Id: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_020246_125929_5228CB60 
X-CRM114-Status: GOOD (  10.70  )
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

This series adds the IOMMU driver for rk356x SoC.
Since a new compatible is needed to distinguish this second version of 
IOMMU hardware block from the first one, it is an opportunity to convert
the binding to DT schema.

version 4:
 - Add description for reg items
 - Remove useless interrupt-names properties
 - Add description for interrupts items
 - Remove interrupt-names properties from DST files

version 3:
 - Rename compatible with soc prefix
 - Rebase on v5.12 tag

version 2:
 - Fix iommu-cells typo in rk322x.dtsi
 - Change maintainer
 - Change reg maxItems
 - Add power-domains property
 
Benjamin Gaignard (5):
  dt-bindings: iommu: rockchip: Convert IOMMU to DT schema
  dt-bindings: iommu: rockchip: Add compatible for v2
  ARM: dts: rockchip: rk322x: Fix IOMMU nodes properties
  ARM: dts: rockchip: rk3036: Remove useless interrupt-names on IOMMU
    node
  ARM64: dts: rockchip: rk3036: Remove useless interrupt-names
    properties

Simon Xue (1):
  iommu: rockchip: Add support iommu v2

 .../bindings/iommu/rockchip,iommu.txt         |  38 --
 .../bindings/iommu/rockchip,iommu.yaml        |  85 ++++
 arch/arm/boot/dts/rk3036.dtsi                 |   1 -
 arch/arm/boot/dts/rk322x.dtsi                 |  10 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   2 -
 drivers/iommu/rockchip-iommu.c                | 422 +++++++++++++++++-
 6 files changed, 494 insertions(+), 64 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
 create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
