Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D437C27C76
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 22:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JvgI/AeRSdCOjBN1eNFrgfRjDvAUzERn6aY+cCgHi0c=; b=ey/uW7ZrmwJmelJiYpZsDpJewU
	kN13B1Vjwv6+oszovEAuTn4fjsFiXS1EZ4dWSPLYDe9vFIBnYZtGrkhI5o7ykk3IbahkHpEwysS7z
	bmuxXkgEo423aWJyI6gNaqdLssG21tt62NI72Mym0Q4J5Mg6EOuUAHF9SWreaYaFep12nwIoS3eml
	MNKUM+t7AsX4sqUZe5Abxr44d5B9Um9NCeUnljcnpQgHhYZka7IoMwknd+4aQORBR+zz29gfXLtJw
	DDcsjACt2TCNYIyeYZ38bOG/OVko3K5yFSxOMNV4FEMR6O5goME/MIWofQYx5XQa7kK0DZN+b6sAQ
	76y+EE2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo72-008yL3-Oi; Wed, 25 Jan 2023 22:19:24 +0000
Received: from xvfrqvdb.outbound-mail.sendgrid.net ([168.245.72.219])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKo6D-008xxt-QB
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 22:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=sHEGuDI+QAsBRHQDABhGANagI0i+/Ox7a/1vEXYK3PY=;
	b=oY4iPqE0yBl/0nVlsDUz8K3Qencz96m5NjSKWs3AakkW53Yafd8qDpk2aqNePoJm3nWo
	VseGSBWv4EsVWBCFZD3YsPpdJ0K/DRn85ZHLyGqRgY5TigASzJbXisqcxUXVMGYk1WY3cU
	bkB7uZ8etxEtAyl+k/x1gbYzId9qwj/0NCucjTITqswWlQkFvSNU8i7xm5gL6EdfY6Q/3c
	vIDYwwyODTl7y+0dXkP4yYhJWn6mgITdo4p4qf+EXAYDVd5FLQYi3f+wU6ObnM1V/gVS08
	F3UuM8jsjeuzhO6vXHlN17eH7cLbpXvcyBEFTPPw1tcMfZ6I190XX8fJpr3H0oaw==
Received: by filterdrecv-8569859b9-xfh5v with SMTP id filterdrecv-8569859b9-xfh5v-1-63D1AAB7-2A
        2023-01-25 22:18:31.954514689 +0000 UTC m=+5958699.083386124
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5-2 (SG)
	with ESMTP
	id NI2nFHi_TkuaGBqMj9k9gA
	Wed, 25 Jan 2023 22:18:20.957 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/3] iommu: rockchip: Allocate tables from all available
 memory
Date: Wed, 25 Jan 2023 22:18:32 +0000 (UTC)
Message-Id: <20230125221809.3275481-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125221809.3275481-1-jonas@kwiboo.se>
References: <20230125221809.3275481-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h=2FX+CIU4kFU9zG1Gi?=
 =?us-ascii?Q?wEbP=2F5kLr6ZQf9m6wDe9ilvpgqcQh5sPBuMV6GU?=
 =?us-ascii?Q?W1ay67FN9Xi4rS28UZ8dNzfF4=2FiuyI3TrUKS6vA?=
 =?us-ascii?Q?BcsX2z7HATDs0JyHCfghzm=2FbmtFOon1W3xgxfI9?=
 =?us-ascii?Q?mEnrYxnvF62FSUi8Uamn=2FM0lAhelX48YkBEzVC+?=
 =?us-ascii?Q?keMFUpedRpQ6n1ppYIRjw=3D=3D?=
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_141833_942090_A1515BE4 
X-CRM114-Status: GOOD (  12.08  )
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

Newer Rockchip SoCs, RK356x and RK3588, support more then 4GB of memory.
However, the RK IOMMU driver is using the GFP_DMA32 flag to limit
allocation of the discovery and page tables into memory below 4GB.

Let's remove this limitation now that the discovery table address is
correctly configured for addresses above 4GB.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/iommu/rockchip-iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index ca47f198455e..799ecc2c0d0e 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -726,7 +726,7 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
 	if (rk_dte_is_pt_valid(dte))
 		goto done;
 
-	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
+	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC);
 	if (!page_table)
 		return ERR_PTR(-ENOMEM);
 
@@ -1047,7 +1047,7 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
 	 * Allocate one 4 KiB page for each table.
 	 */
-	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | GFP_DMA32);
+	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL);
 	if (!rk_domain->dt)
 		goto err_free_domain;
 
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
