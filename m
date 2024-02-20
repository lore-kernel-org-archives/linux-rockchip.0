Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF7CDC48BC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g71wnXwtlHO/gqETrSh5zxiRInEUou1Vd27o5pu53hE=; b=mI23VfenjGaVnYsP7WtJdkDL/m
	lZ/iLaLbQWsAEeyIkFmqCXh5Mcj57gl1x2DddKKKftkIehHt9JJuXuimmepzj4/ZYC/XAVHLt/xEi
	CKMiO1D7i8VQnJEZbTWXRhT5c+qJY8aiDOlGtpHIRBwlR7JU+jDfofcDUY1NfmkatHIvs01oHuS+4
	qUzKmqypIlrlnfMQireC4Jy7Xe9tMLxK1eq6Sxl16TKAjF0RUFREekY2YRzGy+5B9OTkWGgju51Nw
	A0Ko9YMKKK9zqYbyjF7dKS3Jk16GKuyBZAOkB8UHrDWPGS/+Fw4Wtp8dOgaCQ7EF8hvFL/gb7vYW0
	7pg6a9xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMcZ-0000000E2qu-1LgM;
	Tue, 20 Feb 2024 09:41:03 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbs-0000000E230-1L0A;
	Tue, 20 Feb 2024 09:40:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2ar07AkIvYfpvWGxyXhuVDGzf116ou+iJRxy6jDK3SHCCcrRwAxIXNkoJxVdoLHMeKb91S2MKrtRAQFR5j5f1J6uS4wqqW9jL4B6A5CHM7sSP6FoG/Ew6bDW2rgJxavtvw7q2e0McUflYHc9Dq/E1XiduKWNndxHSe7sR5/lRrrgDoQwYnx9BAq8XBxDnyxomZex6IAMzc9/4ibk9AVzEHcdR6SfX7ddf7C4r5ZX/1dMrzBv7IMsQFwjs9EQfSH+obE27STaZ2kIxHTbToBe0dB2y4U75GESBp1/k14BUCoXDV8RaMInNg+KnlUlji9w77BWif3OwfjdTE+QGigcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lnJCaZUTWdtDlpnJeFNWzjxRCQWowo4QDLyEyvF5jkY=;
 b=nY1ynd6Li44OYvzJgf+H0qs8Xj+QB+4cG6vQ6t/JaKAmWlmW3xSg5dHqOO+YWSajcLwFUM1On8nOiJuq2rsiqeR5VAtVvjZcrAUICxtBjyD18o2/tIJ0BRPZ1caDU8gvtbitOhKs5VuyzFczNmVJZS9vApqtOZ1/guWxqJUZTkftcUytbgUvCO+EBO8Lz9bw0GeHR+k/JamjtTEL/uAvETjhl56/5NXkDbH3gZ5E0vrLOxhLb5bwnO+cWpo5HFunihbaAwvdCNYxbyAh18e8pejM6atsd+UTirbbhqGzglYonGm6CR/F96hrYxEQY+ZwNBhnAweuAdLR6ktzUVpcDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lnJCaZUTWdtDlpnJeFNWzjxRCQWowo4QDLyEyvF5jkY=;
 b=tIuQvPYYo4q+1tUh+vzroZZtxrfG3O+FX1fZXMibm1rr5ud+pUsJRCCNOo0CxTMRCYA3Za6NhJhIlOohuW6jhGVFeDPl9XmPxiBfnNI1OeZgJgRNhMynr+FP4MdirBmUrdQUTJnmUu1ysZdIBy2QSVdkJ8Wd1LuPvtdnEl91bfw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:12 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:12 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:18 +0100
