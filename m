Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16D76C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ykhl/g1Neeu7wAiSPwuiOiP2JzXNJ7JMacKX++Hhk8k=; b=mjVRGHzroi3giKgYQDxStj/QyZ
	p+q8W3cbjL0k+3SKDr2KdswipK+sNmkE8Mvx+ipp+rsslQJtG3H0+6+kRAZmlHRqJGyOXmDcx6S7m
	EcIpBm09t9ID5kLP6Q43jhMF31+tAzW8Dz5lI9iGBcvvSYUZ6A7HYu5K8QOGEIFd8DrKqMwd7BNde
	RhBmUtFItndZ9XWBpoMWSaoJ4+PL0Bbge6d7jN7e/ansra9oSkSU+9FU1biosLCyYaSWTs4YUek6D
	cE0NIIjKgcSi0mT5B3t8XJl/vM9uU/UWoFLwXhbTPCZPPbO1Fv5I2W2xi5p7Q22cWV+mZlFqGGs+i
	JSo0Oydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbr-0000000E2FV-3ulo;
	Tue, 20 Feb 2024 09:40:19 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbf-0000000E230-2cO1;
	Tue, 20 Feb 2024 09:40:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXE4Dt3+bmMAArFu5kenpvRtqHnL+4s6csulZejYRwHWK0ODabX6vYq7ug+pjIlhBFU4/2c2SA/i1fkuzxZANdK+Z0xvUoI2DdooOHTo6wo1DA9K8qQ4XK/LHKsKDGWQWwsyKh+vI7mP6obliv7i3wuHokMaoU2sjqgRGOYTMv+Eg8JwPW6f5oKK6SZHWd/KFYV35impDLVdITRpG2UOIorAZAoPfr15tYy2qBNe93TShb/YHgUDq8K/pH2EFYyaPTEvG+xYCGvikpfGF8jYuSFyb8Z3qaDLxDokD9kq7mBtzflRT3B4POiMHGdGUWgoKuMLF+2odi8TIpvQHNzRtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJiyoLkx+GSJIhcmsGPp8UszJ+R+TIOL9T4nCd+hCJs=;
 b=XSi/OaST+c0HRgfS8ycEWGd/RtZV6EXMPBu9+RjKtRZoMmGrTvKCVvpGwoGd3Kr+UKvcwEy3xooDwYlSKmUyh0/2P7JXnzikqIDidPRgFv038/wFGMX2KvJndUCNbT13r3gZI2pSI5+dNRnMZOPleH2w5q8NWzkzDuxRUnxB7HD1bzW8McVnx885XaqFgY9WuHp3TRwbkdJu6OO0pQWKuy+lYK6u8o9idxdzwxAGU+H1rmONjDdTnhtYPmzjmH7lmvoGPM3lH4syah1Qw2XPfsMibBFiWq7mJydtCqF4E7MKT9coyNVfiQmS0AdMBGIn4kdPm4GOMhCQ6Q0TCgB1Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJiyoLkx+GSJIhcmsGPp8UszJ+R+TIOL9T4nCd+hCJs=;
 b=QZ8b+tbuR86Eclg7imEpuDcANyuC0/MCt8M8XM+b8qKVlp5bEFDVPO7EvNbx4QyPLpVgJtP2mNkxhfDvkje7JuVbg/wE3p1PmooubN45kmGCFgCCwbzNg1y5WebeeF/S+Xoy5LfxFZNfp1dErOnI0ewe9n8U4v1PXraSC8imLmI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:00 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:12 +0100
