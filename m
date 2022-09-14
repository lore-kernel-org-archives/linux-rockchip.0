Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96168ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 05:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pa/+1vBmchQtdWEfXSvL1cTcwGts5KcL4n8hzhfkBZ0=; b=BuQx4gFtz4fin4
	eCuN+tjcWxKXNWXboxOfL/4/okfiGyhuHy7+npuyMvSf3xVh4/3+Foi6y2NohBserad/8zMWEYO72
	AEnVfxnm3cmcONZXEoLA5Lk6e2ygHjXHefYDUx2HYE59m1JatNenvNTjbNJPHcwHhaLQkrl0yIN/u
	r4CKWRvcNqGpD3noBv+18NRbDiwlgcJO6hZUhKZoGCHyGU4Ozwu8s8b05udLXoUsxDFgRN+LgfTAI
	BahvnX279sa9DLRGtv9YzPLLSGFkpPESrAPXX3tQQ7MwJJGKBAkPuYeIaTb3jdV/z/rKGVCITT0wH
	5Lpsu7gtYFTQUh6MVFDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKlD-007OOL-Nx; Wed, 14 Sep 2022 05:16:31 +0000
Received: from mail-co1nam11on2066.outbound.protection.outlook.com ([40.107.220.66] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKka-007NPo-Pa; Wed, 14 Sep 2022 05:15:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChwSAJ3qrn1wqS66/cOFG4w3vt5zxeCFZzqpH6I4TB6+L1cW7zX/BAIZw7/jBNrHKHr2ajpGOvWbvWhx7AfcK3LgCWD54NlXcWndRCm3+IWNOmKxhYFkTh65SFyI1X36Y6aPWjOAIvnEH6U2Ihm0KPv0Pic/9Yq3wwM+A5xYOMy1V5LXMLEOr+xW/9mFf2WQUkzaHBd5ftaKthu9zkiUQc3RQZp30Ibql16Yywg3hWo6FPOp5dBIsvyFIskd8JzUh7EVSbrWEg3TJhW4dWe/FTJ6gXDlGE36ymUY/QyD/Q6gGZ4Ac1sEF0t1lCkGQmHNF9G8EYQ1qvB6JO2JuDOPUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3S3WHWDB+Oqn/1w8/pKbYqUeiP1uwTQROklqph7XxA=;
 b=TjbU3NZKojhE1QHuGMtrgQVHVExw7XvwWBsBRvDZXmeEF3JbutzOWvahA744plJkam2v1ogTO6Oq5AHD7+57EZRW4MQ2C62VaINskmvBCHUwsc2QNHtJ0EZ53hWV68cK/QgYxLVtUB5YO0V385+ZojsRLkfwh3AhjnGgBWgHJrahLFXOX9GDGqg4sRX7kyD2FhBLtjhyJUx3lU8X7O8S92apiTLyffYC/HTl55r7bDuRx7HLOjHTmBQ/01P40jISkt4bCR2FJiQncjqBpNBjfzX6kOEHEt026jy1Yt3KKwke4hNetFuPRYZEyaaQxh/Jx5ttoyFbdblyQKVsgZAT2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=8bytes.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z3S3WHWDB+Oqn/1w8/pKbYqUeiP1uwTQROklqph7XxA=;
 b=MGRHxnU7es5wcpPE1BoCfQ2ejkJrZowB5t7h4ZQTng3vq3OmJfobjpDvk+ZThJwpRwHgrHJq1/Jt+7f02xAOORWfsDEYavr6GoThYDa/C/dO4wPaMpZvNxCkYu6tfTr+mDGdkC3xcUszH6IaQSPlHl2DL8ONMNaGQODcYrLbvg0D0JRevehujNfY8huH9BU1TKwo3jl49K5ZlsKkMYgtG0r5Xu81FZkonsfZ6eHLdb2h27oaQ7UYHcTEMaImKQHiswmfVIZ8FXPj3xhLdko7DvTFCtjxrnO2oCaUm2dxiw2oR5AZ6MNnLjd74rxzBIY1Z7MyEoC72NbkaEWPCQLm2A==
Received: from BN6PR17CA0025.namprd17.prod.outlook.com (2603:10b6:405:75::14)
 by BY5PR12MB4904.namprd12.prod.outlook.com (2603:10b6:a03:1d3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Wed, 14 Sep
 2022 05:15:47 +0000
Received: from BN8NAM11FT038.eop-nam11.prod.protection.outlook.com
 (2603:10b6:405:75:cafe::c0) by BN6PR17CA0025.outlook.office365.com
 (2603:10b6:405:75::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22 via Frontend
 Transport; Wed, 14 Sep 2022 05:15:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BN8NAM11FT038.mail.protection.outlook.com (10.13.176.246) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 05:15:46 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 13 Sep
 2022 22:15:22 -0700
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 13 Sep
 2022 22:15:22 -0700
Received: from Asurada-Nvidia.nvidia.com (10.127.8.11) by mail.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Tue, 13 Sep 2022 22:15:21 -0700
From: Nicolin Chen <nicolinc@nvidia.com>
To: <joro@8bytes.org>, <will@kernel.org>, <robin.murphy@arm.com>,
	<heiko@sntech.de>
CC: <jgg@nvidia.com>, <kevin.tian@intel.com>, <iommu@lists.linux.dev>,
	<linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH v2 10/13] iommu/rockchip: Constrain return value of ->attach_dev()
Date: Tue, 13 Sep 2022 22:15:21 -0700
Message-ID: <20220914051521.10475-1-nicolinc@nvidia.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT038:EE_|BY5PR12MB4904:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a728988-ab0e-4b8f-12cf-08da96102e3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	U8VkUbkdEesNmdtqYfoqWK/3G58pkAmVO/LtbizAS/1TQ15DQOxuR/jVkjZTNQCs+rjoPN0xDGy/IfytXzR6KF8gd2I3zoBU78TFqlg0cYFQ4ZCL2FYWS53KB9lwbh+evpi9TNn1zMIzLLyaHQu4+lRywEXaBv252XuRHxPoA4eMochrnVpn+xqsUvIfHQGT+EfMJ8rLAWHBMb9DZFrLtVVxFsVSEKQolobzpUhTsUZBpOmayzVUNkf6B85KS6uk1jmzoKAHiJvq14ZkhUvPKlNPb/TAs75squGJzvXrt/8oYsmBrlZREEUQ6sToAHPl7o6iO1SDam5Ju+zbMNIl9HxZlkXV031v661/1kEZFs0U1DYNkR4ezPp11EVzaNEtyz3V3Kt1lk1h6FZU64eX5ae0fGrQHGF+POY7jWgglWFfup+lN3rl6giWv6yNaFm/l9iUqBJZ/IGc8IP1X+FrKmvryvmHL6vo4iTcZc2Sbx7pKNDvH/HlgycBOjl+sssHhjmsHYhOGopNy5vYVAEUR9yjHBFFA8yM42fkXom5OfUa270WFc2SQt9Iohvdpvn26eJvdJMuappNictMQnFtXXWG1m/zNwQjby/hCRgxtall3kKFxahtdgWhxObR8772e65py6vPr3KM8m7WQzu6gw+Zwa6Y6BfLgXgKShYXpf+X6cMS79J+bDJkl5Vsca5AcqpGKlr8kG6Cea7M30Vj5C35mHUXFTqNOW1T1ePKURo5cKkYLS+g7Bbh5U+cnxA7TuOwf57IpfSoy5n+guPHiQ==
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(396003)(39860400002)(451199015)(46966006)(40470700004)(36840700001)(8676002)(2906002)(356005)(82310400005)(40480700001)(7636003)(86362001)(41300700001)(316002)(1076003)(186003)(47076005)(8936002)(4744005)(110136005)(2616005)(70586007)(26005)(336012)(426003)(5660300002)(82740400003)(54906003)(83380400001)(478600001)(36860700001)(36756003)(7696005)(4326008)(40460700003)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 05:15:46.3581
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a728988-ab0e-4b8f-12cf-08da96102e3b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT038.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_221552_880653_A3AEF2D6 
X-CRM114-Status: GOOD (  10.42  )
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

Ensure attach_dev() callback functions only return errno values expected
from the attach_dev() op.

Signed-off-by: Nicolin Chen <nicolinc@nvidia.com>
---
 drivers/iommu/rockchip-iommu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index ab57c4b8fade..de483b5532ed 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1051,8 +1051,10 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
 		return 0;
 
 	ret = rk_iommu_enable(iommu);
-	if (ret)
+	if (ret) {
 		rk_iommu_detach_device(iommu->domain, dev);
+		ret = -ENODEV;
+	}
 
 	pm_runtime_put(iommu->dev);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
