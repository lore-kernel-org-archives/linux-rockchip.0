Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19781C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:16:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC39560FDB
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:16:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC39560FDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/7X7ysDCEjE+bZJ99xZrBQ960VTyZ1S7GXn0+YGc5MM=; b=XkOgN3bKN5KlY8YRd46vu58uCQ
	q6BkIgDSyDZQEPlLfBhmw5mj9yH1rptDqS+lzyYLqZanP0NnXp/oUS+PMCdui32HigX5W8RugFlpP
	SVWDRMB4kT4E55DAPXS/a0MGilfavLhgevGLRReIM8yZFlxtdsvJIdNlPS+TodHAxz2f+2TGPhBg2
	aWSfRvgBaYL/QHstwAJRj4FZ5UV67o0RSnzGlXYKxKsk30jm+8RIFJnI03AGMpCHUOOuQ3Iw8pAUD
	mz1txfk+zbtvujbXOBh1RUIbuaflUQjY2+4kEZ2YenZxbXypWPVmG2aRtBZlHtoZkx4ZCdQuzLI1C
	noq5DHPg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZa8I-00Grod-Qo; Thu, 22 Apr 2021 14:16:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7w-00Grlb-8n; Thu, 22 Apr 2021 14:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=cUEHFKHflu88eihYCSh+JprVhD5VS3iHJeqKdd4Dj2A=; b=hYdWuuG6MzPpZPssr1ePz3BuED
 oszhl49gMmk1JRrTI7rDptd/ZSZoX9IhgfnrBFYXCyMg/TUKFq4ATbkiZNR6PJzCK4jCOTKndJm+l
 kkWc7g8lm7dWax/Gub35mEP1H6sBxmO3GHNKCJIIgFEDWgE2H1OOuGCqDy1qNdiODTUpkelC2fk5F
 tczeoBP3WIr8O1Mm6ECNixYuj6mEdTbpFyWKfG6NhVlGPQEgvgvAoMi6jDYNxiRQEy1LsFaZUc0Kq
 oUspgI3BG29Jz9ORybP+bediuEGcwCf6pgRRsWDuaFHz8jJbpao8QXUxYv8TtVu/yQGaxJBltWAr8
 kL8Xde9A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7q-00DkYH-38; Thu, 22 Apr 2021 14:16:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 4BC1C1F4323A
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 0/4] Add driver for rk356x
Date: Thu, 22 Apr 2021 16:15:58 +0200
Message-Id: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_071614_284651_398EDBCE 
X-CRM114-Status: GOOD (  10.09  )
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

version 2:
 - Fix iommu-cells typo in rk322x.dtsi
 - Change maintainer
 - Change reg maxItems
 - Add power-domains property

Benjamin Gaignard (3):
  dt-bindings: iommu: rockchip: Convert IOMMU to DT schema
  dt-bindings: iommu: rockchip: Add compatible for v2
  ARM: dts: rockchip: rk322x: Fix iommu-cells properties name

Simon Xue (1):
  iommu: rockchip: Add support iommu v2

 .../bindings/iommu/rockchip,iommu.txt         |  38 --
 .../bindings/iommu/rockchip,iommu.yaml        |  84 ++++
 arch/arm/boot/dts/rk322x.dtsi                 |   6 +-
 drivers/iommu/rockchip-iommu.c                | 422 +++++++++++++++++-
 4 files changed, 493 insertions(+), 57 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
 create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
