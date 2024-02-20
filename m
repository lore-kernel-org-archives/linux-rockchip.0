Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A085FC48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qEmUs4XLir6Uqc++G0vXAnZEudjrsixSwNuLzpFM9i0=; b=y8wx+OkyU2ow0CEq+V/LtcXMDN
	bsEZLPl9Uv2s4hjLMCVRPSPZNmutb2jJaV+ydg9Asev3X8oLez0QDHeF1Vi4jA7bXEMXAqt8Xqb7K
	rJjaMCPnejquYaeOGYbZYRwNvMzCGUqpMxSXx4gaeN1O9L2LE+7x9ASB/soNeL2o2PmqSJzKYwO8K
	6NkPFct8AaX0WTEjf46JHxrWtRynmQwq4nEjU0SgApK06JWadYpPFCKNfwIw1fef2vGVq/op1pgBj
	mDGooClIhvlB9uVHY+3HH+0nTVyd5qekCXO9a3UtEqnleW8G1anr1+olUx5TXd08wXdBp8ozYgkzh
	Weet5isg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMdc-0000000E3RP-0961;
	Tue, 20 Feb 2024 09:42:08 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMcC-0000000E230-35A6;
	Tue, 20 Feb 2024 09:40:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EN47JydzJbdy2duF7sLkmZW/pB2zGe30Z2UC5hp70tixoBiOxnuRqnu3JY/sW90zLyQdjQ86/s+cnKKcxz33UM5Eu+VBGLj/cVGq5NoV/YChppJOKkny10ebv6pWPTwtM/R+ZVr+Np3wjXfFSH6ykPD2NKrRCO0smvAm3pjtT53vDsKgDFalkcD9WM8EXHItTyiXDTN2lZwLT1lCeU2/kdwiWliJJaZPJ0IKag0sfuoGaatQ1WQ11C4rThJcXJeP4sMTP3+tiCoVetTcxefwAKr3508CWvsZccMWFAarZKMjyZ+UYB66QIDBjhYHJKn7f+Bgp9/OJ6hExDDLDlIV8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=svcCWEqKTdaOLj7tlS28oJTep61vaANv4eUsOEJStv0=;
 b=c97x8K6rlKmzzV+hqBwR/rxXtwkXczHiV5pXcL9Sq/Fl86k3POcJ+WBYI2GLjTFzJ6Z+hqlED1SXvHSopoNERLXZLvpKBWlscrny88oVfcLp/XlbO+g+B5lNAacPVZP9kSf59vVPWmj0qqZpLfbFO+XyXnJX2K6MlBuV5IuR2+6uXZECqlvaqn+EYRIsUPdfH3Qx9khxVDcEYvUQ4MmVdFs7xPnDcr9SRCaoL6vcEYkow3G0ZcFvMnWOuPqYnsY6zbPgLO/CPdRE7wvPVpr0zqnZ7CULKXbf3dsebE9foyqHgSSd2f00sIXy0qP7RVEkju5wM/i5G6V4gJZLl0SFBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svcCWEqKTdaOLj7tlS28oJTep61vaANv4eUsOEJStv0=;
 b=nBtK1IhDzsWkevBeMa1QI7aJBH1ciEIIGlR6d24I+QhovXVhK1/OExgsD1H8Mg/cBlr/ncLg3e6kshSlRL0bwod2ihcs7s8B65vp5MyPYmz8ulQjHDfVOyAYEezFe/l7eDWyr3gKGwgCD1NJwD/FcVEWazxmVVKIDEm76UKDjws=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:18 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:18 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:21 +0100
