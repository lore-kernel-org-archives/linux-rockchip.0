Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF6EEB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 18:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TwYHVxrczI2aNWB7TY8RSoC/JWg8E41NxJkythh89s4=; b=AnyV9tmmQzPzO6
	rhfYlVQLzXGQJSRRnHsG6XbX8Fr0UFFw+p3o3X2LoZYD9NVCf36y3aATcQfHQNyIsYPNYXH0YR/iH
	BY2rGio6+lm/pnmHF28KtLsU+/e8E6LALoM1ey4eDxchH+MY2RX3t0/281oPI1p4xr2Cw8S+Dfik2
	F7DoOYIBD9Deq0xFo6uPA0TRKBakYKQbeo6Hx6gYY/i86LvOKmuhh/IZlmtD9RDYq1tC4fzI31eJh
	EjQ3woY39vCB9XyU0loR2CsDYL/0gMFvtY5SLS/59kMa56Q4qyePS51KeAyEqTaCNWE66IUlqWDsn
	E7LxhNJCigBQ4pZVrg2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacS-00461z-0D;
	Sat, 17 Jun 2023 18:25:52 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAacO-0045zr-2G
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 18:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=EZjVZREN01PWnkecDc4m5lCo/JtuKVVXTJsEdeEOdg8=;
	b=hQDnLUHbQZH9KfpZwBRovWXzOu/XVbbjTrf3x1f6Dy5nxloVFie4p2zywi6melbP46GZ
	/fa3V+mdDUVCSeSkF9Fn4PWKGzoonbL/iBsAf0lHvKzJWxGOJbS5LTEn/lya3lNIIhKG38
	KuabaFAJ1KJVyJ9SisKR0BltkU8mpg6G+KGEHEQywZ17ywqFERJPnXQF3Qy3Ja1KmQUpDF
	HGZ/Vq1vJlGASgSp1ASaXO5ILstboC1IyDMnW4GJvA1aFun+8RpL+b5tKdLXFfVRMvxD91
	wbcKS/bYbacqyP/YTrnachADeSsbRQ3P/DP+B6MJup0mmcO+BnJ6FmR4zeilxJqw==
Received: by filterdrecv-d7bbbc8bf-zf9x9 with SMTP id filterdrecv-d7bbbc8bf-zf9x9-1-648DFAA7-10
        2023-06-17 18:25:43.829440288 +0000 UTC m=+3264351.627270026
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-9 (SG)
	with ESMTP
	id Nw1GHX5WQdWvCqSwbmqvyw
	Sat, 17 Jun 2023 18:25:43.459 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/2] iommu: rockchip: Fix directory table address encoding
Date: Sat, 17 Jun 2023 18:25:44 +0000 (UTC)
Message-Id: <20230617182540.3091374-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h4BqyTv2htkF2lNGw?=
 =?us-ascii?Q?0iSDwD2SgTmfxp5qa7u3fdNgmCQtZ+zr8KKPzgj?=
 =?us-ascii?Q?baUueHLCyyWpIyByEJgWIV0EZo4DoeGr4=2F5xlys?=
 =?us-ascii?Q?0uq329plWcimN4FWaQqx9Wf=2Fg5Px+ohcjUTNimP?=
 =?us-ascii?Q?4Xh6QDejdPPXJZqNxTBPlGaCq2OTReS=2FOpQsJUv?=
 =?us-ascii?Q?CPMcqzhvgs+9une0UjJ3g=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_112549_096584_C094A336 
X-CRM114-Status: GOOD (  11.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The address to the directory table is currently encoded using an
incorrect bit layout when configured into the DTE_ADDR reg on IOMMU v2.

This currently do not cause any issue because the directory and page
tables is allocated in memory below 4GB thanks to the use of the
GFP_DMA32 flag.

Testing has shown that the directory table address should be encoded
using the same bit layout as the page table and memory page addresses.

Only removing the GFP_DMA32 on a RK3568 device with 8GB of memory will
result in a page fault similar to:

[    0.907236] rk_iommu fe043e00.iommu: Page fault at 0x00000000ff801000 of type read
[    0.907264] rk_iommu fe043e00.iommu: iova = 0x00000000ff801000: dte_index: 0x3fe pte_index: 0x1 page_offset: 0x0
[    0.907281] rk_iommu fe043e00.iommu: mmu_dte_addr: 0x000000010189a000 dte@0x000000010189aff8: 0x1722101 valid: 1 pte@0x0000000101722004: 0x2c01107 valid: 1 page@0x0000000102c01000 flags: 0x106

This series fixes this by using the existing mk_dtentries instead of the
dma_addr_dte ops to encode the directory table address, removes unused
ops and finally removes the GFP_DMA32 flag to allow for directory and
page tables to be allocated in memory above 4GB on IOMMU v2.

Changes in v3:
- merge patch 1 and 2
- only remove GFP_DMA32 flag for IOMMU v2

Changes in v2:
- no changes, rebased on next-20230615

This series can also be found at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230616-iommu

Jonas Karlman (2):
  iommu: rockchip: Fix directory table address encoding
  iommu: rockchip: Allocate tables from all available memory for IOMMU
    v2

 drivers/iommu/rockchip-iommu.c | 50 +++++++---------------------------
 1 file changed, 10 insertions(+), 40 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
