Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3B56C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:40:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AEE02610CB
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:40:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AEE02610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q2NqEQZQbMDjhaUEZ+lpz+Hct1TSfzxA/f4WDvRN3Dk=; b=V2lRmZX2vkRUcehs4fx8XeF16U
	KittXmtCKDLseMhYAFNAEOkrUeN+alCimY4Km8VOOTEINY9H62pjLoSsm4qZOlPBgwNTezS9PzoDg
	yVkVeiRAgffLcD6bxoTki2kHWp38913Eeoi3PYePqZz+yN/solJPCbqRo1LRra/6+E03DMB7BFCUP
	PVSmFZTyNX3rrbK4EmRSEcDAljqdUIkp2PTzl3gG+Asolomo3RZHahSVFA8VEirPcNM31ef2NT/5C
	9kQ7nzQxVXvdPB9uolznp7Jb93T2wj6+rXZa5uzRiTCH2N0Kp9txDyubjYkyIGy05YSzHj15xbh/z
	RA3eI1yw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5Oa-005ZsV-6f; Fri, 21 May 2021 13:40:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5OL-005Zou-3q; Fri, 21 May 2021 13:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Jeyvtt+KAZmANxP56VYaGWKt2Ih5o3STTbw/mOmVHcg=; b=F4ZEO9uqG6uPeWyTTjPkHAters
 iuJjI1hXC+YmUtcpaAfWfpmy1sGDWQBlIcGPXH6fFsd+kqGY5cVw191GJUy8goj1gu16CN+ImR34+
 3x5oiUL3LdQYmyvjoZX5wuKN534JDEOlT3DyTlqnmO1FLZIrq30tTsrXkO/Ct4cY2zNkTwsVg0tI1
 VJo2phrG1iFYdYgCNr/giuG3QWEoc22NVvUolu8FIvRXfI1Eynkj8sMbvAEAUX1JBFnmxwdADI0KG
 o37w4e5RIN67silC6mUEvPm/T49LlqjgwhxdQuqEQBf0g3Jci4Kp0VDRkVT825Txfb8txc9Q6Zwh3
 oZHj2KKw==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5OI-00H9jO-HS; Fri, 21 May 2021 13:40:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 792A31F44083
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 0/4] Add IOMMU driver for rk356x
Date: Fri, 21 May 2021 15:40:24 +0200
Message-Id: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064038_725797_F8B2B7CA 
X-CRM114-Status: GOOD (  11.72  )
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

version 6:
 - Remove #include <module.h>
 - Remove pt_address_mask field
 - Only use once of_device_get_match_data
 - Return an error if ops don't match

version 5:
 - Add internal ops inside the driver to be able to add variants.
 - Add support of v2 variant.
 - Stop using 'version' field
 - Use GENMASK macro

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
Add IOMMU driver for rk356x

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

Benjamin Gaignard (4):
  dt-bindings: iommu: rockchip: Convert IOMMU to DT schema
  dt-bindings: iommu: rockchip: Add compatible for v2
  iommu: rockchip: Add internal ops to handle variants
  iommu: rockchip: Add support for iommu v2

 .../bindings/iommu/rockchip,iommu.txt         |  38 -----
 .../bindings/iommu/rockchip,iommu.yaml        |  85 ++++++++++
 drivers/iommu/rockchip-iommu.c                | 150 +++++++++++++++---
 3 files changed, 214 insertions(+), 59 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
 create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