Subject: [PATCH 11/14] media: rockchip: cif: make scaler support variant
 specific
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-11-2680a1fa640b@wolfvision.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=2344;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=GB4WBeer0yHTCcaF3Iic4k4romkbTfe6QlJh2+daQM8=;
 b=SHZ3lQBcHxWUyTWCGHGvLKxIwBok1VxgYrIGqHAVLuRY1y4GwI0PJHWEm1IfQXJaDX0D9YZXe
 i1ZfP/BQngWCxEWU7qdqcFsiY/HgrxawsbIi6uch1Kk2YHQjeRK2TX7
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a234b08-1930-4e5d-6b24-08dc31f7f2fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b8JWzBPt2mAa2u+z/mMufM0zRJ7Py03CYd/Yc4MAHzTXnmziW3+ZjaFKfpY8HopE/A9TuoGJHz0jNwlkImv3R1o7onN2+NL+VTraO4q1KiumQM4oeoJqQDZ7Jy5dUK2b11tk+7mr6ey7dDHV2ZKFyV+HUyeW6xex61tpA6mUC4L1XjimlAXdX/R53Nhe60Ivlc0Kc6kpxaRE5rId3K0gAeJyV13WSGyeJgqWO8vkHhy99SmOxSfG5CgbUirhsOTBBFRFs6XGHk1vFJ1xP6JAA8+KcnoWxkCaWoJi3JpPgDqFu9jSfadVxNtnvDn21yhlmvyk9GyVrmPTKbfEY+synxcYkfx5IPNzwIod8PW9aPIcrhTZ9DuLL1pNC+cL2Y2bJFoXiqihzbNp3fNbZTuSAQhQexzVXrIBV/wMqGo6n1ev64wtiIfhA+Oxj+N3WrbhHt55l1YbpUL5rVKHE+LNDFnzZr7bgtbkjOai9NbJ1tAcViD7COvpvAj3PVXJ5qE87Fiyw5k8X0yebi7xhCxpODReg6yi7uHwkYdH+7f+DbxxyjrTotgPdSpJEXTia7bxDNtQN4jfNscDSGMzgPilhA4Xah6sg+MvIjOn5YBcNZbBoDs0PY/Uvwh9YXtnh+J4x0XMqJUci7JhaApRbeWohg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blpaT1B1TERZYXhDL2pJTXlOUG00b2hQeUtxQTNrNzNCRHdLdFlFN1E4dTk2?=
 =?utf-8?B?cmtZSDFhTm82Sm04T0RPbFlnM0lvS05kRHNpMlR3eVNncTAyTFk2T2paUlJz?=
 =?utf-8?B?dnhod3lpYStWR1dyTWdaOEVVa29OSUJ6aXBYclB1SVgwVWxyT2l0YXlSUnho?=
 =?utf-8?B?eEZQWU96WERFT1FYeU10cWUzWHFDVUdZM0NHU3RhWFNtdHB0aXNVbnVSbXQx?=
 =?utf-8?B?ZDBjNThYblM1NEpqTXdOTHdjK3BUYUQzS1lPM3hvRW14WXN4TUdScGJiZzdi?=
 =?utf-8?B?bVFTUlRHcVoyZG5icHNaUW9kbHJhRG9aRzcvZzRWSFl2czNxeG5BTUt1ZmFk?=
 =?utf-8?B?ZHBKc3Q0aWY4aEZPcVhxYTJjQUcxd0RBKys1S0lJVTVIVEdyc3dVcDhOdmdC?=
 =?utf-8?B?M1haZ3ErWHdVNzIxTU1wdEZNcnZCVVdLOHoxZTRoOWZTRjVOK0Rad21LVmlG?=
 =?utf-8?B?ZzFpZFZESjkvazRlTkh5L2ZCVFFjdENwZm9qU1BwOWlVTzhyRytXTDBsQnpK?=
 =?utf-8?B?c1BlNHdEQ3MwdGlzR0hpS1JmRkxQbkkzQVR0SFNZOGtwNW5TbTh4czQxUkNG?=
 =?utf-8?B?WlpNOUhRTXo1dTdhQ3F2QWNka0VyL1hDM0xNSDBXRURWNWZQaVk2eFd0WUZW?=
 =?utf-8?B?Mnd6RE8wdEExeFFhMThwOW5qU1VKdFR2WmdGMHN1VTI3Q1pTM3QwRGZOYm1Y?=
 =?utf-8?B?cnJXT2gwbmU5dnc0dEFlZ3FGT29nWlZod3p2L1kxVWxnWTJHbFhYZTIrZUNy?=
 =?utf-8?B?UmdpOGFUNFFTK0paK0xRTDQvcXpxWDA3cUVuT0Ztc3VtcFBnU014aThrTXU3?=
 =?utf-8?B?VTVFQUNuVmFRZ2k0UUJjM3NUdkZ0eDFRaDZSbFdhcE04MUIyZzJvL040aDkv?=
 =?utf-8?B?WnNPWFdDYURxdHhUYktVSVZKYmxFR0krS2pMRFpwT2ZaTW9xbFZLQ3JoanVn?=
 =?utf-8?B?SVF4dUZEbTdMYldkUDAvanZnMDRib3VSekluVlo0QXM4a1ZDRXFPaE4vN0Zl?=
 =?utf-8?B?UGhMY1c5b0puMm1nOURLYmVyZGlTUjJrdHczeWt2dnpOeUc2ajBWQjNGM09F?=
 =?utf-8?B?U1VENVdoQ0Njb3cwUFEwY1ptd25qZkc3c3Bpc21hamx5SzNVOFFZRXA0aWFl?=
 =?utf-8?B?UXpmWTNRWUFUKzduam1mSmt3b003a0xyYXg1VkV4cUthUElPREI0aUVtcVlt?=
 =?utf-8?B?eDZRVnBVNi81RjRtSjNwZzdaQVZnbXNDZ25OSzcxTzhIRGxNSmhNcXlFNTVy?=
 =?utf-8?B?YzdFb2I0V1RIR1pJL0lUaG1keW45V1RGRmRvSVVoTm5JYXNsNzR5K2p3WjNN?=
 =?utf-8?B?Tk55cTBnUVFoWVBHM1BZZjhsN3FNZGVEd3Vlc09oTWE3SEN3eExFczgvME02?=
 =?utf-8?B?azV6U0QzblJoVEpLQzNnSWVhWEJnN0NSQkRLVEpwbmxpTnVxRDNkL2Y0YStV?=
 =?utf-8?B?SXFaK2xNZ0NrcWFScW1LZG5EZ0RSUVpRQTNHeE0wS2dOZ2h3d1p5d1dvUjlI?=
 =?utf-8?B?N1NEZEt5NFgrS1Z2QTQ1bUlETmZ2MjgxTE1DSENJclhvZVRRNHlXOFdUYW1x?=
 =?utf-8?B?bVR3WTNMUHBESzgxeStzR2dlOCtBWTJRblIyTGtydVljN2VVa1UwY2FrRzN0?=
 =?utf-8?B?YnJPMEY5b3dEaUwyOVNRNXZrQXlFdlR0OEg3OVVNOXVPUW5wcEkwQjVSNWt4?=
 =?utf-8?B?Y0FWdGJzaGsya1grellVVmRPVjUzV0J4Uy9nckxBQisram8yWkNJMmptalYw?=
 =?utf-8?B?bjdIWlFBdFErRWhPUW9tZUtDVmNEUnV5VE0ybHl1SDgyemE1QmxRa2dlcm1q?=
 =?utf-8?B?aGI1N1NzMWU2M09XRnhaQ2RoTm1HN0VzZi80SEZVUlNKS3NxbCtpOXJmMmdT?=
 =?utf-8?B?ajN4YWxOeXhEU24zb2tqTmhxblNsS3BJYUs0UXBZZjh3L3Y0MVFnWmtXblcr?=
 =?utf-8?B?Y2s2b0pnenJ1SEhFR0lNNTJoRnd1VUJWTFl2bm03eHA3L3NwYThOMXp5Y3VM?=
 =?utf-8?B?bUJrVFdic1NXWDJiMENOUlpTWHBjWG9wRVlxbzRVVXFmNWlMK3VHOEtOblla?=
 =?utf-8?B?d0pnamVrZHg4L2VXTlBIUnAyYUhtcitCTWo4VFFucURyVmdZNjF6d2ExZTUx?=
 =?utf-8?B?MUYzeTNta0piTjVRbmY1cHAwYW5zUkloUHBmcC9WR1dtY2ZSUG91SmRPZmxu?=
 =?utf-8?B?a2c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a234b08-1930-4e5d-6b24-08dc31f7f2fd
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:18.3847
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wv2d/9lCYFsPXsR/cp93EfQWyJrewqqE0Tk7TR35KsNYshZq5YvHSH6YzoU/lQ2pB6znpVbhMMVPm7DaKd8xr9rT2fvhiZwBaV/472BMTeM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014041_252870_A8A3799B 
X-CRM114-Status: GOOD (  12.26  )
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

