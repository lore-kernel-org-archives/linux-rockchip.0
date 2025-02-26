Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7102C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 15:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oKD4qImAh7gCbYPhtTzl6B6CjGNB4R2wWXnngf9oLRc=; b=tOJU0IyRfsfMzMcK3D5l3O7Cod
	W8D4D6XKSATqFigt3n//5cJ7aFpNj52axWe0GwNVvRisU7kHMRXf3AmaXoiVu5eoMsIHu0rDRGRuz
	4YPsyDypcGVFgoqlvL7+XD6vuXZJe59J8tWxuqiRMPL598e3W57ZFmkUHGGIo8oMZguFuna8sv2Yf
	93/xxPE07ceatAf7C+lKXKzenRZRtQ4j/uEj+wwAbIvL4jTMOldAjEmeD9eGa8mJuMKceTXYNGIEX
	tIqhz10Kk70c4TpLIjM8KrZ9d/5PmnjPw4yZnNKE/lgc8lMMehMkEgvW1Ybte+eP2ToJEjkEnviUw
	ATufREeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJF2-00000004Ffz-2PJN;
	Wed, 26 Feb 2025 15:22:32 +0000
Received: from mail-vi1eur05on2061b.outbound.protection.outlook.com ([2a01:111:f403:2613::61b] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnIQk-000000045ip-3IW9;
	Wed, 26 Feb 2025 14:30:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rzWjQgItlbSm+ErQ0PQ/DdoA024A5vlIQNdeoVDuNjqkld9UYbW+uOUCExUbXmjP7h+SjlUrYIapn1Tt87qw6+NqiAlm0lduztNI+PCTRyHpGWizGBbJLwke0ZNh4sQlYFFEkqVcbqvY44T0yO4f9jsDOz4jp9VJtqxi9n80JU3+dIIHtxGmJAsZWTkbmKnPKD1Dkfy4pRb+uiSodmFnmnF5AumNGLnjNBSoh3aZYP0LZ6MoalFgHWUlzpDS80ZQDkcsD48B59PadgalllRvZlvdKeqGBaaODGdy7INO5Xa0f93Aw4fJPMlKMXeasDW4cqZ/zMCs0YLNiCr5dGBBZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQUiUOp4KHECH8yKudw1C5wiww3Njc9SPtpPl3W8k10=;
 b=uJbdwydNLsBcXzZgc0bO2Cu88AcuVEqiS7uiYthvNMjQNJd/v1gKWllV1+13nY8uo19v2qWNwswugzbHoV9bN7PFl32bHsjlqswA1lG/l024mr8Pzb5valbszgq3IzdtUy2czPQUdTp42eZIzZNiCZ2D8lW/7fm6cV1T4E02IrTB5wPcCxNmnUHJgiz0rUrRhXbKq1QV9BcyOWzXGNOq8OasMpX3UxKyoUY2VrV5DhRAE0LPe/R0OT7uHEJJTMb2PuypXA5fo1GHQq6tIr20yCVOl6KkZ/OvdSK8eur5Kd55d+EfQonk1msexC6CKbjnom9lmlG26kcrmpIZ12veRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQUiUOp4KHECH8yKudw1C5wiww3Njc9SPtpPl3W8k10=;
 b=E1bKTT32DG+VKESbQJjv/HVQYMzSYONLMdwz/yfxnh0VmDzuAO2tQFAIRoHOBmrbUdJXyHQXBQwGNvSBE777TiuQBDOFDlGBdWvdPQaBtBue60NFFqq4HWRpD1AePpQd/StiOgb/KMQbdAFlu2NKkuzbcmf9X4e2Hf4hQjkBNQw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM0PR04MB6914.eurprd04.prod.outlook.com (2603:10a6:208:189::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.20; Wed, 26 Feb
 2025 14:30:27 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8489.018; Wed, 26 Feb 2025
 14:30:27 +0000
Message-ID: <b793928e-8310-4bba-a9d1-50d30f898c17@cherry.de>
Date: Wed, 26 Feb 2025 15:30:26 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: add usb typec host support to
 rk3588-jaguar
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, lukasz.czechowski@thaumatec.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20250226102507.3743437-1-heiko@sntech.de>
 <28a16ca5-42f7-4aa1-9bc7-fc6b72364556@cherry.de> <3119048.xgJ6IN8ObU@diego>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <3119048.xgJ6IN8ObU@diego>
X-ClientProxiedBy: FR0P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::9) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM0PR04MB6914:EE_
X-MS-Office365-Filtering-Correlation-Id: 65b4d8a1-693d-4e38-186b-08dd56721d22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXhWcXUrOWVOSjZUSXY4blFhMVR2OXdhaW5McnNMWkdrRHV4Wk81emRmM1hh?=
 =?utf-8?B?djh3M3VXVnl5WE9tcDNyYUk1SGI4cnorWWI2WkVKY2tEYk9sRkNRTC9XNFJr?=
 =?utf-8?B?TkZxdk9OenA2a3BFU1JxTm9WQktXbnQ4dWM4RVF0ZGVzUTQyaVFQdjEwVjI1?=
 =?utf-8?B?S1JqcmJ5ZGdaU0FhY2F2RkZNU2h3RStEYVZpZ0NjcUVZY2Vjc0piTjFMdlYr?=
 =?utf-8?B?TVNOQVF4ak9wMDUzNWthNDROaU1pNjZEYUJ4d1RSQ2gwaFpWVFZxdUhNUitL?=
 =?utf-8?B?RWlmSkd6MzRMckxMTXFSNDRlbmZjVzdsK0tRa2svRDdwUkpqb2I3alRGRzRr?=
 =?utf-8?B?bzJRaFZEWldpQld6YVJIeXFURStDUnM0V0grVU1YTUpubnFPdXl5dDBjemtB?=
 =?utf-8?B?NWt6aGdINVJlTmJGN2pzejJJTVlJb1dzWXROeG1leEJoVnZJV1BJcS9CRm90?=
 =?utf-8?B?Y3BNK1VCNTVkaGg3UThOeXZEb1dJZE5jOXNTajZIdU05SWRsY2ovZXZDRlE5?=
 =?utf-8?B?QlR0TVY3ZmljSnBiQzNmTFg3K1hsTE45R3Yvb1p4K0trOEExZ1ZLcnJUanZa?=
 =?utf-8?B?blRFeTRrdEVBOUMrRHpraWlhR2tMWXVMOWh6bFJjL01pY2tmL3NPMGsrRGV6?=
 =?utf-8?B?eWEvSnJOQzFQVjhpejJhanpWdnRpUCtkYUkwdjV2eFlhdXh4cndYT0QzN3Rm?=
 =?utf-8?B?eXQzNzVXMVRsQkdtTnBqRXVNN281QWE4TkVEcGtESVdNTEorcGFETDV6MW9r?=
 =?utf-8?B?Wm5UODg1ZDhkQml5L1VscXJzMVJsYWNIUysrQmtCZEhLV3Jza3NUV3RTNXVY?=
 =?utf-8?B?V1R1ek0veW1MOENxL2hxREVaTUFLdHpxaTZnS0FRWmdta2VVM0NBYTV2QlJX?=
 =?utf-8?B?d3BXN3pBcGRjSDVJYytqUFFXeURBVWxsWnVCcTVXUzE0YmdETFpBVUY3ZXFu?=
 =?utf-8?B?YUY3blBMMVJpL3hOZitZbUVNekFtcVQ4UGZXNXpRUFJicEJUWmFWYk9LRU1N?=
 =?utf-8?B?VVdpa1hobk15ZE00VEVwangyMk1vU2RBSmJoWXlKY2RtOFJ1Qis3bkRxVG54?=
 =?utf-8?B?amg4OFdGTjVLdlZWRElSYWhWVWJ4MGNQOVRXYzFIdzJJaXNBcXkzeHkydkZP?=
 =?utf-8?B?NXBmR21oZlpJWndHc2ZoRUsrSmlrL3dOZ2g4dG1nNXlVazhPVUFWSkNUaEFJ?=
 =?utf-8?B?Y0hzNTBtWWZTaUJ5b2VGSm5hbE5QeEJwUEtKVWJuNyt2b3hWR1J5czZnNHYy?=
 =?utf-8?B?MXhFb1VLU0owMzhOZ0tCMmRMd3dLbVBnbEh5SlZ3cFBvKzI5R2hrdFljTFlY?=
 =?utf-8?B?dTBEbCsxeTVkbG9rZmoyUmZFK3BBSVk1cnpDZEFVVWQ2c0xDcWc5SW41YlRT?=
 =?utf-8?B?OG1NdDlxdEpGWXJSMHdQRDV1T1N4NWIzUXJUWndPREI4MWpNNkI5eitQTk4x?=
 =?utf-8?B?VzRMUmhFRURvdGN0bW8ycWIwRlE0WGwwaWtQUEJ5R09ua21wVjRDay9FTmNm?=
 =?utf-8?B?d0wwb0hzOU5Vcm1kbWplTHVSTUVaeHY5UVo2dm44STUxdTBXMzdSZFh4eTI1?=
 =?utf-8?B?eCttb3czbUhZRnBTZi9LSXNtaWk4aDZpT2lrY0xzN3NGQzFlbThEVkc3SURw?=
 =?utf-8?B?LytaRFNZeDBkZlA0d29jS2ZEODcyZGVmaXFDbFNtazNHc2NPRkE3TncrcUQz?=
 =?utf-8?B?WmxTRGhtekF4OWkrUTE3NmliSVhlc2VoWng2U1hWZVQ0TXZSV0tOd0gzSVZE?=
 =?utf-8?B?M0ZIWnVROG5TNlI2OEFOZVFBSzZISWs0QXZYeDdLUGxRTStGZ3Z1ZG9jY0Nw?=
 =?utf-8?B?T0Z5R2cySGFUeCt5UzkvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGdQbW9IdVRRb1RwZTdFWDRtYzVqcTR3Z3dzbWJ2bHJJbmZFaHd4d1g3T0VC?=
 =?utf-8?B?MTFiRkhtRUdLVUhyb2JaQzVYUE5iYTJIZWFaTmhVMXlMOGwrSWNxQ0F3S3FT?=
 =?utf-8?B?UXVNaGpud3BvVUVqajFpQzdQbXNNYmhHWVd5bXc5L3ozb2JOMURYbDB5dVFh?=
 =?utf-8?B?dGsxMzFERnZMSHc4d3QyQlBwQWhNM1dEWVFUWG9VcStWZmphcytlV2U4UnhE?=
 =?utf-8?B?ZDFwTDZyMUJLUTRraGczSGorSk15SzBJSzZyVUhwRzdzZE1UZFNmRUljMTVN?=
 =?utf-8?B?MGxRRlAyc296cUM3YjJlYkpYck40MDhVUnkwOXVCK1ZtQklZV2l3WHR0b0FN?=
 =?utf-8?B?aVc5SUorb3MwcHJqZmxMWGlqQUxkaythK2JwaVhPMjk1TkFaMHRzaVNxRXJy?=
 =?utf-8?B?MmlWUCt4M1dQaUpTZ2NaMWJMTG1KMWlsN0VRTnVmNXJnNXNuTVFtZTF1ak1q?=
 =?utf-8?B?aFUvM1RXM1BpaiswRXdBRVpmWEVvS0djWEJiOUoxMHR0cUd4dHc0czVvWGRZ?=
 =?utf-8?B?VXVORlBRcjJtY3NzYVFlTFFXNG5HQUcxRlRLMkYwQmpWVEVHdWVNbnU0SzFR?=
 =?utf-8?B?dE1oVUpoRGRVUWpzUU95YmZCTnBFVzRDSFNFdDAvaDlZbUVwNUxqc1FjTWQw?=
 =?utf-8?B?M0Rzd3V5ZXBDai9jbXNXdHRQSnIvMGpuSVJNVGlzWHFpaUhIQk5xQktqbUVi?=
 =?utf-8?B?ZjdZZnB6dnQ1UUhObXV5MkM1STg5WlJsM3AwZXFjaXBlOU44ODBLNE93NXRu?=
 =?utf-8?B?aHhkbStHWVhjZXU2aGQ5UERRWEF5dG9JVmszZkFjaGNlcmpNVk9HdzVaUEVp?=
 =?utf-8?B?ZTUyM3NQYkRLNmhvdTU3NXlXSmdjc29NNkZRWVY4Qk8wZC9XN0tYbTRQOVpZ?=
 =?utf-8?B?bzE4YlFPNUd2MVM5a1ZCVDFMMU9WL1dRd0lEOXFUVDVVWmpibjl0L1hVM3Bv?=
 =?utf-8?B?VWJFazEyS0kvU3VRRkloQWpqR0RnTjJxK1RhaUVMRkVzMlc3eVUwaTZiWmpj?=
 =?utf-8?B?QnowMlNSU3RxQVY4MHRqN09jNnVIaFJPajAwbWRHQmRQcWw5N0ZQSHB0RDZj?=
 =?utf-8?B?YUd4QTl1bWNaSWxpK2lTZGs2VDdjdEdDR0lFMXB2dS9scHJXcVI4VHRSbFFN?=
 =?utf-8?B?OE9YWEhuK29SVDZaWFJVOHVlRXV3bXhwRTNLRGlramJDN1RrSTk0OHdtM09O?=
 =?utf-8?B?Q2VOZlpOaE9IanpXUkNQUkxnaHVrbVN3RTRLMmNtVnhGTXZkTkJRclk4eldD?=
 =?utf-8?B?VFc3MTlpd2xqYlRUaUdBUzNMdDdMMEllVFRRTWFndHVseEU5eUgxQyt2amlI?=
 =?utf-8?B?dGpZVDh1aEIzUnZpRzRFODAwcVNFMmFRNEhuNTcvM0U0MDZaNHB0R05DNTJH?=
 =?utf-8?B?dmlNY0xqdVpXSU8xUGFpNm53REtHOVpMQWtRcmxXb1VidHBrendaTkZjaEVW?=
 =?utf-8?B?dFIvMHAyQlNPdkpuOEdabEEyMWFJWS9vNDBTR1BHamtrczlPbDIrV0RDVThM?=
 =?utf-8?B?cFdjQWhzU0p1TFB1SlhaR3lYNFBHU1BaMkVBc1pWKzdVQkkwSGtRQnlrYzlm?=
 =?utf-8?B?ZXUybWNUZm9FazBEWlRUd2ZMeUwyQVFoenBoa1J4c2RBc0MyRTBmQWpQZVhT?=
 =?utf-8?B?WitUS2JVVFRUUFJVSnZpbHBRc0toQkEwdVhmcEMvQVpGYzFxV2FIZFpoU2pl?=
 =?utf-8?B?UmIrcVVLRktoU0dHcktDYTNLa01Jbkl3TEcvdnZUL240bVVOd0xwanR6b3dl?=
 =?utf-8?B?SUhlY1RHZWVLN3RDZWN3MHllR001SmtJMTl6dE9PZ2lWWmhVelZtY1ljbkZT?=
 =?utf-8?B?NXhrdTg4VVcxSzVkWm9sK0VNYkt4YTNIZXhqMTZ1RjdFUUMrSWFjaXhHS0ll?=
 =?utf-8?B?QWhKQ1JYd2w3UVB0V3poWDFJaS9YQWVNVEZGYUxCakw0bkJDQUhQZFF0Vy9m?=
 =?utf-8?B?TlMvL01NeFV6NGo3a3MvYTcvUHVTcjdaWG5mV0RMUDhiTGtTNEhkMVB6TTdt?=
 =?utf-8?B?cG9DaC9ZSG9SSUNKK3l0MkMzb0UyaFJBV3RabEtsZVRsWFJXTFJSWUgvb0Jr?=
 =?utf-8?B?TFJDVFJkbFB2S2RRQmtGSDZzMWFRcjQ2a1NmOXlKMzAvdXVId3pRa1ZSZGZo?=
 =?utf-8?B?cFBES1ZxQ2J5Ukd0MWluVENiNE1UaFBFRGlBVEtnbGRqR3UxYVpKbFNxMVJU?=
 =?utf-8?B?YVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b4d8a1-693d-4e38-186b-08dd56721d22
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 14:30:27.2839
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fPnhnfse73J5KItDhpWNMtUz+5zEPf1I0kFiN+++yoKPRNp5RUOPWk3PxOGBu0ritHcO3sSZgSWu+6DY96pEwyopkHm35t07o7eAdZWeoJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_063034_834622_E52222F2 
X-CRM114-Status: GOOD (  31.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyLzI2LzI1IDI6MjcgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFt
IE1pdHR3b2NoLCAyNi4gRmVicnVhciAyMDI1LCAxNDoxNzozNyBNRVogc2NocmllYiBRdWVudGlu
IFNjaHVsejoKPj4gSGkgSGVpa28sCj4+Cj4+IE9uIDIvMjYvMjUgMTE6MjUgQU0sIEhlaWtvIFN0
dWVibmVyIHdyb3RlOgo+Pj4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNo
ZXJyeS5kZT4KPj4+Cj4+PiBKYWd1YXIgaGFzIHR3byB0eXBlLWMgcG9ydHMgY29ubmVjdGVkIHRv
IGZ1c2IzMDIgY29udHJvbGxlcnMgdGhhdCBjYW4KPj4+IHdvcmsgYm90aCBpbiBob3N0IGFuZCBk
ZXZpY2UgbW9kZSBhbmQgY2FuIGFsc28gcnVuIGluIGRpc3BsYXktcG9ydAo+Pj4gYWx0bW9kZS4K
Pj4+Cj4+PiBXaGlsZSB0aGVzZSBwb3J0cyBjYW4gd29yayBpbiBkdWFsLXJvbGUgZGF0YSBtb2Rl
LCB0aGV5IGRvIG5vdCBzdXBwb3J0Cj4+PiBwb3dlcmluZyB0aGUgZGV2aWNlIGl0c2VsZiBhcyBw
b3dlci1zaW5rLiBUaGlzIGNhdXNlcyBpc3N1ZXMgYmVjYXVzZQo+Pj4gdGhlIGN1cnJlbnQgaW5m
cmFzdHJ1Y3R1cmUgZG9lcyBub3QgY29wZSB3ZWxsIHdpdGggZHVhbC1yb2xlIGRhdGEKPj4+IHdp
dGhvdXQgZHVhbC1yb2xlIHBvd2VyLgo+Pj4KPj4+IFNvIGFkZCB0aGUgbmVjZXNzYXJ5IG5vZGVz
IGZvciB0aGUgdHlwZS1jIGNvbnRyb2xsZXJzIGFzIHdlbGwKPj4+IGFzIGVuYWJsZSB0aGUgcmVs
ZXZhbnQgY29yZSB1c2Igbm9kZXMsIGJ1dCBsaW1pdCB0aGUgbW9kZSB0byBob3N0LW1vZGUKPj4+
IGZvciBub3cgdW50aWwgd2UgZmlndXJlIG91dCBkZXZpY2UgbW9kZS4KPj4+Cj4+Cj4+IFdlJ3Jl
IG5vdCBsaW1pdGluZyB0aGUgbW9kZSB0byBob3N0LW1vZGUgYW55bW9yZSBpbiB2My4KPj4KPj4g
SSB0ZXN0ZWQgYW5kIGluZGVlZCBwZXJpcGhlcmFsIG1vZGUgZG9lc24ndCB3b3JrLiBXaGlsZSBt
eSBBQ00gZ2FkZ2V0Cj4+IGRldmljZSBpcyBjcmVhdGVkLCBJIGNhbm5vdCBjb21tdW5pY2F0ZSB3
aXRoIGl0Lgo+Pgo+PiBNYXliZSByZXdvcmQgaW4gdGhlIGNvbW1pdCBsb2cgdGhhdCBvbmx5IGhv
c3QgbW9kZSBpcyBzdXBwb3J0ZWQgZXZlbgo+PiB0aG91Z2ggd2UgZG9uJ3QgZW5mb3JjZSBpdD8K
Pj4KPj4gVGhlIFVTQjItb25seSBpc3N1ZSBJIGV4cGVyaWVuY2VkIGluIHYyIGhhcyBiZWVuIGZp
eGVkIHdpdGg6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUw
MjI2MTAzODEwLjM3NDYwMTgtMS1oZWlrb0BzbnRlY2guZGUvVC8jdAo+Pgo+PiBUZXN0ZWQtYnk6
IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4+Cj4+IFNlZSBiZWxv
dyBmb3IgZnVydGhlciBjb21tZW50cy4KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4+PiAtLS0KPj4+IGNoYW5nZXMgaW4gdjM6
Cj4+PiAtIG1vcmUgcmV2aWV3IGNvbW1lbnRzIGZyb20gUXVlbnRpbgo+Pj4gICAgIChzYnUtcGlu
IHBpbmN0cmwsIGNvbW1lbnRzKQo+Pj4gY2hhbmdlcyBpbiB2MjoKPj4+IC0gYWRkcmVzcyByZXZp
ZXcgY29tbWVudHMgZnJvbSBRdWVudGluCj4+PiAgICAgKGNvbW1lbnRzLCBwaW5jdHJsLCBzYnUt
Z3Bpb3MgYW5kIG11Y2ggbW9yZSkKPj4+Cj4+PiAgICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWphZ3Vhci5kdHMgfCAyMTggKysrKysrKysrKysrKysrKysrCj4+PiAgICAxIGZp
bGUgY2hhbmdlZCwgMjE4IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtamFndWFyLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWphZ3Vhci5kdHMKPj4+IGluZGV4IDIwYjU2NmQ0MTY4Zi4u
NWRiY2RmNjdmMGE1IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtamFndWFyLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtamFndWFyLmR0cwo+PiBbLi4uXQo+Pj4gQEAgLTQ4Myw2ICs1ODMsMjYgQEAgcGNp
ZTMweDRfd2FrZW5fbTA6IHBjaWUzMHg0LXdha2VuLW0wIHsKPj4+ICAgIAkJCXJvY2tjaGlwLHBp
bnMgPSA8MCBSS19QQzcgMTIgJnBjZmdfcHVsbF9ub25lPjsKPj4+ICAgIAkJfTsKPj4+ICAgIAl9
Owo+Pj4gKwo+Pj4gKwl1c2IzIHsKPj4+ICsJCWNjX2ludDE6IGNjLWludDEgewo+Pj4gKwkJCXJv
Y2tjaGlwLHBpbnMgPSA8NCBSS19QQTMgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+
PiArCQl9Owo+Pj4gKwo+Pj4gKwkJY2NfaW50MjogY2MtaW50MiB7Cj4+PiArCQkJcm9ja2NoaXAs
cGlucyA9IDw0IFJLX1BBNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+ICsJCX07
Cj4+PiArCj4+PiArCQl0eXBlYzBfc2J1X3BpbnM6IHR5cGVjMC1zYnUtcGlucyB7Cj4+Cj4+IFBs
ZWFzZSByZW5hbWUgdG8gdHlwZWM8eD5fc2J1X2RjX3BpbnMgYXMgdGhleSBhcmVuJ3QgU0JVIHBp
bnMsIHRoZXkgYXJlCj4+IHBpbnMgZm9yIERDIGNvdXBsaW5nIG9mIFNCVSBhcyBmYXIgYXMgSSBj
b3VsZCB0ZWxsIGZyb20gdGhlIERUIGJpbmRpbmcuCj4+Cj4+PiArCQkJcm9ja2NoaXAscGlucyA9
IDw0IFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPiwKPj4+ICsJCQkJCTwxIFJL
X1BDMyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+ICsJCX07Cj4+PiArCj4+PiAr
CQl0eXBlYzFfc2J1X3BpbnM6IHR5cGVjMS1zYnUtcGlucyB7Cj4+PiArCQkJcm9ja2NoaXAscGlu
cyA9IDwwIFJLX1BENCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPiwKPj4+ICsJCQkJCTwx
IFJLX1BCNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+ICsJCX07Cj4+Cj4+IFdl
J3JlIHRoZSBmaXJzdCBvbmVzIHRvIGRlY2xhcmUgYSBwaW5tdXgvcGluY29uZiBmb3IgdGhlIFNC
VS1EQyBwaW5zIGFuZAo+PiBJJ20gbm90IHRvbyBzdXJlIGlmIHdlIHNob3VsZCBsZXQgdGhlbSAi
ZmxvYXQiIG9yIG5vdC4gVGhlIGRlZmF1bHQKPj4gcGluY29uZiBmb3IgdGhvc2UgcGlucyBpcyBQ
RCwgc28gbWF5YmUgd2Ugc2hvdWxkIGtlZXAgdGhhdCBQRC4gKEZvciBDMQo+PiB0aGV5IGFyZSBQ
VSkuCj4+Cj4+IFJvY2sgNSBJVFggcm91dGVzIHRoZSBTQlUtREMgcGlucyB0byBHUElPcyB3aG9z
ZSBwaW5jb25mIGRlZmF1bHRzIHRvIFBVLgo+PiBDTTM1ODggZnJvbSBGcmllbmRseUVsZWMsIE9y
YW5nZSBQaSA1LCBPcmFuZ2UgUGkgNSBQbHVzIGFuZCBOYW5vUEMtVDYKPj4gdXNlIEdQSU9zIHdo
b3NlIHBpbmNvbmYgZGVmYXVsdHMgdG8gUEQuCj4+Cj4+IEkgZG9uJ3Qgc2VlIGV4dGVybmFsIEhX
IFBVL1BEIGluIG91ciBvciB0aGVpciBkZXNpZ25zIHNvIEkgd291bGQKPj4gcmVjb21tZW5kIHRv
IHJlc3BlY3QgdGhlIGRlZmF1bHQgcGluY29uZiBhbmQgcHV0IFBEIGZvciB0aGUgc2J1LWRjIHBp
bnMKPj4gZm9yIFVTQi1DMCBhbmQgUFUgZm9yIFVTQi1DMT8KPiAKPiBCdXQgaWYgeW91J3JlIHdv
cnJpZWQgYWJvdXQgYmVoYXZpb3VyIHdydC4gZmxvYXRpbmcsIGhhdmluZyB0aGVtIHB1bGxlZCBp
bgo+IGRpZmZlcmVudCBkaXJlY3Rpb24gZm9yIHR5cGVjMCBhbmQgdHlwZWMxIGFsc28gd291bGRu
J3QgcmVzdWx0IGluIGRpZmZlcmluZwo+IGJlaGF2aW91cj8KPiAKClRoYXQncyBmYWlyLiBJIGp1
c3QgcmVhbGx5IGRvbid0IGtub3cgd2hhdCB0aGV5IGFyZSBzdXBwb3NlZCB0byBiZSB3aGVuIApu
b3QgZHJpdmVuIDopCgo+IEFsc28gdGhlIHBpbnMgYXJlIG91dHB1dC1vbmx5LCBzbyB0aGUgcGh5
IHdpbGwgYWx3YXlzIHNldCB0aGVtIGluIHNvbWUgd2F5Pwo+IAoKVGhhdCdzIHRydWUsIHRoZXJl
IHdvdWxkIG9ubHkgYmUgYSBzbWFsbCB0aW1lIGZyYW1lIGJldHdlZW4gdGhlIHBpbmN0cmwgCnNl
dHRpbmcgdGhlIHBpbmNvbmYgYW5kIHRoZSBVU0JEUCBQSFkgZHJpdmVyIGRlYWN0aXZhdGluZyB0
aGVtIChsb2dpY2FsIApsb3cpIHNpbmNlIHRoYXQncyBkb25lIGFzIHBhcnQgb2YgdGhlIHByb2Jl
IG9mIHRoZSBkZXZpY2UuIEkgYXNzdW1lIGl0IApyZWFsbHkgZG9lc24ndCBtYXR0ZXIgd2hpY2gg
c3RhdGUgdGhleSBhcmUgYmVmb3JlIGJlaW5nIGRyaXZlbiBiZWNhdXNlIApub3RoaW5nIGZyb20g
dGhlIFVTQi9EUCBzdGFjayBpcyBiZWluZyBydW4gYXQgdGhhdCBwb2ludD8KCj4gQnV0IG5vdyB5
b3UgbWFkZSBtZSBsb29rcyB0aGluZ3MgdXAgOy0pCj4gCj4gRm9yIHRoZSBUUzNVU0JDQTQgVVNC
IFR5cGUtQyBTQlUgTXVsdGlwbGV4ZXIgWzBdLCB0aGUgc2J1IHBpbnMgb24gaXQgYXJlCj4gZGVz
Y3JpYmVkIGFzICJUaGlzIHBpbiBoYXMgYW4gaW50ZXJuYWwgbm9taW5hbGx5IDEuNi1NzqkgcHVs
bC1kb3duIHJlc2lzdG9yLiIKPiAKPiBJbiB0aGUgYmxvY2stZGlhZ3JhbSBvZiB0aGUgTlgyMFAw
NDA3IFByb3RlY3Rpb24gSUMgWzFdLCBpdCBhbHNvIGxvb2tzIGxpa2UKPiBhIHB1bGwgZG93biBp
cyB0aGUgY29uZmlnIG9mIGNob2ljZS4KPiAKClllYWggYnV0IHdlIGhhdmUgbmVpdGhlciBvZiB0
aG9zZSBvbiBvdXIgZGVzaWduLCB0aGUgU0JVIGFyZSBkaXJlY3RseSAKY29ubmVjdGVkIHRvIHRo
ZSBVU0ItQyBqYWNrIHdpdGhvdXQgYW55IElDIGluLWJldHdlZW4uIFNvIEkgd291bGRuJ3QgCnRy
dXN0IHdoYXQgb25lIElDIGRlZmluZXMgYXMgaW50ZXJuYWwgcmVzaXN0b3I/CgpTbyBJIGd1ZXNz
LCBmaW5lIGZvciB0aGUgbm8tUFUvUEQgcGluY29uZiwgYnV0IEkgd291bGQgcmVhbGx5IGFwcHJl
Y2lhdGUgCnRoZSByZW5hbWluZyBvZiB0aGUgcGlubXV4IHRvIGluY2x1ZGUgX2RjIGluIGl0IGFu
ZCBzcGVjaWZ5IGluIHRoZSAKY29tbWl0IGxvZyB0aGF0IHBlcmlwaGVyYWwgbW9kZSBkb2Vzbid0
IHdvcmsgeWV0LgoKV2l0aCB0aGF0LAoKUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVu
dGluLnNjaHVsekBjaGVycnkuZGU+CgpUaGFua3MhClF1ZW50aW4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
