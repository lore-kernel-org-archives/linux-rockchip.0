Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB735E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 16:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qC0SkfQczUk6dlgrpZMpqCfBG6rqySW7LGP/aKrjR+U=; b=jxQ+qHa9chx1KH
	AZZn9vyPX9Q2zGfnBCACFB/Furl1Xjv4dxbbMZOMdDoVUZ9WlQpuo6CLXBfPmcT3WwXqzfPH3t0My
	SFf7KrDFGaQfT8h7gBEfTAUi9/WGZ7iL/FAk6yrsofAIQ2ZTuS/UiQ2ZLuEMGr/FUwWR05sxL1Fbc
	3Hsvs38caLV3MeAtT7Bi+QG0cYbVuVWaRpZnILlKT8GzhG/9/ZMdlVZXkhFbIr1qbjblSmj/p1O2p
	bL/aLD52bTEco/b91HaXxr/FXo43hEVQyNM7C11v0sqg1mYLpsvUPUGTxCK3O5kuk3+fIKUcSiyGb
	fo9I9qdueVblbAJ28fkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNaNt-0000000EACT-0dRg;
	Tue, 17 Dec 2024 16:25:21 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNZuw-0000000E2po-1Iwr;
	Tue, 17 Dec 2024 15:55:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lqvZIFR6M++5CyDhub1V16ihkXERokqfRApjqLgvsQxKVyijLZcIasZZXyWeItT0F2JAR4j+nXnuXsHXiOziSJUtedD7nFMhGq+HLwsQ4We1y+YJ4ss5ulXMHsfoLtMoE9RGT+pA9ER+Jady2FtL+bZiBAXA5FFu77EtKD1idCJU1MXbbw3swBKuPAWRlrql6XlCdEZvr92F32U8VYOzW8+vE+17SyIgx/9SysowoSMBfCnijzbfwf7p5XxgI3OF80nuZIayGdv6jGCtyEKy4RijQe6vnQcSXqxVQjOgFxtWxWarqFLLANPtWO+punce3pEN7OgHlYGggau7Q41KDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qLUB6MPewbyNQIpMjX0irXUit4lYkxxXdSgzqb+dSWE=;
 b=CujlkRcCdte+rV4onyfXNg5FtcP3CP/DCnzTvMDpQKAu4UCPtlNHXa1achFfkfn1Scyk1hXInV8+zQHO2wbDU75x+Tf8ZxBIQtCnUn266gf99wBkjm5ySVcgxP6h5WUa1jXjsiv+T/quGraw+E94nwSg675a0lZbkW4ehgluFie9W2bQ8ckhKix37376XIJ6y5XsnDQXH3pinZ+lJMyy+NLGtvvG2eYsd8nK9ZOSfxFQBqazSN8Lwqc/SrDzWBsR5+ZvuGrBC8DvmSmYRbwQgOCpuWUI6mUqPHYgizAr4G/PPv1Kxxriv2TqeGpXc3V84981DkMDeZ2I10RXNDDWHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLUB6MPewbyNQIpMjX0irXUit4lYkxxXdSgzqb+dSWE=;
 b=nh5B+McfXeWnl8mqVT9jzwwb4l4/xyqoouuKPdkCLsQ8AQdu82OwIgsyqlzgK1XWu97wL1kGBugqsJRAYu6iOb843uMvgok/RoFmHP5h2KHEtwlgJKPtTKAsARU5aW/rU7LoMW3un1IggzQguZUTbSvE+y9pCcCDVT3al55Zjmo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB10149.eurprd08.prod.outlook.com (2603:10a6:20b:63f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 15:55:20 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 15:55:20 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v2 0/6] media: rockchip: add a driver for the rockchip
 camera interface (cif)