Not all variants of the Rockchip CIF feature a scaler unit. Add
variant specific Boolean variable to account for this.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/media/platform/rockchip/cif/cif-capture.c | 8 +++++---
 drivers/media/platform/rockchip/cif/cif-common.h  | 1 +
 drivers/media/platform/rockchip/cif/cif-dev.c     | 1 +
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/cif/cif-capture.c b/drivers/media/platform/rockchip/cif/cif-capture.c
index b26e6023c2b0..dd5c45f28cdd 100644
--- a/drivers/media/platform/rockchip/cif/cif-capture.c
+++ b/drivers/media/platform/rockchip/cif/cif-capture.c
@@ -365,9 +365,11 @@ static int cif_stream_start(struct cif_stream *stream)
 
 	cif_write(cif_dev, CIF_FRAME_STATUS, CIF_FRAME_STAT_CLS);
 	cif_write(cif_dev, CIF_INTSTAT, CIF_INTSTAT_CLS);
-	cif_write(cif_dev, CIF_SCL_CTRL, (fmt_type == CIF_FMT_TYPE_YUV) ?
-					 CIF_SCL_CTRL_ENABLE_YUV_16BIT_BYPASS :
-					 CIF_SCL_CTRL_ENABLE_RAW_16BIT_BYPASS);
+	if (cif_dev->match_data->has_scaler)
+		cif_write(cif_dev, CIF_SCL_CTRL,
+			  (fmt_type == CIF_FMT_TYPE_YUV) ?
+				  CIF_SCL_CTRL_ENABLE_YUV_16BIT_BYPASS :
+				  CIF_SCL_CTRL_ENABLE_RAW_16BIT_BYPASS);
 
 	ret = cif_init_buffers(stream);
 	if (ret)
