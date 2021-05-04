Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD7C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:43:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B5A560BBB
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:43:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B5A560BBB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=esNGlBHNRBFgos7tTmcFXgYkXKn2KSqj00MCETKzmZA=; b=RBKu0TR/8pWCBl33vyfN9F8+qf
	fYZxKsspSpUvjFyahCa1hX8+B4fidDs3OmoAG9B2UEUxWn5rIBTYR9BI9V6X4bD/aWyjFZOyTyHts
	D5Foodfe+3I06cTq6QmFeuVE4nsP2Akt4aXUkg6kcdQlpLcCFOG0Ru2WhiDd/E4O4XlLWBP5DlOwP
	T520sX6+igRxF+cUY+1HJTdaVAY+YUHIDYGs74SJAa2/l510dHwZ98WD2KlNB+rG++s4g4G2xQw3n
	EVCioR9xAfwIlWYP5dB98ZyAcGc8/FdHcH1YlXe2QlipTSrrmin0s3yOGKuCMX3Qm2gdtHZVosKCT
	cuWjCTRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqeJ-00FmX1-CP; Tue, 04 May 2021 08:43:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqcx-00FmHh-DE; Tue, 04 May 2021 08:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Q+kgfcV5aXvY9bxqEkLcAFIaEGWjsjAO6y6BQ2Ga8Lo=; b=Zlefl8xYGNOZOBMjazOoqIqnOI
 KswObeO8peR/l04U6sjKY2E1pD0Esv2VU/xkzRHWpxs4s/Xqwm6kxiK+4R0CsdrxCySRrYbxeDs/T
 fku/j39VYWYUNvGisjDZaXwu3H+jsZv3Hv/rruaB8k4h9XgMIYgEnIQhPiQsYhogpaWxHlsjzlC8s
 5rZ5OpYfASPnS3xDx5yjjHAOSYtFuLNeSzjRFVJqrNOw/ImOlJ/fniD7uYskx/Vn6Rs38zgOU9KVE
 bYOnIRtPgScldhNpCykaLPGX1D//JFRykwjwxgaDDDrj5ES/1PQ471b28MZsVSIUv/LAsN6ZSNwNp
 DgYfjuDA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqct-003pAp-Nf; Tue, 04 May 2021 08:41:57 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:3951:839d:24c0:e20d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AA0321F423EF;
 Tue,  4 May 2021 09:41:53 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 0/4] Add driver for rk356x
Date: Tue,  4 May 2021 10:41:20 +0200
Message-Id: <20210504084124.131884-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_014155_919334_5A909206 
X-CRM114-Status: GOOD (  12.31  )
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

version 3:
 - Rename compatible with soc prefix
 - Rebase on v5.12 tag

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