Date: Tue, 17 Dec 2024 16:55:12 +0100
Message-Id: <20241217-v6-8-topic-rk3568-vicap-v2-0-b1d488fcc0d3@wolfvision.net>
X-B4-Tracking: v=1; b=H4sIAOCeYWcC/4WPQQ7CIBREr2JY+w1QSlpX3sN0ARTkR4UGGtQ0v
 bu0HsDlm8lkZhaSbUKbyfmwkGQLZoyhAj8eiPEq3CzgWJlwygXlnEKR0MEcJzSQ7k0rOyho1AS
 6143re946IUhNa5Ut6KSC8Vv+af2IUFizeVOyDt9763Wo7DHPMX32EYVt6v++woAClx1VzCkpq
 L684sP9DpyCncmwrusXkBIp7N8AAAA=
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 Mehdi Djait <mehdi.djait@bootlin.com>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734450919; l=6549;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=84dAzvqqi6ZbaS/ArkaMH7z+FZ528a0O4/ApO7qsY2M=;
 b=c/3NKPXuFcBnl/xU/u+fcfJCPSRrWqkavGYpwxzwCO/wSFWeQv4xPnuSgfZcRDib7EE+TneqK
 wkESEkTBcdSD3w2rWfexrbSghsH3yYNjqBm+XeAuy5EbOliFNTuHjnJ
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR08CA0244.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::17) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB10149:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e3fc888-e4da-440e-90ee-08dd1eb335d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|52116014|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UldjWVRuT25lUEszR2RMcUYwUzNOandodjdNYmpvV3JLc2t6em80SWFBQ29l?=
 =?utf-8?B?dDV6Y2V2b2gyTGoyTUsxblljcDFaMVBJL2RnbGZHREQyTlJJR0Z2MGd4eHZO?=
 =?utf-8?B?RU0xNlhVQXdQdnczcE1ER3htRU5IWDZ6VzQvdGpNUHRIaVJzengwVzZuRFVP?=
 =?utf-8?B?ekd4V1JvQWZtb1lGNGNSbE1HcUNHSWhvejFQK3VCZFIrRHB2cVJWU2hYc1do?=
 =?utf-8?B?dWhWcUtOMWRSL3Z3Z1dCUm1sbFp2dExIUFBvc1lrYVM0WjFJVGZudllmMnRC?=
 =?utf-8?B?bFVFNmNUZTZieXdTRUZnZjVqSGZ6RmMxdC9BZmhqUTAyRFp4SXUzUXAyTy9W?=
 =?utf-8?B?cFRvdFVhNC9yVk4wV0xhS01tMXJFdVBNOWYyUkVabmlaSnJSMzhCL0RZWVBC?=
 =?utf-8?B?NzY0VytDc0o1emwrUng3NmdvRkR5Vkp4QmlHcndKREthbk9BQ2ZmTXVvdlEv?=
 =?utf-8?B?UGpNYjNYR05JV29IWHkyY1czcWk1WXhyNjRaZHpIbXYrMy9BTE8yQnBHcmxQ?=
 =?utf-8?B?M0pNNDZqV0VtSU9RN0huSUZmNC96Q2ZaUHpWOEZiZ2h0UEFHNEw0cmsyeHA2?=
 =?utf-8?B?eDl1clVIaWZxQjlIVjJyYjJYQVpQVys3dkl1NkxrcUJIZjlqNHdjNDZCcXEw?=
 =?utf-8?B?aWtFY29IOERrUndrU1R2THdBSlBlWlROclQxVTRGOWRVUnhwOFBydTJsWitp?=
 =?utf-8?B?QWNRUkdJWTRvYXh6U1h0Qmo1VVd0Y0pURkxLUUlJWUh4TDNkRmFPay9aaGhm?=
 =?utf-8?B?c0Z1UElxZXVoblJYakN5blZmQ1FpdXU0eUMvVnJWa2taRzRkdE9GRXBPaFBD?=
 =?utf-8?B?a2ZSTEpGYVhwWE9abkZWOE4wT2RXVE4zNUY5N3k1K3pHQldObmxGMDNFVzNF?=
 =?utf-8?B?aTV4VnJMWlBnT3o5RlZSZzFKZEVrSlpIVWl6TTlkMWNJa3lJdHBtOVcxWE1k?=
 =?utf-8?B?a25hYS9kb0szQzZQRzZodkpXbU8yZVdWWXpmby9MeHB5R3ZhTTdKU1drQ1hN?=
 =?utf-8?B?ZldFU1JGSi9lakdEOGo1TW1IVCtnOXlvV2pRb3hHQWc4NEQyOGU1MzZYVDRL?=
 =?utf-8?B?RjE3eG1NeWtOWEV5NkdPemhkVTZqd2VSMkNiYUpWb2pYZmNlbzAwcHVhN1k4?=
 =?utf-8?B?bjdzTTBsWFdHUTgwTzJsQ3hwUnhCVEo4TzlrKzRRcEwvV2JTTFYzbHI4VWJE?=
 =?utf-8?B?QXdQNVVVamcvRnZRNEhKRi95MXpzTGkwTDdsUGdiMVRTclkxR1RTeDBJcnNN?=
 =?utf-8?B?UG1tUzRwOCtQdTRyT3owcW5lcGhKOXkza3NOQVJxT0RWR3FHSjBvWHBocEJK?=
 =?utf-8?B?M1B1YUJSQVFmZTRYNVNhcEtyOE1PZ0o3TjJ5VkZOeWZZSmUxTDRTNVVDL1FG?=
 =?utf-8?B?UFR3cXBTOWtvcHhkZHdGUlVYOFYrbWFvN1VoeVRkZzQ2dElvWEszaVgzQi9Q?=
 =?utf-8?B?UjVvZ1ZVam1QS0VuenBLRlgxMUdpRmZ3VnhyREp5VEh4TUQ0bjhrOFkxNXd6?=
 =?utf-8?B?U1ROQVgxZXpURlpPc0hyeHJhaHE2cjNodG91NVJuV0oyZWZEa0Y5YWEvZjNp?=
 =?utf-8?B?YlYyR2o4WjBtbzV6Y1JWS3BuaFJ1enp2c2l2YzRHbEQ1QmN6S1hXdE5PSjBG?=
 =?utf-8?B?b1VBR1VpRTRHQ2s1enVZalMwTmRsMzZDcWM3by81RHlGMVJ5b0hiL1lZdlpO?=
 =?utf-8?B?Q2xzb0dleUMxZWlub2d4TGtrendiSjM4MjYzZHpHNFZ5TnlhVHBFMjFmQTF2?=
 =?utf-8?B?bE1IVVlzbTZ0Y0tpejhld2krdEgremZ4aUdFMjlOSnY2c0NSN21kOGRjd3JQ?=
 =?utf-8?B?aWovMFl5SFRqZGJTdmw2STNwVmwvb0FIZWdQUVhLUm16L2F5MXUwMW93N0J5?=
 =?utf-8?B?aWNnbGZCVXpEd2lad0RsMXgyUXNHQkZabUh3czZTcjBtMklVM3MrTjRncVJV?=
 =?utf-8?B?WXVsZlhpN1VlNHlkNEQvN0hRdzI5dml5U21kZU11ZVU3YzNBeXc0Y1FLL2lU?=
 =?utf-8?B?N3VvbDltMDB3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(52116014)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXRDazkxQ0FZRmRxQUhiTExuNVJpZjRYUkRyZ2YzQXNXditGTjhLQzRka2ht?=
 =?utf-8?B?Y0JZMTNTbnBSWXgyOGFkVmVtbUR5Yys3R2prcXNJaDZUZFl5eWRBbTQ1M2Fo?=
 =?utf-8?B?UXI3cDlUZ1JhQ2RIb0ZWeDFoZzZaUEtJczZnZUJhUk1QV0RqQmt4NXBnQ3h4?=
 =?utf-8?B?M1gvaWhLdGdzZy9laHdhcGVsZkdueUlGSDZQRWtuL0Z4ZitZYW95V1NVZWd0?=
 =?utf-8?B?cWhzdVNXS3V4TE5YaFc4UlNTcFQ1WHlJazh6bmZLNTQvRWxNMHhCK050T1JN?=
 =?utf-8?B?NENKU0lrRTJJQm40ZDVsK20vSzlaOXlydm1XQ1d1Y1JBTnBHRVhacHM5b1d5?=
 =?utf-8?B?NEZORmg4OWZUNlg3cjAzL254N1NON3FqWDJJYXBCQkF5VjRPbnNqMTBpRWhy?=
 =?utf-8?B?TzY2ZXM3WS9WN2ZjUytndmJJY0YvNHdJQVlNVU5RN1B6T0ZVSFdNRHRndVZJ?=
 =?utf-8?B?V0FMazA4anZXNkFwME0wYzBmNmVxN2xMMmhEZmhNS29yd3JNa0c0UCt1eCtJ?=
 =?utf-8?B?YWZsV3BsaXRSenk4RXh0MFZHaTRTWjZRRWxGbVB1T05vOTU3QjlDNXVCbXRY?=
 =?utf-8?B?bHVlZUVBcWxJRkVQZWdacGRBQWYyTmI0WjE4RlpUc1lTcUhacDZ4Z2tLclRu?=
 =?utf-8?B?bXZWRnlJMVV6WXhXbHhraDY5dG1nbjZBTFhjVTVvclUvUnFtQUZNRHlBeGpT?=
 =?utf-8?B?NzVrSWJ2MUljNkFlU3BBaE5XdEtlT0oydDJzVVZ0WlQ2ZE9WbXJycGRjcFo2?=
 =?utf-8?B?ZmVHOGF0cmFINmJ4N0VDeVNFUHliTXR5a2M4Y1VwSVdnYXNyY2lycjNRUjEx?=
 =?utf-8?B?NHA1Z25nN2o3eHMrbkFoSEFsWENDQUtqNW9nN2pXNEVLaDAyeFZuVzJCaDI4?=
 =?utf-8?B?cXA2bjNUY3RnNERWZ3JZUnN1eER6eGpGbmJybUFpNkdFMVNxMDc0Y1dNTDhT?=
 =?utf-8?B?TnRpSGJpNXJaQTVxUms0T1dTMHZSTFZMUFo2cFp1cURSWnN1YmxvMDJCa3Bq?=
 =?utf-8?B?ZVRLNWFMcUtWZFpGL0hMeDFuT2FUSXNRZnFkRnRYY1hXZk1iMGIvdGlkaGdP?=
 =?utf-8?B?QktnVjNyWFRKZWRJTEZjbzQ2eFpHSStycnIvTWNwbmJINkgvc2JpYUxrdnQv?=
 =?utf-8?B?T3d0MFBQS0tieEdVd05ZRTNUU1N3d21HWWhpdWJoKzlkK1N1c2lhQzZ1bGN4?=
 =?utf-8?B?WkUvelpubEpOV1FOcDZxZU9Jc1oveDdNTnA0dXN1UkN1aHduS1VtSDVGKzll?=
 =?utf-8?B?QnFNeWFuQmtFaWVORzBqYnVWVE9ETExiSXgvY1huLzZJQVNwQWw1Ykp3UCtL?=
 =?utf-8?B?QkpZelBPb2xhdUVCQVdjWDhWT1ptQm5NcXcyL2ZlZHUrMXMwOG4rV2hVdlc0?=
 =?utf-8?B?Vnl4T1JXUStxTXhLVEhHNGRJbkJWWWlxTzBOWjl2UWQ2c0xwbmlLTldZdWRD?=
 =?utf-8?B?NmJZcEZnZDhoYktOeDhaUGUvcFk5N2NZMjROUVBNTEJlNTQvWkF3MVg4QVhU?=
 =?utf-8?B?Z2cxRHozQVFGWUFlY3JYUXVGMERlR09aeklJOS85NllpWXFuVS9JaHhnalhi?=
 =?utf-8?B?bE91S1oveEdrQ2pMOGdpRjRIQ3NYcG9vcXBXSTA0MU02QTRNQjVDY2JhS01U?=
 =?utf-8?B?MXlWeUtxRlp5eDROUUdLbTNlOE5aYTB4VzR5OTJWdDZ0Slh5NndLOW0zS2lH?=
 =?utf-8?B?L2l2eHZpNENFS0MwZjJRQUN2U042aURXSTBLMml6ZU42ek9NbklmNVJMRUZG?=
 =?utf-8?B?TTNTcGp2VXFHWEZCY3pxUG1mRzR4YjUyTjFNUmdmWlNWY0lvbTdVbUJNRy9n?=
 =?utf-8?B?WkJJV3RSaXJ5MVpPd0hvc3pSZWs4Y1p4V0RxYk1xemlyV29TZFZhVVdvQXlk?=
 =?utf-8?B?WC9HK1JVcnVEdTZYU1hSUVZXRUgrK3piM0lIZ3JUQXA1azlIR2h1dXV0OUxU?=
 =?utf-8?B?Sk56TkkzeHg5YyswWUVGYWduUE9BUFByeVhUdlE3S210V2d1R3lxRWRZMisx?=
 =?utf-8?B?V3dMME50V0NJaWltZGx3Ty9DV3pHRmIrZVJ1anpRVTJVMlpxY2NiSGxJcTBm?=
 =?utf-8?B?a0pKaEhIUEJwVjAzZ2J0V1VSNUFrYlhFTnJMNFFPZ1Z3U0J0bU01MExvVTIr?=
 =?utf-8?B?dU9yQnRaNlBpS2hscVJiUTBJd0ViQjNXZE4yMjduWHkrZk5TR2hQSy8veC95?=
 =?utf-8?B?cWc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e3fc888-e4da-440e-90ee-08dd1eb335d3
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 15:55:20.8575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rYL9nqOnUdDEH1ppiZjL6dR7a9+/5AipVgAL11mJcSffll0ZU1Z0WzS/ZXxLkPkkTbch97fB4yPJNiOJ4CUCptJIFhZlUf+1iprEzmgJ8Ao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_075526_513018_EFBC7BFA 
X-CRM114-Status: GOOD (  14.41  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGFiaWRlcmUsCgpUTDtEUjoKClRoaXMgc2VyaWVzIGludHJvZHVjZXMgc3VwcG9ydCBmb3IgdGhl
IFJvY2tjaGlwIENhbWVyYSBJbnRlcmZhY2UgKENJRiksCndoaWNoIGNhbiBiZSBmb3VuZCAoaW4g
dGhlIGZvcm0gb2YgdmFyaWFudHMgdGhhdCBkaWZmZXIgc2lnbmlmaWNhbnRseSkgaW4KZGlmZmVy
ZW50IFJvY2tjaGlwIFNvQ3MgaW4gZ2VuZXJhbCwgYW5kIGZvciB0aGUgUm9ja2NoaXAgUkszNTY4
IFZpZGVvCkNhcHR1cmUgKFZJQ0FQKSB2YXJpYW50IGluIHBhcnRpY3VsYXIuCgpUaGUgcGF0Y2hl
cyBhcmUgZnVuY3Rpb25hbCBhbmQgaGF2ZSBiZWVuIHRlc3RlZCBzdWNjZXNzZnVsbHkgb24gYQpj
dXN0b20gUkszNTY4IGJvYXJkIGluY2x1ZGluZyB0aGUgSVRFIFRlY2guIElUNjgwMSBIRE1JIHJl
Y2VpdmVyIGFzCmF0dGFjaGVkIHN1YmRldmljZS4gVGhlIElUNjgwMSBkcml2ZXIgc3RpbGwgbmVl
ZHMgc29tZSBsb3ZpbmcgY2FyZSBidXQKc2hhbGwgYmUgc3VibWl0dGVkIGFzIHdlbGwgYXQgc29t
ZSBwb2ludC4KClRoZSBsb25nIHN0b3J5IChnYXRoZXIgJ3JvdW5kIGNoaWxkcmVuKToKClRoZSBS
b2NrY2hpcCBDYW1lcmEgSW50ZXJmYWNlIChDSUYpIGlzIGZlYXR1cmVkIGluIG1hbnkgUm9ja2No
aXAgU29DcwppbiBkaWZmZXJlbnQgdmFyaWF0aW9ucy4gRm9yIGV4YW1wbGUsIHRoZSBQWDMwIFZp
ZGVvIElucHV0IFByb2Nlc3NvciAoVklQKQppcyBhYmxlIHRvIHJlY2VpdmUgdmlkZW8gZGF0YSB2
aWEgdGhlIERpZ2l0YWwgVmlkZW8gUG9ydCAoRFZQLCBhIHBhcmFsbGVsCmRhdGEgaW50ZXJmYWNl
IGFuZCB0cmFuc2ZlciBpdCBpbnRvIHN5c3RlbSBtZW1vcnkgdXNpbmcgYSBkb3VibGUtYnVmZmVy
aW5nCm1lY2hhbmlzbSBjYWxsZWQgcGluZy1wb25nIG1vZGUuIFRoZSBSSzM1NjggVmlkZW8gQ2Fw
dHVyZSAoVklDQVApIHVuaXQsCm9uIHRoZSBvdGhlciBoYW5kLCBmZWF0dXJlcyBhIERWUCBhbmQg
YSBNSVBJIENTSS0yIHJlY2VpdmVyIHRoYXQgY2FuCnJlY2VpdmUgdmlkZW8gZGF0YSBpbmRlcGVu
ZGVudGx5IChib3RoIHVzaW5nIHRoZSBwaW5nLXBvbmcgc2NoZW1lKS4KVGhlIGRpZmZlcmVudCB2
YXJpYW50cyBtYXkgaGF2ZSBhZGRpdGlvbmFsIGZlYXR1cmVzLCBzdWNoIGFzIHNjYWxpbmcKYW5k
L29yIGNyb3BwaW5nLgpGaW5hbGx5LCB0aGUgUkszNTg4IFZJQ0FQIHVuaXQgY29uc3RpdHV0ZXMg
YW4gZXNzZW50aWFsIHBpZWNlIG9mIHRoZSBjYW1lcmEKaW50ZXJmYWNlIHdpdGggb25lIERWUCwg
c2l4IE1JUEkgQ1NJLTIgcmVjZWl2ZXJzLCBzY2FsZS9jcm9wIHVuaXRzLCBhbmQKZGlmZmVyZW50
IGRhdGEgcGF0aCBtdWx0aXBsZXhlcnMgKHRvIHN5c3RlbSBtZW1vcnksIHRvIElTUCwgLi4uKS4K
ClRoaXMgc3VibWlzc2lvbiBiYXNlcyBvbiB0aGUgd29yayBvZiBzZXZlcmFsIEJvb3RsaW4gZGV2
ZWxvcGVycyB3aG8gaGF2ZQpiZWVuIHRpcmVsZXNzbHkgc3VibWl0dGluZyBzdXBwb3J0IGZvciB0
aGUgUFgzMCBWaWRlbyBJbnB1dCBQcm9jZXNzb3IgKFZJUCkKYmxvY2sgZm9yIGluY2x1c2lvbiBp
biBtYWlubGluZS4gVGhpcyBwcm9jZXNzIGhhcyBiZWVuIGdvaW5nIG9uIGZvciBzZXZlcmFsCnll
YXJzIG5vdywgd2l0aCBNYXhpbWUgQ2hldmFsbGllciB3b3JraW5nIG9uIHRoZSB0b3BpYyB1cCB0
byB2NSBbMF0gYW5kCk1laGRpIERqYWl0IHRha2luZyBvdmVyIHVudGlsIHYxMyBbMV0uCkluIHRo
ZSByZXZpZXcgZmVlZGJhY2sgb24gdjEzIGEgbWFqb3IgcmV3b3JrIHdpdGggYSBtZWRpYSBjb250
cm9sbGVyCmNlbnRyaWMgZHJpdmVyIGFzIGEgZ29hbCB3YXMgcmVxdWVzdGVkLiBUaGlzIG1vdGl2
YXRlZCBtZSB0byB0YWtlIG92ZXIKKHdpdGggbm8gY2x1ZSBhYm91dCB0aGUgTUMgZnJhbWV3b3Jr
IHdoYXRzb2V2ZXIsIHRob3VnaCkuCgpJIGRlY2lkZWQgdG8gbWVyZ2UgTWVoZGkncyB2MTMgd2l0
aCBteSB2MSBvZiB0aGUgUkszNTY4IFZJQ0FQIHN1cHBvcnQgWzJdCmFuZCByZWZhY3RvciB0aGUg
d2hvbGUgdGhpbmcuIFRoZSByZXN1bHRpbmcgdjIgb2YgdGhlIHNlcmllcyBub3cgYWRkcyBhCmJh
c2ljIG1lZGlhIGNvbnRyb2xsZXIgY2VudHJpYyBWNEwyIGRyaXZlciBmb3IgdGhlIFJvY2tjaGlw
IENJRiB3aXRoCiAtIHN1cHBvcnQgZm9yIHRoZSBQWDMwIFZJUCAobm90IHRlc3RlZCwgdGhvdWdo
LCBkdWUgdG8gdGhlIGxhY2sgb2YgSFcpCiAtIHN1cHBvcnQgZm9yIHRoZSBSSzM1NjggVklDQVAg
RFZQCiAtIGFic3RyYWN0aW9uIGZvciB0aGUgcGluZy1wb25nIHNjaGVtZSB0byBhbGxvdyBmb3Ig
ZnV0dXJlIGV4dGVuc2lvbnMgCgpIb3dldmVyLCBzZXZlcmFsIGZlYXR1cmVzIGFyZSBub3QgeWV0
IGFkZHJlc3NlZCwgc3VjaCBhcwogLSBzdXBwb3J0IGZvciB0aGUgUkszNTY4IE1JUEkgQ1NJLTIg
cmVjZWl2ZXIKIC0gc3VwcG9ydCBmb3IgdGhlIFJLMzU4OCB2YXJpYW50CiAtIHN1cHBvcnQgZm9y
IHRoZSBzY2FsaW5nL2Nyb3BwaW5nIHVuaXRzIHRoYXQgY2FuIGJlIGZvdW5kIGluIHNvbWUKICAg
dmFyaWFudHMKIC0gc3VwcG9ydCBmb3IgY2FwdHVyaW5nIGRpZmZlcmVudCB2aXJ0dWFsIGNoYW5u
ZWxzICh1cCB0byBmb3VyIElEcwogICBwb3NzaWJsZSkKVGhpcyBuZWVkcyB0byBiZSBpbiB0aGUg
c2NvcGUgb2YgZnV0dXJlIHdvcmsuCgpGaW5hbGx5LCBwbGVhc2UgZm9yZ2l2ZSBtZSBpZiBJIGZv
cmdvdCB0byBhZGRyZXNzIHJldmlld2VyIGNvbW1lbnRzIGZyb20KdGhlIHByZXZpb3VzIGl0ZXJh
dGlvbnMuIEJldHdlZW4gdjEgYW5kIHYxMyB0aGV5IGhhdmUgc2VlbiBzaWduaWZpY2FudApmZWVk
YmFjayBpbmNsdWRpbmcgcmVuYW1pbmcgdGhlIGNvbXBsZXRlIGRyaXZlciB0d2ljZSAoZnJvbSBy
a2NpZiB0byB2aXAKYW5kIGJhY2sgdG8gY2lmKSBhbmQgSSBhbSBwcmV0dHkgc3VyZSB0aGF0IEkg
d2FzIG5vdCBhYmxlIHRvIGdhdGhlcgpldmVyeXRoaW5nLgoKTG9va2luZyBmb3J3YXJkIHRvIHlv
dXIgY29tbWVudHMhCgpbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAy
MDEyMjkxNjE3MjQuNTExMTAyLTEtbWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20vClsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tZWRpYS9jb3Zlci4xNzA3Njc3ODA0LmdpdC5t
ZWhkaS5kamFpdC5rQGdtYWlsLmNvbS8KWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI0MDIyMC12Ni04LXRvcGljLXJrMzU2OC12aWNhcC12MS0wLTI2ODBhMWZhNjQwYkB3b2xmdmlz
aW9uLm5ldC8KClRvOiBNZWhkaSBEamFpdCA8bWVoZGkuZGphaXRAbGludXguaW50ZWwuY29tPgpU
bzogTWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPgpUbzog
VGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KVG86IFRob21hcyBQZXRhenpv
bmkgPHRob21hcy5wZXRhenpvbmlAYm9vdGxpbi5jb20+ClRvOiBTYWthcmkgQWlsdXMgPHNha2Fy
aS5haWx1c0Bpa2kuZmk+ClRvOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlk
ZWFzb25ib2FyZC5jb20+ClRvOiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVs
Lm9yZz4KVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+ClRvOiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprK2R0QGtlcm5lbC5vcmc+ClRvOiBDb25vciBEb29sZXkgPGNvbm9yK2R0
QGtlcm5lbC5vcmc+ClRvOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgpUbzogS2V2
ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KVG86IE5pY29sYXMgRHVmcmVzbmUg
PG5pY29sYXNAbmR1ZnJlc25lLmNhPgpUbzogU2ViYXN0aWFuIEZyaWNrZSA8c2ViYXN0aWFuLmZy
aWNrZUBjb2xsYWJvcmEuY29tPgpUbzogQWxleGFuZGVyIFNoaXlhbiA8ZWFnbGUuYWxleGFuZGVy
OTIzQGdtYWlsLmNvbT4KVG86IFZhbCBQYWNrZXR0IDx2YWxAcGFja2V0dC5jb29sPgpUbzogUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KVG86IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVu
Z3V0cm9uaXguZGU+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRldmljZXRy
ZWVAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKU2lnbmVkLW9mZi1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwu
cmllc2NoQHdvbGZ2aXNpb24ubmV0PgoKQ2hhbmdlcyBpbiB2MjoKLSBtZXJnZWQgd2l0aCBNZWhk
aSdzIHYxMwotIHJlZmFjdG9yZWQgdGhlIGNvbXBsZXRlIGRyaXZlciB0b3dhcmRzIGEgbWVkaWEg
Y29udHJvbGxlciBjZW50cmljIGRyaXZlcgotIGFic3RyYWN0ZWQgdGhlIGdlbmVyaWMgcGluZy1w
b25nIHN0cmVhbSAoY2FuIGJlIHVzZWQgZm9yIERWUCBhcyB3ZWxsIGFzIGZvciBDU0ktMikKLSBz
d2l0Y2hlZCB0byBNUExBTkUgQVBJCi0gYWRkZWQgc3VwcG9ydCBmb3Igbm90aWZpY2F0aW9ucwot
IExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDAyMjAtdjYtOC10b3Bp
Yy1yazM1NjgtdmljYXAtdjEtMC0yNjgwYTFmYTY0MGJAd29sZnZpc2lvbi5uZXQKCi0tLQpNZWhk
aSBEamFpdCAoMik6CiAgICAgIG1lZGlhOiBkdC1iaW5kaW5nczogbWVkaWE6IGFkZCBiaW5kaW5n
cyBmb3Igcm9ja2NoaXAgcHgzMCB2aXAKICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCB0
aGUgdmlwIG5vZGUgdG8gcHgzMAoKTWljaGFlbCBSaWVzY2ggKDQpOgogICAgICBtZWRpYTogZHQt
YmluZGluZ3M6IG1lZGlhOiB2aWRlby1pbnRlcmZhY2VzOiBhZGQgZGVmaW5lcyBmb3Igc2FtcGxp
bmcgbW9kZXMKICAgICAgbWVkaWE6IGR0LWJpbmRpbmdzOiBtZWRpYTogYWRkIGJpbmRpbmdzIGZv
ciByb2NrY2hpcCByazM1NjggdmljYXAKICAgICAgbWVkaWE6IHJvY2tjaGlwOiBhZGQgYSBkcml2
ZXIgZm9yIHRoZSByb2NrY2hpcCBjYW1lcmEgaW50ZXJmYWNlIChjaWYpCiAgICAgIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBhZGQgdmljYXAgbm9kZSB0byByazM1NngKCiAuLi4vYmluZGluZ3MvbWVk
aWEvcm9ja2NoaXAscHgzMC12aXAueWFtbCAgICAgICAgICB8IDEyMyArKysrCiAuLi4vYmluZGlu
Z3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LXZpY2FwLnlhbWwgICAgICB8IDE2OCArKysrKwogTUFJ
TlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDkgKwog
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kgICAgICAgICAgICAgfCAgMTIg
KwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpICAgICAgfCAg
NDQgKysKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAg
IHwgICAxICsKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvTWFrZWZpbGUgICAgICAg
ICAgIHwgICAxICsKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvY2lmL0tjb25maWcg
ICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvY2lmL01ha2Vm
aWxlICAgICAgIHwgICAzICsKIC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9jaWYvY2lmLWNh
cHR1cmUtZHZwLmMgIHwgNzk0ICsrKysrKysrKysrKysrKysrKysrKwogLi4uL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL2NpZi9jaWYtY2FwdHVyZS1kdnAuaCAgfCAgMjQgKwogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9jaWYvY2lmLWNvbW1vbi5oICAgfCAxNjMgKysrKysKIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvY2lmL2NpZi1kZXYuYyAgICAgIHwgNDA1ICsrKysr
KysrKysrCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL2NpZi9jaWYtcmVncy5oICAg
ICB8IDEzMiArKysrCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL2NpZi9jaWYtc3Ry
ZWFtLmMgICB8IDY3NiArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvY2lmL2NpZi1zdHJlYW0uaCAgIHwgIDI0ICsKIGluY2x1ZGUvZHQtYmluZGluZ3Mv
bWVkaWEvdmlkZW8taW50ZXJmYWNlcy5oICAgICAgIHwgICA0ICsKIDE3IGZpbGVzIGNoYW5nZWQs
IDI1OTggaW5zZXJ0aW9ucygrKQotLS0KYmFzZS1jb21taXQ6IDQwMzg0Yzg0MGVhMTk0NGQ3YzVh
MzkyZTg5NzVlZDA4OGVjZjBiMzcKY2hhbmdlLWlkOiAyMDI0MDIyMC12Ni04LXRvcGljLXJrMzU2
OC12aWNhcC1iOWIzZjk5MjVmNDQKCkJlc3QgcmVnYXJkcywKLS0gCk1pY2hhZWwgUmllc2NoIDxt
aWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
