Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41141C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=acVaOX47X2MfGK+Gf3xCSz4pAoKayLwXDK+InZ5N9Cs=; b=lfwLyXutUWrS5pXZveVs+PwVkZ
	NQkrICH+fzWJumid8nLZ1ZNWnonDEtu9D7DyM3NJrz4at4g2GTy8Q+8WyJr9coUg5AVeUMuTpt6ii
	K5jWQDWvTuVOdt7ff7hpMb9AFr/Y01oxJKsdSVSE/bpf9SITUw1VxI1GY5jPFCvZtns4pjKd0hD/G
	hScLYSvVjVCClv3xh3dEIoX2xR3QmFplhnh1h5y8VAvtdg2zIr+MbocdDSpKoEw7vbjkGr2MRFElz
	eiYkPOoVpFxvMRj0PTbvuBn2F7oUTOMm//63Jm5JS2r4soSsG/KmGKIcYipH4rMaHtU9efzuYMJQG
	irOitMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMcE-0000000E2c0-3jaO;
	Tue, 20 Feb 2024 09:40:42 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbn-0000000E230-2fFi;
	Tue, 20 Feb 2024 09:40:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KKWe6bFh9cAH+94w+AbuhM3iFkn20rYxgbdw6xqEhW1ItLO1sA7o/c2/0cQCFzjw2NdHDRpIAgOtRX2/vBhL39HkNUxY0wdlHOtmM430geHlwtQmlivcLsuASDrEbWRqP4jWLEu0g8o/zCC+D5ZqK+c5l4XKpdZlfr6y4wDZ9YD10UwHNvUzLCW+V4hG3vkWyaITOnSN7WbEJX+dVpG/L1CSxPJEws71lvYCLdABxQUntT/f0+L6w9AUwz5kddcJcHrXc0d6e9I0jfJoKMI1vskqH1hpPVwxdbTsEvO8rmhUx6OB+GEcIHu+QpQoscSqzH97a58TNFzh7BoMmo5k+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahXRRa2Auy1r3diPOfLqPhufT0OndywK4ZL0NrIqr/M=;
 b=ezkkFNgGvwEIExv8PjHIRh9x+JoPlt0d0fMPOlY003DzvKMODbxLY4BDf6eXBWg9vaSeGaP89nIAPh6MzhIr4CoIGe/IW/N8DYO1IFXTLp+cxDGAULHQhI/6zYIYzna/EBab/y3yz3efTjU8As378PzhbkDg57Joss5trRPPNUku1shi0bvrGQQb4O2ItXsCxtfEnJCv7VjsuWlwC8JcsUWAPilNRAeVqglzeB9oKTRt5xLwehj1imbrvC8fpVWftXR9DPgOnbSrAk44edCeOXmeUONizv5hJt4H2bZI0ZhcSR8qWEYtpB8jwE5V+gFGrneJ7MvP5u7KmTLwPIUdsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ahXRRa2Auy1r3diPOfLqPhufT0OndywK4ZL0NrIqr/M=;
 b=mZMDjyegSuDsL0VxrvHBGksdjzKWRdPliEdfVJZEwSaYd/x0BLd1eJNn51SsCqvOdH7InpmhSCTCIlCKnZL1ssk6HkT+WQIDQqT5up8zXr/WKxpbabA6AInz7S0wyM7IXCkx7d1jk0ZLDKyVMvvJ3LK4n3iqk8zvXrlGKiKAkTY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:08 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:08 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:16 +0100
