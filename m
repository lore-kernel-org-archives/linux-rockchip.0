Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D60C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 07:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+iYQNMpuNAdHOsLourFiBdHfh/xPPK2FlSvOGjqgq8g=; b=Am8NUGN5N85YqB
	zPcZmM1KGsATCt4MATOYj5dl/is3Jv1ST3xEsVsa7Uu24Zlqw0cNOP0lYscam8RiDnoJ4XHxGaRxU
	6fGp8l8S+j3UsXMTHQI2a10glpGz6jo95mzSaXhOcU6+bRS3NAkUjF17vMUekODuUWiAWAAkb6FpS
	pNasN/oSHiQfI0ZDH8M5OS0mk7o1ffEwSB3kNyKVZMqzXV9O4J3He6dTUNYYfFHYFhSUZPsJeSamp
	k+XTz/1WJDtjv1Zf+ZiHS4ikqqg/0CN78FKB7B0IbdDZCEvJrHRq5U9tCc+MYSpZ+JrMxINFlNXpN
	xfkeTrrLwgMheFS9b/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd4T6-001HpU-2S;
	Fri, 17 Mar 2023 07:25:40 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd4T2-001HoW-1e;
	Fri, 17 Mar 2023 07:25:38 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32H4smuw028829;
	Fri, 17 Mar 2023 07:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2022-7-12; bh=wZD+pUOh1BgwEErZt87GvEPFPQJSCLghwUussCiTRtk=;
 b=FPbNdQSpS/lVlDdK1CaZ5tvBuppVzAYx+nAGGUaercijzOUpW4tUyFwBVtzK1qjdE0UN
 wtIAhriDJ7wgr80NwDmE2lnK9bTHgJtdvEPVlnOgd5dTe5yi+mXfoNxtrCQuySTjDkXv
 tlut17U9V+NcscRN6CjtIyAEUC+F5fdcW7iJv0/4dj9al/TlUVpWUuQg9NZfTC7RcOF0
 cPxiH96tY7YPzJ0Rsb0ezJXYK/JT+vR1viBxxvQpivSdUzAUT/FQftVj3E9JrU1+Xzil
 UwIGa9q2QPVwMDZqoD095fiU273Bi4F5OZhFjxIfR8q2v4X43KcWleTcaGRKLid9BWu8 7w== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3pbs29k73v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Mar 2023 07:25:20 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 32H7D3qU036944;
	Fri, 17 Mar 2023 07:25:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3pbq9jn53j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Mar 2023 07:25:19 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 32H7PIHi037919;
	Fri, 17 Mar 2023 07:25:18 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com [10.129.136.47])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3pbq9jn538-1;
	Fri, 17 Mar 2023 07:25:18 +0000
From: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
To: 
Cc: error27@gmail.com, Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
        Marc Zyngier <maz@kernel.org>, Olof Johansson <olof@lixom.net>,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] iommu: rockchip: Fix missing unwind goto in rk_iommu_probe()
Date: Fri, 17 Mar 2023 00:25:15 -0700
Message-Id: <20230317072515.2924468-1-harshit.m.mogalapalli@oracle.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-17_04,2023-03-16_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303170048
X-Proofpoint-ORIG-GUID: lDSTuoJHxbUjUIk9TCVHlD7iwVYSBvf6
X-Proofpoint-GUID: lDSTuoJHxbUjUIk9TCVHlD7iwVYSBvf6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_002537_734116_DCAD7621 
X-CRM114-Status: GOOD (  19.06  )
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

Smatch reports:
	drivers/iommu/rockchip-iommu.c:1306
	rk_iommu_probe() warn: missing unwind goto?

Smatch detects that when (irq < 0) we are directly returning without
doing the cleanup.

Fix this by adding a pm_runtime_disable(dev), and using correct goto
label 'err_remove_sysfs' instead of a direct return.

Fixes: 1aa55ca9b14a ("iommu/rockchip: Move irq request past pm_runtime_enable")
Signed-off-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
---
This is purely based on static analysis. Only compile tested.
---
 drivers/iommu/rockchip-iommu.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f30db22ea5d7..0751f2e757fd 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1302,8 +1302,11 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	for (i = 0; i < iommu->num_irq; i++) {
 		int irq = platform_get_irq(pdev, i);
 
-		if (irq < 0)
-			return irq;
+		if (irq < 0) {
+			pm_runtime_disable(dev);
+			err = irq;
+			goto err_remove_sysfs;
+		}
 
 		err = devm_request_irq(iommu->dev, irq, rk_iommu_irq,
 				       IRQF_SHARED, dev_name(dev), iommu);
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