Subject: [PATCH 08/14] media: rockchip: cif: use port definitions from new
 header file
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-8-2680a1fa640b@wolfvision.net>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
To: Mehdi Djait <mehdi.djait.k@gmail.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=1108;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=GLiudDkgxd9PwtDF2ZLVlA9KPqdrWKb0+KfZ9LqBOQU=;
 b=DbC1mpRB6C3Pwlv0a9oO0CV69LRew8Owjlx6bhq+HAFb7VT1VxFI3wDldmoag4cY0t7ieA3m0
 tog1BIuGX/NCGamjFux/GZhMn0/9HG0cQ9n/F4ahtd04ZWEl88w1Cq3
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e25c655-ae6e-46d7-d6ce-08dc31f7ef58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z7rzcSuNbPESye/Gy3KvxWUwnBJB25wct1AprihqklxfzBE1GKtgGUrErn5lXBYLWtciFYOJTY8FKKHu5HKkJhv5nTi0HZ+Uo0PCEdkQdJfUQ+TRZ9b4ieBHxdkejr5/PSKoR8LGfooN+aD3tleBbTZzRwhQ6BhfpSEEV0x2i8CfBz0FvRFDuR1NoeZRrmHYV8uEvJ3cywxMVM9CKdMyY50EjXeLteVOrQ8msaBJhI/Y5QijmqTYcH3KycPLvJW/UB/1B5to2YRnQgiRVhCJxjumDpkCa8ixSPZXdH2ItcHHuWoYvE0b+rvYU6EZ3tj1yuOXEKNrxF96sy3gU8NrZ6KJdoxMqa5aVZ9n9XdrSVEs+z4nNgZauVmv8CIoVkPne6Pi0PyP3wECyk/8StwSWO8R8aKI0q2FqRuJG8t36wkjYc4BhmeT9OGrjeXuThgVtFA2wm37BhNVbMplu1qdtcWHbGnPF3IMkwIuUOQiXjpY214j9pj75Virv0UfTrtzjQpgGk6H+K9C0mL5QtPLVnyE/9RH8ffVe7J3lIN73JbN5nemkRRq5XyESIM4wgREOy/C7Ls8WjGJ/bJbh8xO8G4habIPHz5YkD8wFevI8+HshKSRkCnzYViG8ShqvGp08OfapH/c6KVhITFk0KYd9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blIzS3l2WlljM2QyTE9NeWxxai9peTBEQTB4cGlvNGMyQWJTQkIxYlJNM3B1?=
 =?utf-8?B?QXUvazNrMkd3Sk8rN0g0ZDJBRlpsT0NEQW4zZkwySUE2OFFmV0RKS3liaWV2?=
 =?utf-8?B?cmVmNmVaSm1zcWVEQUtObDFWSmV4bTdQZzNQY2NUUXE2aWRRWG1sZDlrZmF4?=
 =?utf-8?B?WTFyeXV2T3p5MVFjcG81RS9MeHBOazlvbzNXQldoL1BybXBYTWw5blBZZEdB?=
 =?utf-8?B?Mk1mVjROY21vVGJUQVlVWVRHSzFWdFl2cm9oQjZqK3NoU3ZyUjNBRnlDN2h5?=
 =?utf-8?B?THQvNk9mUitqRzEzQVk4OWJKVUhBblZkY1krZjlMbWNtZXk3UzNzYk1ta2Fp?=
 =?utf-8?B?MDVNa3FtbFBTRXJEVi8xdVYzb1JqOWhYOVhhWUlyMk9GdmdMVkFqT2w5THlq?=
 =?utf-8?B?VFdxSm94aEZkbWV1REtaZEE4ZXZKZXhmTTFveWxEZ2Z3dk5wNFQ3bWxJdGRX?=
 =?utf-8?B?OGVoakZua2xDZ3NMRzlKaTdhK2FUZkRlVmdPRks5eUtEWXQ3U1A3Qk9wMldp?=
 =?utf-8?B?aWt0TEpFRWd5ZituNGlVLzNWQkUyVnZYZVd3NGFnYVE3RTJIMWlHcU9WajEw?=
 =?utf-8?B?T2dIZ1pmOVE3WWU4NndxeHlnaE4wM0ZnOUJzT1luWTVNbmJBYUFNVlNLOWxT?=
 =?utf-8?B?cVNnc3FTOHBLblE1RUxTc3FXOUpxeElxOUlJRmYzVWZRWFkvRnI1TnRqRTBs?=
 =?utf-8?B?NjVOelhibS8zNkZTdlRLUEFEVGV0ekx0UnpSRVE2SkQ5OFBLNmt5dTYyMzBz?=
 =?utf-8?B?WUNNL2VYbEw3LzFYT2gwREVwZ3NqRzVMOWpkazFjbXNOM3E0ZkpSUmxISFlZ?=
 =?utf-8?B?cE1qTE12TS8xenNDeHhYM2tXUFlpcGd1dFNZcmVNcWY1VEVhTHZqNmlDd0c3?=
 =?utf-8?B?VzdXNjNyb0dJQ0E5YXMwUEkrS2I2S2dTSjdicU9aUHBqekxKekpqWjFFRXNF?=
 =?utf-8?B?cVMycmVrZDQ4dnc4Vkt0Z01sUkZYV3pRM3UxRFMwS0tKeENNVS9FQ2pPN2Fy?=
 =?utf-8?B?Y0x3bHBzdDR5Zk1BOU80VFpKWEhUUjZ6R3ZmdDJzQjJRM0oyUWQ1Z3ZQMTJs?=
 =?utf-8?B?VTR3b0JacXIzaDZGRmRURWJpTStyaHpsNll0bDhUdXhlVXFadEdkWERaUVVm?=
 =?utf-8?B?cDZXZ25USlMvcGhLY2dzUW5OajJxYy8zeHJJOVhTSFlkcEtXUkZYTjdQcGxH?=
 =?utf-8?B?T253WTFGbUppMFc2REZHL24wQW5oS29CSUtBY0RCN3ZxT3NKNWxNMEJGSGJh?=
 =?utf-8?B?QUZ0U1BSamhQSnNVSTNxTmJNRjJhZHRCakpmREhLdVNZODQ0MUltWkFvTnhw?=
 =?utf-8?B?ZXFWK2JjR1BLbldJZHN2Y2ZJS0huVlh6NERRb3IzZTZyV05RZS9YYkZnclIz?=
 =?utf-8?B?VFMrcDdUc2U5Ymd3V2lvWktqZktvM1Fia0p6VkhrYXpHL3BtemdVZ3ViZkUz?=
 =?utf-8?B?dzVLWEh1b1lOWG5UWEdCeHR2ZkFhVkg0UHRlTEdCWE5hVm5jVzJKQVkxSWFX?=
 =?utf-8?B?YmR3em56cGNwZE9oNEFEYVZwcDRodnFSZDZONDlYZzhwbnB3K0lneEt3Yk02?=
 =?utf-8?B?R0JrZlZuaFlPNjRUc1dFUGNRK2ExYWIrcy9ISWNGYjI2ei9rWEhGNS9vR0Q0?=
 =?utf-8?B?Mm9ZVzQvNXZxY05MMlVPaW5yRGZCazdCMWo0WUFBSUc1ejNKcXA0V1R1VGFj?=
 =?utf-8?B?RTBZcWoyL29uam5EUHVqeXYwdGkrS1FlZGo2Mi9PRUlGT1IrcXlqMHhTb0Y1?=
 =?utf-8?B?cGRuUHhoeGZpTnYwbUsrQmI3endxc2VHVitJYmpudXNMUEtCcjZmK2w3VmRq?=
 =?utf-8?B?QStDN1M2WXcwY2hCWW4vUXNYVDYrd3VUYnRybjJoZ1hoWFFaa2F2eWRMN3gz?=
 =?utf-8?B?Z296d0J4U0M0UjB4VER4WmxiRXhORFZ4MmNUcnljSGtRUENYRnFFVVVrVURZ?=
 =?utf-8?B?N2c1N1Y5akdkM2FoaEtYQ21DQU9IRjR0ZnZhZndRWU9hWHVmYndxbDc5MUp1?=
 =?utf-8?B?V1dqdkZLNllNR3NWc2QxS2VWdi8vSUdVSkllekdrME4vYncwUklQZXVIZ0V3?=
 =?utf-8?B?cElUWEJqclBpWE9Rb3JrZFpUZC9LV3JzMDdiZlRIQzRHanhPMThtanh5VEdu?=
 =?utf-8?B?ekV6dzVzd0NWeU9hdmVRcmZUeWhCNnFQNitETitub3l3SzhqTHoxdFoxRFgy?=
 =?utf-8?B?Qmc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e25c655-ae6e-46d7-d6ce-08dc31f7ef58
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:12.2767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r/cNMi6+pTuLQooRPdbzWWN8NY6ZST6iiw16PPlZivgK7LhCAhx6pdXel0DEuSsMhsOB8DQkzaSeWdeqqys7Kr7zD8byKxQcpX09yPfGTes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014020_624871_E1FB0A1B 
X-CRM114-Status: GOOD (  11.27  )
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

Use the recently introduced port definitions instead of hardcoded
constants.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/media/platform/rockchip/cif/cif-dev.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/cif/cif-dev.c b/drivers/media/platform/rockchip/cif/cif-dev.c
index 923831827be4..c4282449a93d 100644
--- a/drivers/media/platform/rockchip/cif/cif-dev.c
+++ b/drivers/media/platform/rockchip/cif/cif-dev.c
@@ -7,6 +7,7 @@
  * Copyright (C) 2023 Mehdi Djait <mehdi.djait@bootlin.com>
  */
 
+#include <dt-bindings/media/rockchip-cif.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
@@ -85,7 +86,8 @@ static int cif_subdev_notifier(struct cif_device *cif_dev)
 
 	v4l2_async_nf_init(ntf, &cif_dev->v4l2_dev);
 
-	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0,
+	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev),
+					     MEDIA_ROCKCHIP_CIF_DVP, 0,
 					     FWNODE_GRAPH_ENDPOINT_NEXT);
 	if (!ep)
 		return -ENODEV;

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