Subject: [PATCH 06/14] media: rockchip: cif: store endpoint information in
 private data
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-6-2680a1fa640b@wolfvision.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=2185;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=WQGjonJHv4SJS+dxX3SFBxVGNyfcDP/0ER7RyY5D3Kw=;
 b=WXoZn0yvOgKVLCymY/AHQSSrbLy6vL0OWA4pStXSuqLRA7xCxgonAdLk1YFJ6mn8szqHh5Mht
 eoV/bvgzs2DCcbyK5WhbHufMoN5msIqhi51ISghE87RTdhVwjAl4fsm
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: dbde50d9-4ab0-4f8a-8760-08dc31f7ecef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JyteNDqjePRcLM2tjdJTUYUs9/Bep2k9YU2xeIFa9vG4E7/Q+WRqzYGhTwfNmHrgHXfDXyvIrisi9KgNB6IBlWHZUDd5zIdCueZCN9kacHGlo0YgN8fOAhBsKjcWaiUBgXFAlABe0k7GRW9LiPHjKOiUXZNr86tYFedlbkmGk8w8aooeVMCaJfREwWtT4S/eM6zhoDQDlPntcsiQm5D4H8NK0XfozHYixDsnn3MfKIf+Qmb6plYpj0rOYbEUSBklNELEpL0uxmRqH5cycfaLUd0DsviUlLh+Naf3IABZsf/2sAjzYsH20u1SxjxPxxkjKbsGeRA9fQ94Zv9AWkR7ut+rpJ6yajM6kIknekyGcfL5vsMwv6UsZw572K6e83R7if61nt9mY1tnb5a5iEoQ+uZf1XlyfxA9CuJ8GPToSHvBMEM3AXjwGPmrWRM4g1+cIxapQn4SyXW4KkyirU0Y5y2vj+dGTe2vauWJrK2+h7nAsItG3XNoZEtT0gSRlj1/z9YV9RVgJo9Ai7u6epydgWsCgNSUxg+7UQaP2EWLGe4nvdfG9rlwofkSpy+ZdRlw/wEPO6bsLZ4tK9rgdetEswuRxBNF9ZYsHZttxixYvlIActpgOhFjFrHMdIKdNx+t6+p9o6iXWM9t3nqjvuzZ5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGtPV3ROVHZqWm9zbHNsZEI3L1ltWlJrazJrczJhOHMzWnFKcWVRdXZkdFZn?=
 =?utf-8?B?SFFvaTBHc1hITCtPeStMK2NxOHBMc01RMzY3WWZkS055ajlRdTJ3b000TzdX?=
 =?utf-8?B?eXZzSktnNW1jOXlHZnhCMHppU2ZxT251UnZqZFNibVJkUEJZOXpPT3VTUC9v?=
 =?utf-8?B?UjNsRHVOSFMzQ2ZhNlVVNktUU2VIZ21vZ2JydGxmeUhmQk9lSlJ5elBuUFBH?=
 =?utf-8?B?bmE4S3BJUCtaeWVpczg1Wi9ZWERLR0FRU3pJcjJjL2QyL1BuSXJqZFRxSWJp?=
 =?utf-8?B?YzlVTDdlVzFiYWdwN3pmZk02Y3NBTXpVcWFGS2xLUmlGbU1DZ3FKUm9QK1Qz?=
 =?utf-8?B?V1NuYjlEOTdHMkxYRTZDYXlMSHo3c3pXODFwUk5aclNLYUtlTmtoZUd0T2g2?=
 =?utf-8?B?c2tsRGtIaXlyNjM2VDFOT1JUeWZ2b0poMTNpK2lPaFlycHdIRlhTcVJYNWts?=
 =?utf-8?B?SS94ZzgwWkVvYjlmSFFzU3dQS2NBMGZPTnEreXNpVkdtR213TEhtMlpYa0Ix?=
 =?utf-8?B?eHRkcGNvY08xWWpuYUJMVE52ejBOZTZkYzFweTJvdGV5bWRxNVZZMS80Q2U2?=
 =?utf-8?B?aVhDcExGQnd1SExuenFTZXdmbko1bkplaFp5YW45d05PL1JBWWZwdERJM3Fr?=
 =?utf-8?B?ZzRvK0lnQ0V6eXc2UTdzR2JSNncvZEJMeUJ1Mk9FZFBXV0NJUUc4MHVJTGpv?=
 =?utf-8?B?dzNVZUQxNVJQait6R3krT1o5eFl1Y1B4Q0hmR2s4aEp2MWp5d2diRjllMEFq?=
 =?utf-8?B?Q3ZpWTNLSXlEY1FRVXZNdHhwS09nR0FZaFkyNDkvenk5VmE1QXc4UmJoeC9M?=
 =?utf-8?B?MXRhbitqSkcrV1pnWkNxcGpRT2Q2TkIzMzRvSnVnTnIrSHMvUnh6QitIaEor?=
 =?utf-8?B?QVViV0JsTTdGUG9YSEFTcXdNVXo3YzZnOUd2c2VlanQrTWxlalN1NGQxUGRM?=
 =?utf-8?B?eWJlL1F3UEZxZkFoVTQ2M21kR3FYK05jb0lHSFZOc25CU1VldGszYm9uSk9M?=
 =?utf-8?B?V1RuVWM5NGN4VEJTMzlJUEp5Q2tUeVdqaUhYVW96blA1K2t5bWd6cGZGMXpw?=
 =?utf-8?B?RHJZanlMTS9hdW8zUHV4a0w2SXd1OEVIQU1BTEhrVjVuYWI1WXlXa3B6dUJl?=
 =?utf-8?B?R2xKZVZncW1sYmlEcmJFWkl1TTM4VldYMGVZRlU3ZE5xZ2o1Ym85NldtKzlZ?=
 =?utf-8?B?RDBxVmdhQXRMQWZ6TDVuRDFhRE13UFkrOWMrZEcxSGVaaGpCMFFIRVFPYnND?=
 =?utf-8?B?bmpiR2FZQWtOd0hRdHZka0ZNZmFBUEQ0WjZUS0ZiN3RHSGZQenkwR1VNQWtu?=
 =?utf-8?B?VWdNM285MGEzTTUwSnJiZ0JRaE5kMG4wRXhuVWpnTEtyYnFVaFZzVHZzNkFZ?=
 =?utf-8?B?ZERYc0w4TVd5YUVld1BLWEZxdWo1LzJaaUlZRHR3VW0xbWpiV1B5MHhPOHJS?=
 =?utf-8?B?YzR3anFuZ1lXeWxTSGhaYmVmSndqKzh6RjlnQ2VJcEdwbjJFeEx0cWN0Y08w?=
 =?utf-8?B?ai9YTmUzR2hqNG1hOGxFTVdMM2JPaUltcmlodDdzRHd0SGZYU2NmVHh0enZw?=
 =?utf-8?B?L0RnRFA2aEc3ZHJUM2l1azNsRk1sMk9XRVN6SGR5bXAwOEx0eFNnSDZmZldS?=
 =?utf-8?B?czVqY3pmUE1vMlRXU0hTcEdVNmczLzVOeTdTZ3JpL2VRVkRCVlJtTGFxcHY1?=
 =?utf-8?B?WXlJTWVNdWI0RW1jVlJtSVROVlN5THlReDM4WTIwTnM5di9ndTFVVjhsbDM3?=
 =?utf-8?B?OFdCWTlRSHZ2TnZXelRaVmRhU0hSOCtoOHRxOUh1U3BKR2c5cUVGNFNkWHVz?=
 =?utf-8?B?ZUdyNWhobC9TcUszOFM2ZTgvcThCNldXbWFTZDI3Vnh5bUdjelhucnB0OUVM?=
 =?utf-8?B?SkZOeHFKZjEvbTZMeU1SbXMvR3FITTlzQ0VpYTNqanpqM0FLdGRKMHJEQ1lB?=
 =?utf-8?B?U2duWEttYjMrTmwzT1FDWUFIZWxxL2RrK25ZVFJ6Q2g0NHowZUthM3ZGNGJs?=
 =?utf-8?B?aDQvVDJFS0IwdkR5ZzE3akxxaWZxVWpoby90QjdvcDVKTllRZUNjZnpLSlVG?=
 =?utf-8?B?b1ZXdzlXOTBGSEpSK0ZZbXZXSzBIbFU4OWRLVkw1QUZPcHBScUlybzYrVEMx?=
 =?utf-8?B?d1RndldFMFZ0YzJBNU9GYSt6OWUxM3R6TTBtV0xSMGpYODhBYkFENitKOXBO?=
 =?utf-8?B?TUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: dbde50d9-4ab0-4f8a-8760-08dc31f7ecef
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:08.2511
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ugH9ifatd4iBYxTgqqOVJ5pN4NNtoDbBYLlR9e4oYswyTWhrOodBuPv+G9umUwm7+oTPDbs49Xm7ZcH4xxsQMbIn2U5X/HZxduViKxWfwbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014015_714827_8F350E93 
X-CRM114-Status: GOOD (  14.29  )
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