diff --git a/drivers/media/platform/rockchip/cif/cif-common.h b/drivers/media/platform/rockchip/cif/cif-common.h
index 84a7545422e1..e5500705eee2 100644
--- a/drivers/media/platform/rockchip/cif/cif-common.h
+++ b/drivers/media/platform/rockchip/cif/cif-common.h
@@ -100,6 +100,7 @@ struct cif_match_data {
 	const struct cif_input_fmt *in_fmts;
 	int in_fmts_num;
 	void (*grf_dvp_setup)(struct cif_device *cif_dev);
+	bool has_scaler;
 };
 
 struct cif_device {
diff --git a/drivers/media/platform/rockchip/cif/cif-dev.c b/drivers/media/platform/rockchip/cif/cif-dev.c
index fb80e8f8dcab..e7b5ae5804ca 100644
--- a/drivers/media/platform/rockchip/cif/cif-dev.c
+++ b/drivers/media/platform/rockchip/cif/cif-dev.c
@@ -282,6 +282,7 @@ static const struct cif_match_data px30_cif_match_data = {
 	.clks_num = ARRAY_SIZE(px30_cif_clks),
 	.in_fmts = px30_in_fmts,
 	.in_fmts_num = ARRAY_SIZE(px30_in_fmts),
+	.has_scaler = true,
 };
 
 static const struct of_device_id cif_plat_of_match[] = {

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