Subject: [PATCH 02/14] media: dt-bindings: media: rockchip-cif: add port
 definitions
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-2-2680a1fa640b@wolfvision.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=966;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=KRt6XgSyUvhtp8Ghvt6RHsXRYoKWFtOPfVBibS3LrA4=;
 b=N3pM82BnsWC5yhoqHJWS1SFa71OQXTVnuEs4obf1tU730Pq39QD4v/CFZuAyNAyKJUX15otvT
 Fn3NJ5aK+gqAQd7/3qDtWcFPVw/f4LTXYTS9HSCSMBkuU5IhHbIT4hk
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fc60e02-f154-47d8-a8bb-08dc31f7e812
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eaPIm8RN5/NOZ3QrqGegSydFWX68tN/lLBtBcUJBKiehSVeu4MgVAPA03cv42S6TLAXEGNS1raEU7JUFkk5PzkHj29BoBHHs4C5H12wTUvrP4reSC72Aayd2vtFgaEvZdMaJcBCgIBBnP5c8bi8FElYfL6VZAEQuBUDSlqi8obB9dkpgO4N+oOQqAfkvkSKqbixNK3XoLnoYEcNiWoaS+Z/6hHLpDVQqLovEzjKhCujbGb0kWFruRQtb41qfxX0+CvYF9jtrEAu2+Af3Z8zxzUlFoRfkEeT3EDz2NKfsJgyOv9vxtrTx2HC3WRQpGbr0IGokO3lJpcOouSBvTuH4zHpLq+eXDpGOWadNEQQMm/GSuFnQrCSyQwEHglCF63LOO3KVMdLOSPA5NSuKfRSNfFHTDVaBrPJU920paCVxOmA8+XjqYbfJynVYHhcXWEw3vCggMr03TPh4Am3psq8e2nsrpniks15sBagCrpnuPTMUegry6hnG1ulWc/kvRf2dTX0dRDjAW4BGwhz+8lFeAaD1dZwbPDc5u1aW5zIfNGykXJ3EYCo/CIGUZjKZGf1NBUBbydIqC2vvr+AnAWCenutfstTT29YU/TXVVluRYbdSEnwLegkEx5zdrqmoKRBeItLXat35/arBnoy2jsf7UQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGFLZGNMRlAzME1QVnpydHdxdnNJTzBNSDJRY3lrYVp5ZENvZVBPbi9NMEtH?=
 =?utf-8?B?MkxIR240T2lOaTZQc3ZTTGZGYXE3MkdoV0tDdWQwWklSd2djay83NEg3UGho?=
 =?utf-8?B?bmg4ZzBGRU1zZXF1MWFnclhMRkp2Q3V2T0ovMjBJeng2a0g1WlJUdUFnSTdC?=
 =?utf-8?B?UTdNR2hmeithTEo3QXQrWkQ0cXlCaFRTcWc4UmliZnZ2Uk1BOERIU0ovNDVL?=
 =?utf-8?B?Mitsc1ZtK1VMZTNDQWJIY0h6VmVlUkRGNkhWNzQyd0YrUGVPWis2bFRmU0hh?=
 =?utf-8?B?a1gzTTd4ZXY5Y1pJY2VJOG5zc3JoMi9RTHZNUERNa0dYN3pib2taQ2lBRDJZ?=
 =?utf-8?B?SjhZWHBnSGp0ckl5b1RvOFZxYTNZRzFJejcrdU9HL2VPZDcyVVdmWTYyUnU1?=
 =?utf-8?B?Vk9DWG5mb2Q5cnQrUjBydncyQ29jWnh0TjNjaFVUM0NCRDJrVitQaFBLQmN6?=
 =?utf-8?B?eU9iMGhjUy9URXl5RnNNVGc4SWRwd21QM2V1K0pDZkFTTlBVdG94ZVBGcTdR?=
 =?utf-8?B?VzZUODkwbkFkMWMwRWpYOGhlVVpGY04rb2VLTGJaaFRLSlpxdzZoNGNFaUFr?=
 =?utf-8?B?cXAwY1BMQUE3QWpaRktKZjU0Q3huK3FSS3ZuYnI5dXJvOUQxQUFVSkFXajJW?=
 =?utf-8?B?OUlFa1VUR1l6OGE1bUg0cTN5MWpDSms1M1RHbXdqK1FPSHIwQy9IUU9hcVlF?=
 =?utf-8?B?cVc5MzNYQVh4N2VNdXJ1T1FkQS9HUkQyVW1IOHpXTUJjM05pZkx1emh1N0xX?=
 =?utf-8?B?Q2dlem1OOTFiRitTN2NvNjFnMDNrRFdTbmVDK2dSZWMybnFoRk1SMEc1N0VP?=
 =?utf-8?B?T2RzbjFpYVlqZEsvU2pNcWJ2bk5ERHZmektTWVRTZXZzZkwvbENSOG5ZMTZX?=
 =?utf-8?B?c05pZzJ3VXRBTG1OK29PVnB6anpyd1BKQUhhS2NwS0xUWDJGSjZ6TmEwOGVO?=
 =?utf-8?B?MVI5aWVla0J2TVlPTk1YTTNPWnV5VklrNDdKbE5vVksrYkIzSHBnem1ROXhp?=
 =?utf-8?B?Ulhpd1FaMC9rZW55VXJtL0FMQXByUXZJbjJZWm0wZnh6aU9YNjB4MWdNWis5?=
 =?utf-8?B?ZjhTMHdySks3UVAvTi9xUzFPejVONUxLV0R5WFBvRldkcnNuTkdDdVRJUTBI?=
 =?utf-8?B?K0dMVVdrQ042MGF0UzVoQjRNbktraElFQWZaMFdCek5wZHpIemNTZDdoaW40?=
 =?utf-8?B?aGZ1VEpQNkpOWjd1dEp0clRRcVkxL3liL01NdWRxcWxVTExKeml5WjRUMlpy?=
 =?utf-8?B?QUx2RkhlZUMwemlNdjBXelJpdlNCRXp0MGRpL01zRW5JeGZFVmFyYWRzNUF0?=
 =?utf-8?B?dFprcWEzemdXVTVrY3JNaTBqb3VpTU9KbWtUTmxEWDB6UzQ4SDBCYVcvU0ZQ?=
 =?utf-8?B?MVdoYXJDbmM2V2hiZFBpQ1JyY1d1OGZrL1ZicXhCemxiNjNlYkZSWUhtUktD?=
 =?utf-8?B?RGNBMHY0dVo1Q0tDV3ZmR1J1T3l0dWxTSWdBWjFJejV5Q05zWHRrbDF5aGlp?=
 =?utf-8?B?ampJMjEyZ1pyaUdlcndLbERzcDQzbUZZby9BVXNOMjhpZDVKclhQZG4yb3Ex?=
 =?utf-8?B?S0F1NTYxWTBaMnFGc2ExR0gzZ3BsOFBid0UwRmhNWVJPRHRyci9jbVcyYUVv?=
 =?utf-8?B?ZjdVTENsZ0hFMnluYytRNFZjRHczUFk3eFJhbW1ybGM0NVU3cDJvSDdUYVVR?=
 =?utf-8?B?aDhsaUJnUDVSSFI0Q0hlOU9GcWd3Qmp5eWRCUCtTUFRVWklPd0xkMnM5bVJF?=
 =?utf-8?B?UmN6WFJPQzI4aUhJMCtFYlpkUnhvMUtOTnpTYzJUK0M1K2JkdVQwd1ExTWkw?=
 =?utf-8?B?SlJCYjAzdEpnQVM3N1VOdDVWVWNucTd5ck51cW50bE8xemxyNEh2bmh6Y0pE?=
 =?utf-8?B?YTFMdWJ4SlljTkZXUkMwZVB3WlcyNzZzSUp0SWcyRDZkdFhRT3djdk9rVnZE?=
 =?utf-8?B?U0hJSWpFMDZUaEM5SyswazZldFV3dmhaMmt2VFczNmlreEkyQkRhc2lmeklo?=
 =?utf-8?B?T3padTdndlFhaER2NmpDblk4THpOTUsrbkdXdVVZS0ttU2xkL3NVWDIrbU1o?=
 =?utf-8?B?MnU3M082QmVIdXk0TTJZMHdicEFxaDNIc1A3Rnh0Qy91U25wU0lsN2x5dm5O?=
 =?utf-8?B?YkRTMDZiODgrMlZTdGdGNUF1Y09RVTlOQVJHOU5RV0tMRFhwVjJCL0V3dFZz?=
 =?utf-8?B?QWc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fc60e02-f154-47d8-a8bb-08dc31f7e812
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:00.0778
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BG3TkoHUU7OxCQAqiMUp+mxR8w31F/b6PUPHrNjwVyNJY6wdQ4vfFOFjW4l8sGOkqxyr3LAg1zvXHUBYZvFki+j3EA4bGOmaUkTI3LNsqrA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014007_737317_340EFBF6 
X-CRM114-Status: GOOD (  11.09  )
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

The different variants of the Rockchip Camera Interface may feature
various ports. Add a new header file with port definitions to avoid
hardcoded constants in device tree sources.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 include/dt-bindings/media/rockchip-cif.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/dt-bindings/media/rockchip-cif.h b/include/dt-bindings/media/rockchip-cif.h
new file mode 100644
index 000000000000..37364ee1f7bc
--- /dev/null
+++ b/include/dt-bindings/media/rockchip-cif.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (C) 2023 Michael Riesch <michael.riesch@wolfvision.net>
+ */
+
+#ifndef __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__
+#define __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__
+
+#define MEDIA_ROCKCHIP_CIF_DVP		0
+#define MEDIA_ROCKCHIP_CIF_MIPI		1
+
+#endif /* __DT_BINDINGS_MEDIA_ROCKCHIP_CIF_H__ */

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