The endpoint information such as bus width or flags are required
to set CIF (and on certain variants GRF) registers correctly. Store
the information in the private data of the driver in order to make
it accessible.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/media/platform/rockchip/cif/cif-common.h |  1 +
 drivers/media/platform/rockchip/cif/cif-dev.c    | 11 +++++------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/cif/cif-common.h b/drivers/media/platform/rockchip/cif/cif-common.h
index 89ed9dd6f36d..34da800a0504 100644
--- a/drivers/media/platform/rockchip/cif/cif-common.h
+++ b/drivers/media/platform/rockchip/cif/cif-common.h
@@ -108,6 +108,7 @@ struct cif_device {
 	struct media_device		media_dev;
 	struct v4l2_async_notifier	notifier;
 	struct v4l2_async_connection	asd;
+	struct v4l2_fwnode_endpoint	vep;
 	struct cif_remote		remote;
 
 	struct cif_stream		stream;
diff --git a/drivers/media/platform/rockchip/cif/cif-dev.c b/drivers/media/platform/rockchip/cif/cif-dev.c
index 660e28397916..923831827be4 100644
--- a/drivers/media/platform/rockchip/cif/cif-dev.c
+++ b/drivers/media/platform/rockchip/cif/cif-dev.c
@@ -79,9 +79,7 @@ static int cif_subdev_notifier(struct cif_device *cif_dev)
 	struct v4l2_async_notifier *ntf = &cif_dev->notifier;
 	struct device *dev = cif_dev->dev;
 	struct v4l2_async_connection *asd;
-	struct v4l2_fwnode_endpoint vep = {
-		.bus_type = V4L2_MBUS_UNKNOWN,
-	};
+	struct v4l2_fwnode_endpoint *vep = &cif_dev->vep;
 	struct fwnode_handle *ep;
 	int ret;
 
@@ -92,12 +90,13 @@ static int cif_subdev_notifier(struct cif_device *cif_dev)
 	if (!ep)
 		return -ENODEV;
 
-	ret = v4l2_fwnode_endpoint_parse(ep, &vep);
+	vep->bus_type = V4L2_MBUS_UNKNOWN;
+	ret = v4l2_fwnode_endpoint_parse(ep, vep);
 	if (ret)
 		goto complete;
 
-	if (vep.bus_type != V4L2_MBUS_BT656 &&
-	    vep.bus_type != V4L2_MBUS_PARALLEL) {
+	if (vep->bus_type != V4L2_MBUS_BT656 &&
+	    vep->bus_type != V4L2_MBUS_PARALLEL) {
 		v4l2_err(&cif_dev->v4l2_dev, "unsupported bus type\n");
 		goto complete;
 	}

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
