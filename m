Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A99EC48BC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gMw6372mtnmyEzoq6cguJp3g2Kpff7SibFCEAtXCjmc=; b=Qgi9MP3+kQ6r19Q0TYD1kMO/tH
	kaRqGQofuKlw6KF85iXyCYTUpiUc1RrlZbONETRscw0ZiOWpJSungYIHsr3iX7FRt/b7TCJJ3E6rd
	QdAnRSXUy7ofxeVBdQaG9Lpgf4v4Fwqg/x6X5aZJd2Lc2c1+fWIEKMWcSzvsxlKIiRCbV04a9X/5o
	3bkXluLbMOuqxha/8FrxSH8JDd+GXZIY6udqU0wVa9PFLnkr2d5eO2hiYZkAIaCumLOt97UNIOyKW
	v1r2R4W9xjGa1DafobfJUOOGM25EYLnGCzEMkYMLcLvXbZfJxrmYzAINZtcZk+03j4Kf0yjb+LpDm
	AFihmjYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMcQ-0000000E2kE-2OKi;
	Tue, 20 Feb 2024 09:40:54 +0000
Received: from mail-he1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:260f::700] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMbp-0000000E230-2WeC;
	Tue, 20 Feb 2024 09:40:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jIfSDxBzLOWCBtbDe6766k+Lx1pzXO5DIoXPBtRN85z0Yd+yOpXsvS2NYIpJHkm6F+NCtoy+89VVf3L5edVxWh6gt/mUG6FXz/8IMmWcGC6vgGYQujpdPIbkQL1a0RReOBYUtawomBZalJow/9cjKMriaTedcODhU4F572VCfeRUdjORIEZVRW8TqzR4JSJw/X7t0dCJqFLSyzHlBlbDU49tOdKxuPsLAKtgg25HEtx2wWJ2ax81iQKPZW8hAXGtQmgI1QTYwVreS/DHGRQ40MVzlb/OrjZTU1eBZ7IvvHhNGVLK0xhYkU0sW9G7R4oxD9eXUOGVciz/nAVJxo3foA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/b/scj7TDuFzyTgp2EBc4VrymUQdWCcY+njb3AuvFto=;
 b=H5+93IahsYnYUhNu1J8bNrydU6zVuNWXmfk8jZD0bjHrWORjZteoRLkqVn4BAJx9D/AOK2XRFEbO8gUcg7hLy25Ucsl/tpo5VwJ1doeLDd2dJLjpeP3HS3himhBcSMZGoQ9FkZYr4EA/8Wyb1WM5xIPwoKZquGwsl3OohjZGyic9j3Plq9hru0jFqkIJe0z74cQ6SVafQIf1GGCligrn8PrSYnNAj+4xqFYw/ePBvCVMklXGiNrkWhCSOs6n/CmlkGJ9f9bYS9lq9zX1EPxtfTe17wMByw9b2DEi3s1eIULkHYWI77epVI02ZHcUufsbeLXmmaHTAEvEDBqGRMA+Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/b/scj7TDuFzyTgp2EBc4VrymUQdWCcY+njb3AuvFto=;
 b=gNkBQ1sLVRkYTtYpV9rTWhcejoGydpnh/davBk3UN7nZNNkBTJ+jjeLXP+k/vzULqcJhvBw0YEQLVQ/u5/w/3w3xLZtXVvKH1jw6zGJwq4lDzw+Q1tkAr7N5gbYxf/ocLW8zxq8+7AxrAc+jxvZp9g8FZQhpz7KSI6cvYyMq+hM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6763.eurprd08.prod.outlook.com (2603:10a6:10:2af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:10 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:10 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:17 +0100
Subject: [PATCH 07/14] media: rockchip: cif: fix formatting of
 find_output_fmt
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-7-2680a1fa640b@wolfvision.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=875;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=4RJRvkCsCoRYEJQReuPytGN3PtzSzXkIRPi3skDWcRI=;
 b=tuK8T28ocU/S3zzvTdEb1nV7usNOYvL3eS7jNVu+V4rZuvU53nlAZTVqw+0Y27WifDdysyRs9
 98znDCkKbs6Db+1OyJZjD7BEQp/qmiI/vG1qTWuAcfMXi2a0wzfZEx7
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: 574213ca-a78e-4c77-2658-08dc31f7ee25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PKFtCwlr+g7RugIQO7I8cBe9wOVNVkjA9ztT0Inbug2QDaCziwEp04l9au9fjM1xShl77BCWFRkdX69wQxyXI6H3DXcCAZ7XdO2riHg2g0ZlerfCUE0ocoMc/veJt960ORtCaEMmZI9emKXX94nfGXWak0OXpgQ5cUJRiiQcCWi3C0nn4N3rioEJsSlAXR+JbRb+gi5/tTwfJO6yM8Xg1z80oOzXMHZ+RVfmEzQhA2Cxj+CdspUesy2GnSN7e0KmeDddKik4m768rUS1tY1GuYPiYukLBQF2b/Pb146IT9OVRHfn/5+bbF6/uXQ16KhpzrHyhdItA0J/f8D3yUZjqRE29AmXO+MZ5rJH9SjOwHwVpib/2DEHl7bTxgkpiii+zswo7hwVlo3mvZUxGzopgg/UIFpatrdFdxOzrKwH90XVIhd0SyuCnJ37DpckGUAc2J2t2HX3wdDa8mHuSzmgDYgPWqat9gD8WLGzb8Cfha7A9DXiPFgE45Jguw5BKrPOjaOdSnmlN3AhnSkO/9WZoL5EtSWHSsTjsd0KWyZU+7KJ1zeRetg0QzWt5/Ot6pDePxKVvVBz+qvESHqirjTjG4CukBTg+qm5kDkRHRmt9rYXxkZKqQb86hFnVSSc4GfHEEybeSF4F0jvTnzPvgLa3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rkt3S0pGMFdPK1VCU0J4NjhGZTQrbisycTJJRkYya1U3bHVyamYvYlltbUdh?=
 =?utf-8?B?WG84ZUlYTkVWL2xraTFwQjZSVGcwR3VxSkw0NC9FNzBMWmZPTDAvNDZWTlY1?=
 =?utf-8?B?UEVSd0JGcmZYQjh1MnptaUNJcDFITDQ4SUNZeWhLNkdVRG5ESjI4NENEeXI4?=
 =?utf-8?B?SlBQY2ZUdGxHb1AwOTBEYldpbHgzVTNMM3NqTXZiWXB6QWN6M1lxSEFtTlVV?=
 =?utf-8?B?NVZ5dm03OEJUNlhkUmFRWkFEUmVoMU5TcVVmb3RuZFdrU0hYOUpqb3cvb0J2?=
 =?utf-8?B?YnlEWllxSXNvUVRKVUhmVWszZjR3bUlLdUdwQ1RrMC9OMDZNbFdQZVVxSzB4?=
 =?utf-8?B?N2V5cEUxOGdiWUg4WldvdXd6c3c2Sk9tSHRBQWtTSEVEeWR4WTdaaitjTFQ5?=
 =?utf-8?B?c1pCQlJ4OHkycHdOVldyaGRMUFhrUGoyNEJ0enJybWZKN0p1MVkyZHB4Q0cz?=
 =?utf-8?B?NkNMSXpXa29FMjRIUk5sb2ZXTzgyNUgrcTczVk01TzJDaU84UXdRS1gydUdF?=
 =?utf-8?B?NlZqZnphVGthOS9uZlBDOVJZdjZCTmlHdjFjdkpVVkpYK21lUDJTS1dPTHdH?=
 =?utf-8?B?WEhCbUdPWXNMY2Y0NW05MHpNQk5LSHVqeHk0WFNobjRqOTdOTXZIYi9qc0Jx?=
 =?utf-8?B?V2htZEdrMXhMOTY1clhEQkY0c0F6ZUJ4S3Z2eFpuWGYzWE1TMHg2cWd5SHFQ?=
 =?utf-8?B?dTh2VUJVc2ozcmhjSkNsMGlZT1N5ZHo5cmVQU201Y1owQ2lTZWxQeEQyelpq?=
 =?utf-8?B?K0lidFMzR1RteUQxSXdmV2todFR0UHViUkI0Y2p3WEVLazgwOHVETjFLYlpr?=
 =?utf-8?B?VGYrZndzNVJXM3kwT3djRWJvVGxKdVk4OTRIaHN3K0RCYUg5WlFhTVpZSnlU?=
 =?utf-8?B?bG1oK0pVTENLWXRaK3lqb1J6NVZjUFA3Ymd5dkRSRFZyYjg3OCsrT0NMUG9h?=
 =?utf-8?B?dWQ3ZTFkUHd4UkE4ekhYNWlENVhTT09vMXllRyszTVBKa0lIQitTT2YvTkxC?=
 =?utf-8?B?Wlo5R0piTXhSZ2M2Z1dabk1QQ2l2dUlwOGREMXBqNHF4aC9SOS90cDRadENQ?=
 =?utf-8?B?SnVRT0s2cDk1V0xCNURiRTFTNDFxWjVQbXBJVTNKbTFqUkxNbkJhbzZzOU5W?=
 =?utf-8?B?WUpjQm85SjhvSm4rZTFtcXhybkZJbkd2dnBSUU5wenR2YmpmVGlTZzJiMUgv?=
 =?utf-8?B?ejVOUzE0MStCWTlCYmZ2bXFtSmUySGxzeURRSUczUEpvSTlhWXhnS1o4UUFB?=
 =?utf-8?B?RzEyN2ZSNDRsWkZScnM5RnhMbktrdmt0ZkhxN2hEYTdRdmNaVEU5R2prWG80?=
 =?utf-8?B?a0RtWkxJREtxblM2S2lZQkpKWXFRbUlYYXJJSmtnMWgrTGlPZ2JVdWtNRkdK?=
 =?utf-8?B?QU5keG50blBVK3RHWUlzTVBiZjREbjZtb3RYOEc3dnF1b214azBHWlVtdjBa?=
 =?utf-8?B?V2N3MVE1Sks5Q0pSaG5YVWVmTXpQNnZabjNUSW1kMDZxQzRKelJxUkVRWWFS?=
 =?utf-8?B?eENHRC9VbzhGK1gwc093RDRWeldFYTlqbWVQd1NGdnlQQU1aWXhXYys2dHZm?=
 =?utf-8?B?R3ZLdnJySWpodThlRVZqRTZ1Um8zZ0VJclNRc01pMlR6RDFlZ2pYNWpqREp6?=
 =?utf-8?B?TGxjVzZndUM0YjZVbmZBUlk1SlFmYnh5aXNkNDVvUjFna0JMbC9IRCtWNmUw?=
 =?utf-8?B?cHVmY01OWW9zWXgybnNjY2xTSHB6bXc5eTE5ZjZVTTZpM05KYzFtcnhEY0FG?=
 =?utf-8?B?djNpUHRxRDFxenpGZWM2VnhuOTF0RWV5VGpzTm5xcmtXbVdqb2g2bEtkL0t1?=
 =?utf-8?B?a3huNnc2dU92M2l3WnF4L3plNGcyOUpNYndsb1BydE5UR3RTaW93MnpNZktx?=
 =?utf-8?B?M3Urc001UElLN21scGFGSmdxRmhITENrZVVQMjZqeWZ1NzJGNVV2RmM2ak15?=
 =?utf-8?B?YmxCYWZOQlJwNG41RkNGK2JGeG8xY2JVQ2tmemdrQjV5c3dPWEQrUUhDS1Fk?=
 =?utf-8?B?VzlMRzkzOVAzTVJKcS9jTEYreG94UzNwRkJYWThhMUlsaWh3MGxzbVZSYXp3?=
 =?utf-8?B?endTWmZvOGRUNFlaQTdOdDYybUpBbTAxMVFMM1dlUXcyYWUvd28ydS9QZGJU?=
 =?utf-8?B?RFlHdDhNdHI2Tk1wdXM5aE5GOXRSdzgwakg5WmlqYnhnZ1NSYjVEWU44LzZ5?=
 =?utf-8?B?cVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 574213ca-a78e-4c77-2658-08dc31f7ee25
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:10.2574
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DVmv5tx2iGPh9/TLxO6rPB1H8k5Zvgy71YvA75tqKHfAaLpIwLuvAYRekz48YlT4rQIE0U187FyTnvDhJiaQ3xGkg50carO27sdmSwYDkyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6763
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014017_730217_3034A6A2 
X-CRM114-Status: UNSURE (   9.43  )
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

Fix formatting according to coding conventions. No functional change.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/media/platform/rockchip/cif/cif-capture.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/cif/cif-capture.c b/drivers/media/platform/rockchip/cif/cif-capture.c
index 2c7716684de0..c80a52028a21 100644
--- a/drivers/media/platform/rockchip/cif/cif-capture.c
+++ b/drivers/media/platform/rockchip/cif/cif-capture.c
@@ -273,8 +273,8 @@ cif_input_fmt *get_input_fmt(struct v4l2_subdev *sd)
 	return NULL;
 }
 
-static struct
-cif_output_fmt *find_output_fmt(struct cif_stream *stream, u32 pixelfmt)
+static struct cif_output_fmt *find_output_fmt(struct cif_stream *stream,
+					      u32 pixelfmt)
 {
 	struct cif_output_fmt *fmt;
 	u32 i;

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
