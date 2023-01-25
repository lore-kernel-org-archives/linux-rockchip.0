Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C2AC54EED
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=afdQEw204C4rWK9W45guP6wPRfWRqWtqbGS1N09zsMI=; b=wo2ttw/j+13uDE
	wPAFKw2ZzEZUc42sxwbu+W7B5RMoFXRYUi/J7Uu6FTAmxzjeR3+pgCsmKPDsHfYHohu/Lx6E+6z9x
	i1Ezjf2KNjEBErXK3UZx4fJG5SDfKrHhRIGIRvZPtfHyFC8G8o2sKCOgR0C7LiU9e4A7Mx+nXUXS9
	EcaoBlEkMGKAz4z6lWT/fCyvXSUt8z5NcT0r3x6nTPL2H7+Zp/e0xzAJMO59q3JhOESkBpkOCIpTe
	6Dm7PU4XVc9UYRXedpI3G5uZUULwreudQ6UOjKRhXnIaVE30orcDtcIEdqSbsurVGddH5pzIRcyZg
	KDzpPHp39z8LwMpmeRUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo62-008xtC-0R; Wed, 25 Jan 2023 22:18:22 +0000
Received: from wrqvxttq.outbound-mail.sendgrid.net ([149.72.167.116])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo5z-008xrB-K0
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 22:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=kGke5edPgidw4Kgicc640oZCu6fsWxaSyhE/gDaRI2Q=;
	b=XblzpKJ8soEMLVg+yUpF3JphdhMNLnsBDfRn0P6AXv0bhSpCAxtIRdbkCfjgnYADXq6B
	35OQVMYQ/Qs8AX3wEmVmtFshtvuNhRQsFhIk671Tf8i9/C2vqpCaccOferEhTngQWtfqkJ
	lZto9omIW91SSahOh9m3ezYKDaOHJa+mPTpU7A4M8oOyKCF8P0U3mYi6Gc42wHiSxJ3SJp
	hb+EQ/5M8PrMYQGixiTitEZmmQ6i6Ek9IIPtqkB6b3K/8ydXDG02H3iaRTGByACeccTu40
	Fu/p9rswK/mqfqqhdxQ5z4StF6MP11eWNNx3PHuGXg7L7k0J4GNNoycbiAbtjUEA==
Received: by filterdrecv-6c4ccfbdd8-lnbvl with SMTP id filterdrecv-6c4ccfbdd8-lnbvl-1-63D1AAA4-15
        2023-01-25 22:18:12.410596366 +0000 UTC m=+3739926.770958580
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5-2 (SG)
	with ESMTP
	id hX57VA6qR36DCkAP3QyLzg
	Wed, 25 Jan 2023 22:18:11.960 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/3] iommu: rockchip: Fix discovery table address encoding
Date: Wed, 25 Jan 2023 22:18:12 +0000 (UTC)
Message-Id: <20230125221809.3275481-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+b6OdEgqdo0FKrYj?=
 =?us-ascii?Q?=2FBcwrsVdNRHqB+3oeHwdNZpVrS5W5rxt4OxE4e9?=
 =?us-ascii?Q?6T+9x5PVTw5l1hZ=2FeEI5COV2toxaK+KZ=2FQcPLcz?=
 =?us-ascii?Q?svxA8ByQNcoFhKReBguD1EhWsKElqo4ffOUA61W?=
 =?us-ascii?Q?lDahez4XaA6YR1tVdwIvq48n77wsxAXagX5Y6Cx?=
 =?us-ascii?Q?k62zP5Kd02UXB+eQswB8A=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_141820_215971_5C891D49 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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

Jonas Karlman (3):
  iommu: rockchip: Fix discovery table address encoding
  iommu: rockchip: Remove unused variant ops
  iommu: rockchip: Allocate tables from all available memory

 drivers/iommu/rockchip-iommu.c | 45 +++++-----------------------------
 1 file changed, 6 insertions(+), 39 deletions(-)

-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
