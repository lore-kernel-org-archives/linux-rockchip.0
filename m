Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982F0EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 20:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHd5UIHfKlzPVtVzefIfFRWro636Kl39gdbPKM7MFs8=; b=VaVHbIjQ5STgWB
	wMKuz2yNSm1aX8KOOY2SsP+XYuvDzP809P7XF05EgMdUAoS6VV04T/fXdYUAZ/KIvvv51TiVWDmjN
	FDofO5GYo60BaKlpDhPv/h/ZDL4i53OajykkERUCkEyWtWSXsxjuuErRC+1sMbjjhTy8X20jz6X4l
	sDIekcobGtiFDN/OzULSPMQ9oDnvZEHEqC1afIFsd90imj/0a/zvyjoY7PkrR4d5lD/YIY82ivTyc
	Qzs1Tmkdk4HCUBJHjv2fCc6MiU/tcuwTn7mwWtZLrNgw04zBiQLOlQ1ss2BvDalMe90Ilj4LNxZnc
	g9NjsuyoMngxvOBhSgHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tJ0-00FzSZ-0f;
	Thu, 15 Jun 2023 20:10:54 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9tIw-00FzOq-1r
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 20:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=If/pDcNZHjKHg2xr7fPICwEYrvkMiPF0Yu0cd9xm+8c=;
	b=GozorMfIUTKX2p3yMPpaBV0J/anZcRNzQgygrAoAMUjiXVA02nBHk2H3MTrL64UPq0dK
	IW61phWauueZvWEkTK4KTjgePv9b92oV9I8Ez81pzG7hub3pPoWkXydF6hbp1N6f6FvJlm
	D+tKbsk6sW4+Y0evTou3YOc+ycEPTDXxcRJbyuBdPty63gSiFnSFM5NshpkYxuT/Cx5SMD
	o5I1gfiEqF9FS56eCG5eB7eNGPrpbsmfLmbM8yMUmz05oEd/GvvYB9gqKHWuOe9vT3twAJ
	0j4CLyM9I/5f6eC8tddHTrMHudrlc6DvtTTsOzKHgLgwbgkiF/34Pn40nODWvSPQ==
Received: by filterdrecv-77869f68cc-lcgp6 with SMTP id filterdrecv-77869f68cc-lcgp6-1-648B7045-14
        2023-06-15 20:10:45.330247636 +0000 UTC m=+3098087.523654011
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id M8m6e9nORhaWVL_Bj7hb3A
	Thu, 15 Jun 2023 20:10:44.821 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/3] iommu: rockchip: Fix discovery table address encoding
Date: Thu, 15 Jun 2023 20:10:45 +0000 (UTC)
Message-Id: <20230615201042.2291867-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7eTuGAfP89fgI7Mo?=
 =?us-ascii?Q?5nZ7wt3U4bGdn6ikkP5Zd3dO0neB=2F5LK2JyiBDO?=
 =?us-ascii?Q?u29YKFWbCeBwjYkAy19YoMXMyir3tW3s24hUc2A?=
 =?us-ascii?Q?SHv4P3chkcacbzhlfBtnvjrM0jYAnxonykAJsGF?=
 =?us-ascii?Q?Z1V9tMsUsgdhf3aQ3xaVdM5XwFPjPUHyisvUuKj?=
 =?us-ascii?Q?q3g4fJeq5PDavvL0hjRyA=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_131051_336005_144456FC 
X-CRM114-Status: GOOD (  12.16  )
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

This is a re-send of a series sent out in January, see [1].

The address to the discovery table is currently encoded using an
incorrect bit layout when configured into the MMU_DTE_ADDR reg.

This currently do not cause any issue because the discovery and page
tables is allocated in memory below 4GB thanks to the GFP_DMA32 flag.

Testing has shown that the discovery table address should be encoded
using the same bit layout as the page table and memory page addresses.

Removing the GFP_DMA32 on a RK3568 with 8GB of memory will result in:

[    0.907236] rk_iommu fe043e00.iommu: Page fault at 0x00000000ff801000 of type read
[    0.907264] rk_iommu fe043e00.iommu: iova = 0x00000000ff801000: dte_index: 0x3fe pte_index: 0x1 page_offset: 0x0
[    0.907281] rk_iommu fe043e00.iommu: mmu_dte_addr: 0x000000010189a000 dte@0x000000010189aff8: 0x1722101 valid: 1 pte@0x0000000101722004: 0x2c01107 valid: 1 page@0x0000000102c01000 flags: 0x106

This series fixes this by using the existing mk_dtentries instead of the
dma_addr_dte ops to encode the discovery table address, removes unused
ops and finally removes the GFP_DMA32 flag to allow for discovery and
page tables to be allocated in memory above 4GB.

Changes in v2:
- no changes, rebased on next-20230615

This series can also be found at [2].

[1] https://lore.kernel.org/all/20230125221809.3275481-1-jonas@kwiboo.se/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20230615-iommu

Jonas Karlman (3):
  iommu: rockchip: Fix discovery table address encoding
  iommu: rockchip: Remove unused variant ops
  iommu: rockchip: Allocate tables from all available memory

 drivers/iommu/rockchip-iommu.c | 45 +++++-----------------------------
 1 file changed, 6 insertions(+), 39 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
