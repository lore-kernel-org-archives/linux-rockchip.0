Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD40C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=304T0vbWP2SUKhG7MQfgPRpkN6fQ2oXTdA4PDqpfw2g=; b=49kUplqKiVX5V6IduaBCEW0Vbl
	pKctCqliyBJUubj8Hvom5IeBM1RBkuwbfc7IDepXz+eskFA4xtjJHtm2L3KZqryTDSsB15ZwU3brS
	wfZRssPlzggI4FaJzxilHE1djIgDcxv6aoVsNUkWoWCkt7XJiNA2aHGy78ge0hJMpLteqp0QnyBog
	IPuXTZ3QHP13dbI2/NP7lmu7T6Fh5OX8+yoFmB5yQJ4++xCcX68XzaW5P/YgwUS/dNqMQClGFfMmV
	j3fRAFG15vCbeH9chbDf1bq1P6SJeK6QXzAz3/k/snnb3Fo7L9lmJKcLi/A7joafQVLX5uHe0DdNg
	Mzno515A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Xwt-0000000D2Dg-3SC6;
	Thu, 02 May 2024 15:02:15 +0000
Received: from mail-vi1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:2611::700] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Xwq-0000000D2Ck-0vKr;
	Thu, 02 May 2024 15:02:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aihNV3U7r8xWsrreSsD9L4zU4MtI7drZi0jaSNg6dNkg6dAQvJhj1M2m1dgQzapFVNUJwFVElvNbXAKwQq7Vd06IsVRaFes0/mSDDka5xQUqW/TnwSXh1bMOJ3Fp/NGOdg9Lc5Gog8evjAviFyciHlm57OQpT57l8guvKEIhYkDuBA6z4uHNj0Pyv3KYcS1FXc6V3FVlAU7SVj1SIF3qEeOCxj+Janh6cx1dhnWSJnBl+1lhqRgxBYffMamVUmelIJ+mUFeT9hDty9fdHosuK1nGRwTCIOXg/c5Mt3RM5H2gSr2cbQ/FH/UQNSPknIgWa8xoDbUNvhqMwJYSDHfsUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fauADhgcttnQ9uSLfHNGfp45yuUO8/G121FLfZrzCB0=;
 b=N/iGy4rJaeoIUQurQ+FIvhTkPhW6OmjGVUGDe4OHG5GtrEXcvKDmGhKormHf4mf7DpoDVvC/1j5hrJK8bXKWnEXNy9XviMXofmjQIqxtKMgxdclm7G7Zl/sP+3xPe2nsE9XlBWHU3hNCQXgPi6YsOQi3cPisDyiMNv9FCKzlnl25gS5/ttoJ+VnCvefbXuFbFck1gNzr8bdqs0+agmVu6bN4YN1o5DBC83E/XxSIlw9ajDliBdXm9TNN8yr5uZItcy4Xiv38lRCD1ysojSbuTDYXV0962rSL69f6cXdXzhAvBXcRZ3Ro8JGdVIz6puJ/lykB1Gc0mxd73wH2B/D6sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fauADhgcttnQ9uSLfHNGfp45yuUO8/G121FLfZrzCB0=;
 b=eog0R+lWzza0c8jTjSFgF2RTN4nMaVmibhJaDTLa5VhkUnYzNhM+3Pni5lQ1sCG9JA5AxTFUZag4HG0RhB22qR30f/WebYgrML5IGtgsAjUKA6ORLUB04Yqq9iPz/glPB+kvhXcbe08OEks+qxB1UJ5kWHtbVUdSWzzo3Mbxhkw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by PAXPR04MB9108.eurprd04.prod.outlook.com (2603:10a6:102:22b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Thu, 2 May
 2024 15:02:01 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936%4]) with mapi id 15.20.7544.029; Thu, 2 May 2024
 15:02:01 +0000
Message-ID: <318b22c7-4e90-4055-a893-bb995c16e8da@cherry.de>
Date: Thu, 2 May 2024 17:01:58 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] i2c: mux: add the ability to share mux-address with
 child nodes
To: Peter Rosin <peda@axentia.se>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-1-045a482f6ffb@theobroma-systems.com>
 <f7ddc503-21c6-10b8-3326-398de65bd6a8@axentia.se>
Content-Language: en-US
From: Farouk Bouabid <farouk.bouabid@cherry.de>
In-Reply-To: <f7ddc503-21c6-10b8-3326-398de65bd6a8@axentia.se>
X-ClientProxiedBy: WA2P291CA0032.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::21) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|PAXPR04MB9108:EE_
X-MS-Office365-Filtering-Correlation-Id: a6d2ee80-f2c6-402f-fc67-08dc6ab8d18f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|7416005|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckRVNFNFWXJ1K3RPUTRRNzF6MVpiSUg4NVgzeFVBSUROUjRZNTFOMmlKendi?=
 =?utf-8?B?OUFSZXBMVllwZElYVmxRWkd1SVQwMHZGN1BWUWtLdjBiTG5RRHRVUnVtRjIw?=
 =?utf-8?B?WldTY0h6QTcvRW9UV3dZMVI4L2tJQzRNY1U1NXZUQ1RyRGZLeEtvTkowTmZq?=
 =?utf-8?B?bHlxaGRSTllnY2w0aUhDMjl3VUdkRzA4OTIrSXJ5UXlCUXo1Tk5XZG5VSC9m?=
 =?utf-8?B?dk9JcnFHYUVNMWd5UWprUHFOWi92cXNRRk5Kd2UwNm1iTG5ZaDVSTVljbmRV?=
 =?utf-8?B?TGZ0ajBEaWtLdTF5NEVrOVNuUi81UzNKRFlWUVRYVmJsRkhhTkhQS0tYYTRr?=
 =?utf-8?B?ZTJUSnhIWmh2aEg5UlB5aStYTjNDS24xVnREMGVqWmZFUVBJSTQ3QmRHSnJX?=
 =?utf-8?B?NDQ3c0pnWUZyV3RsdWJLY1ZTVnZ5Wi9tVThRaDc2RXRKVTRvWGhPYzIzbkNP?=
 =?utf-8?B?V2x4cUtnQU1MK1BLY0MxK2R5Y0d4bUZlUnQ4TXJUUW5KNEZGQU1NUjRHUWJH?=
 =?utf-8?B?Zk9wZTB0d3BUbXlPUWlFbzRiZFhMWUNyVHcvRmhsditqQ0ZnS3dOaXV3NWpt?=
 =?utf-8?B?eWFVMmhNY3VRdzZOcks0QnZvakxDTDJZRERaQ1hLTmFKU1VUd1MraDB3QXZH?=
 =?utf-8?B?WG9wZVhkK2VVS3c3VzB5cDdycWVzdTNSOGl6d3JJTldUR2lKWTd4OEZ2MG5J?=
 =?utf-8?B?ck9ZeUpCVGRwdGxVVEk3V2xNb3prMk4wR2tBbFFTVE9hSDVPNHRXMEo1bFdm?=
 =?utf-8?B?Ni81RDMwK1IzdEFnQjArWFRYZ3hJRU1tLytKeDdXK05MeEpraFZqRkpGV2pP?=
 =?utf-8?B?YzlaSndaU0tFeUR3V0c1d3B6MjhKUG84NFFQVVcxb0tzUUtjdWJCQ0d6cG1i?=
 =?utf-8?B?WlU4VTJaSmY0ODN4TnJjSGpGV2V6NmVCVEtsSTYwS2VwZ3dBcE50ejNuOGwz?=
 =?utf-8?B?TEpBdEx5VzJPcXJmMHFVVTY5WHlDRUQ5VlVUTHBNbWdRa0dhQVpIcXlJeXhI?=
 =?utf-8?B?WnFIWGUxOE45VWR6aFJPWG5KakQyc1FaL3lCWjM3bGIxRDV2K1lBY3BWK1Fo?=
 =?utf-8?B?MUorY1hiVGpIb1VJYVVQajJqZDJBT0JOQXdiUzVBVjhURjV1UlBXVXFKNk55?=
 =?utf-8?B?akExendrbCs5MGN6a1NFem40VU53NytuTmxQTlkzUGgyTDc1bDNQcGViNzVt?=
 =?utf-8?B?eXl0c3F4RHlzOXFsbXRMWXNoMTB3NmhBSnBRVVBMT3kwcHk5OGtZWkJFb2ZK?=
 =?utf-8?B?M3hmOTdTbXZPenFpa3EyTmZFaXc3d25YUkZRUExkM0U4QS95emN3eDJhZGpB?=
 =?utf-8?B?NG5MZ0ZGTC9LQTJnNGV4QTVzbXpDL2ZJcFArM1ZLY3ZJYzVmR1FudjNTeWJq?=
 =?utf-8?B?azJ1ejRJQTF5blZmNmdVVmtFUVVuWXVBbWVhVmR0S0t6cWVrZWh3ckpPUXds?=
 =?utf-8?B?U1dKamd5Wk9tNHdSMmJJbjczQ3UrcjZRWlhRRVJWeENrTVBac09GWm1VMkNi?=
 =?utf-8?B?LzhtVzRNdTFFSG9xb3ZGZXVmVkt3SitMVXdqZHFGOHpMQS9aRFhPUnFQbU9l?=
 =?utf-8?B?Y3psTEZxZGlRRElTS2lUMUw1QmhtODFlcnMrUi9IWUd6dkhVRWxGMlE4dVJH?=
 =?utf-8?B?bjQzQkNCL0Z3OUxIek42TGVWZ1JzeEhaMExUNzNWaERLT0N3bzFmUXVDYjJt?=
 =?utf-8?B?ZGRNUU5RQ1RkVGpUSEJmdDc1Zk5SN2FaWEtUOTBQLzV5T1k2N0ZGZE1nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(1800799015)(366007)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmcvK1lLNURWT2JZSURFVmpQeHk3bzkyT3FkTWxxdVVBaGZkSUs4eVRvN09s?=
 =?utf-8?B?b3BQdmY2MTAzL3IwUk9jUDh4Q3FBZXhVRElvNEc0YjZ2Zmpxd280N1VvNzFV?=
 =?utf-8?B?RnljN08xVXJsYVpvcGFZNWJjUnIrQjY0dnc3d2xLTk92SHduRkRaMlNGNSsy?=
 =?utf-8?B?bnZ0bkF1K3JKN0MxekRsYnRZQ2JrMkp5NEpxbkttWXdndCtGMnVDU2NibXpr?=
 =?utf-8?B?MG1FMHhRZm4vb3VkWlBYdmNwc1c1Z0F0dzZHNmRxck5BQ1lVemlDSWVsNFUx?=
 =?utf-8?B?SGhaeFpydWJzZ0JFblU1bG9NUTdvQkRuNUNCd3lKOUdLZStyRUJlUDBsTmhD?=
 =?utf-8?B?UWdCZlh1RWxEY3dkYTA0Q0lnWWFUNzBQZUpZL0FYQURta3lCTHNJeUVNWERS?=
 =?utf-8?B?Qk5WN0pId1pqcVB2aExid25XNzFSTGQrWEZuRkRlMXJBM3daRGxxSFFxUlFk?=
 =?utf-8?B?dWVGZ3pMN01WT2hTNXpOWFEwMXdwL0dzcmlVSUZ4R3NpczNMWkxXbjZueWhD?=
 =?utf-8?B?QVJUTVI5NFZlY1hHYmJ3c2hHbnJPRWJ6K3hkWWEzck5Ocldra1JrRzJnT1Yz?=
 =?utf-8?B?dUNvTFVyZlJYOXc3Z1RIVFFQdmhTaHRBV1VZV2hkSm9NZ2ZiSVJ1bm53NmZw?=
 =?utf-8?B?ZFZJNXZsaG82Q2pEcysrZHZZcmlhTVpLdDRHS1NZemZvNlFxS0VXQWlLUnlk?=
 =?utf-8?B?SWRxWVdBYTdML0dLYjk5dWdzb3U2Qkw1KzdLQjdqbEQvaTlETHhOS3Y1aUdx?=
 =?utf-8?B?dldicTZ6dVNuVXVoU1I1UnlhQTZXUm53L0JIWDlvTTNOQlJhNVQyZGRKbm0w?=
 =?utf-8?B?dmNOdENDcGdHTlh2L29ZeTBBTGw2Smx6QjZ0ODEwWlp1K3N3QWNSRDZWL2Zy?=
 =?utf-8?B?ZjNzU29VdnVtcVg1SkNkdzJpd3VEcDR6YmFvWjVHS1JjNy9TWEJWNXozV096?=
 =?utf-8?B?ZW4zSVpMbmM3UzhEK3NQUG1CbDYvZjdQOUoxS2ZWWTMzdXdCeEVzc1phaGk0?=
 =?utf-8?B?aWdhYkpiZFpGRDFUL2U0NnFTYng3M1RvUmI3RHRRSXdhYTVhZWg3SytERlJ6?=
 =?utf-8?B?UDZDOW9JRTNKL2Rma2JJVldIT3JPRUFTcHUxT2VMZXpOMlhJalFJNVRMcjVH?=
 =?utf-8?B?Rzhpa3ZsOFhvWTZWeFVxelgzNFVRMXpVcHVINjkzSGpPc2VHaWhUMERpV2pN?=
 =?utf-8?B?c29XYjZyZnVhYkNqQXkyZVVOaDJFTDBWeWlLb3VZVjZUbndMMXQraXUwckhR?=
 =?utf-8?B?Wk1JNE5WeHpJc2p4S25Eem01MkU3WE9mSy9iK3R6bzR0V1Z0ZEtxbGZkemFF?=
 =?utf-8?B?WmROQU8zNWpNNUx4VWt6REN0SmZJazRPR2dpYm1lWjNJQVpvMHZWdmFzU1Ey?=
 =?utf-8?B?R0lDUjAvbFdLWG5CZHpDdFE2K29vbCtiVnBGaFFreGFHV2JaVmtURXlGdFNH?=
 =?utf-8?B?RWJjdW5iaHBQeUUvajNxVGJXRjZINjJTcE9uTFR3VkRiMTI5cWFMWmNFOWkr?=
 =?utf-8?B?R0FKZW5BU2VWVHBjV3hCUWd0OVp0TGJWaUhESlh4bTl4ZGQzTXFOQXhMdTdo?=
 =?utf-8?B?czhiVGQwd2ZiaTFveXgzU0NpL1VDRjRXeCtxek9PWm1oM1lXVC8vcnMvckJY?=
 =?utf-8?B?aStOa0NQdis2TGxBYjZURCtUdXNrWWczWUxxRnVnV3lGS2FCdm1wcGFTYmtj?=
 =?utf-8?B?WmtTWUJwRUtvM3lOajRjNC8vMHI5MTJKSTdHTVRPUTFYdXI0RHZWcW54WHc4?=
 =?utf-8?B?b0ozS0h1UDJ5am1mMDllSkl3QmZkblFsamltNnJMNVlRSU0vM28zY1d1YWdO?=
 =?utf-8?B?cEFZV1lQZXVIdnZ5OVl0V1BRenB2UlJzVGZ3Q2RtaHErOUFpNWpQNVFZQ3hF?=
 =?utf-8?B?Ty9oWUVtZ241VlpvNk9KVmhiTFRscnNmRndvQ2ppZXFYMEJxYnQxaWFmMmUw?=
 =?utf-8?B?Z0piSmpZTW1SdnhHMFNZdCsxdU81V0g0Q3NuUVdaamd5YW4yeU5OMkhxdzZs?=
 =?utf-8?B?ZUE2SXVBSFBiN2dNQm9uMmFEcGh3RWoxcGtGVFFnS2hFWm9jVnNJUlBxT3ZF?=
 =?utf-8?B?aXZtaTdadk4wT1FLMnQramhTWk1mNXRtdmd2RDVIVE9MZDZDQWM4UUhHTjB6?=
 =?utf-8?B?YzF3WVVnZTdXZGsrdWk0b1l5NTBFMzA5Y2pDZGpIUG9LdWxiYW1Ed3N0TU8x?=
 =?utf-8?B?RHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a6d2ee80-f2c6-402f-fc67-08dc6ab8d18f
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 15:02:00.4107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +pWXLgbWX2KPIe7aLhZXi71/cRTZ7iXoFCO9QlRVuR21VF3lqvHFsqjhjLohbJqP4aqc1Vg/2HVj7UulLX0brmmL1uwpetS4WpBwEZolWXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_080212_473894_7C11F7E0 
X-CRM114-Status: GOOD (  29.02  )
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

SGkgUGV0ZXIsCgpPbiAyOS4wNC4yNCAxNzo0NiwgUGV0ZXIgUm9zaW4gd3JvdGU6Cj4gSGkhCj4K
PiAyMDI0LTA0LTI2IGF0IDE4OjQ5LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPj4gQWxsb3cgdGhl
IG11eCB0byBoYXZlIHRoZSBzYW1lIGFkZHJlc3MgYXMgYSBjaGlsZCBkZXZpY2UuIFRoaXMgaXMg
dXNlZnVsCj4+IHdoZW4gdGhlIG11eCBjYW4gb25seSB1c2UgYW4gaTJjLWFkZHJlc3MgdGhhdCBp
cyB1c2VkIGJ5IGEgY2hpbGQgZGV2aWNlCj4+IGJlY2F1c2Ugbm8gb3RoZXIgYWRkcmVzc2VzIGFy
ZSBmcmVlIHRvIHVzZS4gZWcuIHRoZSBtdXggY2FuIG9ubHkgdXNlCj4+IGFkZHJlc3MgMHgxOCB3
aGljaCBpcyB1c2VkIGJ5IGFtYzY4MjEgY29ubmVjdGVkIHRvIHRoZSBtdXguCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJvdWsuYm91YWJpZEB0aGVvYnJvbWEtc3lzdGVt
cy5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvaTJjL2kyYy1tdXguYyAgIHwgMTAgKysrKysrKysr
LQo+PiAgIGluY2x1ZGUvbGludXgvaTJjLW11eC5oIHwgIDEgKwo+PiAgIDIgZmlsZXMgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9pMmMvaTJjLW11eC5jIGIvZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+IGluZGV4IDU3ZmYw
OWYxOGMzNy4uZjUzNTdkZmY4Y2M1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2kyYy9pMmMtbXV4
LmMKPj4gKysrIGIvZHJpdmVycy9pMmMvaTJjLW11eC5jCj4+IEBAIC0zMzEsNyArMzMxLDYgQEAg
aW50IGkyY19tdXhfYWRkX2FkYXB0ZXIoc3RydWN0IGkyY19tdXhfY29yZSAqbXV4YywKPj4gICAJ
cHJpdi0+YWRhcC5vd25lciA9IFRISVNfTU9EVUxFOwo+PiAgIAlwcml2LT5hZGFwLmFsZ28gPSAm
cHJpdi0+YWxnbzsKPj4gICAJcHJpdi0+YWRhcC5hbGdvX2RhdGEgPSBwcml2Owo+PiAtCXByaXYt
PmFkYXAuZGV2LnBhcmVudCA9ICZwYXJlbnQtPmRldjsKPj4gICAJcHJpdi0+YWRhcC5yZXRyaWVz
ID0gcGFyZW50LT5yZXRyaWVzOwo+PiAgIAlwcml2LT5hZGFwLnRpbWVvdXQgPSBwYXJlbnQtPnRp
bWVvdXQ7Cj4+ICAgCXByaXYtPmFkYXAucXVpcmtzID0gcGFyZW50LT5xdWlya3M7Cj4+IEBAIC0z
NDgsNiArMzQ3LDE1IEBAIGludCBpMmNfbXV4X2FkZF9hZGFwdGVyKHN0cnVjdCBpMmNfbXV4X2Nv
cmUgKm11eGMsCj4+ICAgCWVsc2UKPj4gICAJCXByaXYtPmFkYXAuY2xhc3MgPSBjbGFzczsKPj4g
ICAKPj4gKwkvKgo+PiArCSAqIFdoZW4gY3JlYXRpbmcgdGhlIGFkYXB0ZXIsIHRoZSBub2RlIGRl
dmljZXMgYXJlIGNoZWNrZWQgZm9yIGkyYyBhZGRyZXNzCj4+ICsJICogbWF0Y2ggd2l0aCBvdGhl
ciBkZXZpY2VzIG9uIHRoZSBwYXJlbnQgYWRhcHRlciwgYW1vbmcgd2hpY2ggaXMgdGhlIG11eCBp
dHNlbGYuCj4+ICsJICogSWYgYSBtYXRjaCBpcyBmb3VuZCB0aGUgbm9kZSBkZXZpY2UgaXMgbm90
IHByb2JlZCBzdWNjZXNzZnVsbHkuCj4+ICsJICogQWxsb3cgdGhlIG11eCB0byBoYXZlIHRoZSBz
YW1lIGFkZHJlc3MgYXMgYSBjaGlsZCBkZXZpY2UgYnkgc2tpcHBpbmcgdGhpcyBjaGVjay4KPj4g
KwkgKi8KPj4gKwlpZiAoIShtdXhjLT5zaGFyZV9hZGRyX3dpdGhfY2hpbGRyZW4pKQo+PiArCQlw
cml2LT5hZGFwLmRldi5wYXJlbnQgPSAmcGFyZW50LT5kZXY7Cj4gVGhpcyBpcyBhIGRpcnR5IGhh
Y2sgdGhhdCB3aWxsIG5vdCBnZW5lcmFsbHkgZG8gdGhlIHJpZ2h0IHRoaW5nLgo+Cj4gVGhlIGFk
YXB0ZXIgZGV2aWNlIHBhcmVudCBpcyBub3QgdGhlcmUgc29sZWx5IGZvciB0aGUgcHVycG9zZSBv
Zgo+IGRldGVjdGluZyBhZGRyZXNzIGNsYXNoZXMsIHNvIHRoZSBhYm92ZSBoYXMgb3RoZXIgaW1w
bGljYXRpb25zCj4gdGhhdCBhcmUgbm90IGRlc2lyYWJsZS4KPgo+IFRoZXJlZm9yZSwgTkFDSyBv
biB0aGlzIGFwcHJvYWNoLiBJdCBzaW1wbHkgbmVlZHMgdG8gYmUgbW9yZSBpbnZvbHZlZC4KPiBT
b3JyeS4KPgo+IENoZWVycywKPiBQZXRlcgo+CgpBbm90aGVyIHdheSB0byBhcHByb2FjaCB0aGlz
IGlzIGJ5IGltcGxlbWVudGluZyB0aGlzIGZsYWcgYXMgYSBxdWlyayBmb3IgCnRoZSBhZGRlZCBh
ZGFwdGVyOgoKKHRlc3RlZCBidXQgbm90IGNsZWFuZWQgdXApCgoiIiIKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2kyYy9pMmMtY29yZS1iYXNlLmMgYi9kcml2ZXJzL2kyYy9pMmMtY29yZS1iYXNlLmMK
aW5kZXggZmY1YzQ4NmExZGJiLi42YTAyMzdmNzUwZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaTJj
L2kyYy1jb3JlLWJhc2UuYworKysgYi9kcml2ZXJzL2kyYy9pMmMtY29yZS1iYXNlLmMKQEAgLTgy
MSw5ICs4MjEsMjEgQEAgc3RhdGljIGludCBpMmNfY2hlY2tfbXV4X2NoaWxkcmVuKHN0cnVjdCBk
ZXZpY2UgCipkZXYsIHZvaWQgKmFkZHJwKQogwqBzdGF0aWMgaW50IGkyY19jaGVja19hZGRyX2J1
c3koc3RydWN0IGkyY19hZGFwdGVyICphZGFwdGVyLCBpbnQgYWRkcikKIMKgewogwqDCoMKgwqDC
oMKgwqAgc3RydWN0IGkyY19hZGFwdGVyICpwYXJlbnQgPSBpMmNfcGFyZW50X2lzX2kyY19hZGFw
dGVyKGFkYXB0ZXIpOworwqDCoMKgwqDCoMKgIGJvb2wgc2tpcF9jaGVjayA9IGZhbHNlOwogwqDC
oMKgwqDCoMKgwqAgaW50IHJlc3VsdCA9IDA7CgotwqDCoMKgwqDCoMKgIGlmIChwYXJlbnQpCivC
oMKgwqDCoMKgwqAgaWYgKGFkYXB0ZXItPnF1aXJrcykgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChhZGFwdGVyLT5xdWlya3MtPmZsYWdzICYgSTJDX0FRX1NIQVJFX0FERFIp
IHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
MmNfY2xpZW50ICpjbGllbnQgPSAKb2ZfZmluZF9pMmNfZGV2aWNlX2J5X25vZGUoYWRhcHRlci0+
ZGV2Lm9mX25vZGUtPnBhcmVudCk7CisKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChjbGllbnQpIHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBza2lwX2NoZWNrID0gY2xpZW50LT5hZGRy
ID09IGFkZHI7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcHV0X2RldmljZSgmY2xpZW50LT5kZXYpOworwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH0KK8KgwqDCoMKgwqDCoCB9CisKK8KgwqDCoMKgwqDCoCBpZiAocGFyZW50ICYmICFz
a2lwX2NoZWNrKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3VsdCA9IGkyY19j
aGVja19tdXhfcGFyZW50cyhwYXJlbnQsIGFkZHIpOwoKIMKgwqDCoMKgwqDCoMKgIGlmICghcmVz
dWx0KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvaTJjLW11eC5jIGIvZHJpdmVycy9pMmMvaTJj
LW11eC5jCmluZGV4IDU3ZmYwOWYxOGMzNy4uZTg3Y2IwZTQzNzI1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2kyYy9pMmMtbXV4LmMKKysrIGIvZHJpdmVycy9pMmMvaTJjLW11eC5jCkBAIC0zMzQsNyAr
MzM0LDI2IEBAIGludCBpMmNfbXV4X2FkZF9hZGFwdGVyKHN0cnVjdCBpMmNfbXV4X2NvcmUgKm11
eGMsCiDCoMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLmRldi5wYXJlbnQgPSAmcGFyZW50LT5kZXY7
CiDCoMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLnJldHJpZXMgPSBwYXJlbnQtPnJldHJpZXM7CiDC
oMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLnRpbWVvdXQgPSBwYXJlbnQtPnRpbWVvdXQ7Ci3CoMKg
wqDCoMKgwqAgcHJpdi0+YWRhcC5xdWlya3MgPSBwYXJlbnQtPnF1aXJrczsKK8KgwqDCoMKgwqDC
oCAvKgorwqDCoMKgwqDCoMKgwqAgKiBXaGVuIGNyZWF0aW5nIHRoZSBhZGFwdGVyLCB0aGUgbm9k
ZSBkZXZpY2VzIGFyZSBjaGVja2VkIGZvciAKaTJjIGFkZHJlc3MKK8KgwqDCoMKgwqDCoMKgICog
bWF0Y2ggd2l0aCBvdGhlciBkZXZpY2VzIG9uIHRoZSBwYXJlbnQgYWRhcHRlciwgYW1vbmcgd2hp
Y2ggCmlzIHRoZSBtdXggaXRzZWxmLgorwqDCoMKgwqDCoMKgwqAgKiBJZiBhIG1hdGNoIGlzIGZv
dW5kIHRoZSBub2RlIGRldmljZSBpcyBub3QgcHJvYmVkIHN1Y2Nlc3NmdWxseS4KK8KgwqDCoMKg
wqDCoMKgICogQWxsb3cgdGhlIG11eCB0byBoYXZlIHRoZSBzYW1lIGFkZHJlc3MgYXMgYSBjaGls
ZCBkZXZpY2UgYnkgCnNraXBwaW5nIHRoaXMgY2hlY2suCivCoMKgwqDCoMKgwqDCoCAqLworwqDC
oMKgwqDCoMKgIGlmICghbXV4Yy0+c2hhcmVfYWRkcl93aXRoX2NoaWxkcmVuKQorwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwcml2LT5hZGFwLnF1aXJrcyA9IHBhcmVudC0+cXVpcmtzOwor
wqDCoMKgwqDCoMKgIGVsc2UgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
aTJjX2FkYXB0ZXJfcXVpcmtzICpxdWlya3MgPSAKa3phbGxvYyhzaXplb2YoKnF1aXJrcyksIEdG
UF9LRVJORUwpOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIXF1aXJrcykKK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVN
OworCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChwYXJlbnQtPnF1aXJrcykKK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpxdWlya3MgPSAqKHBh
cmVudC0+cXVpcmtzKTsgLy8gQGZpeG1lIG1lbWNweQorCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHF1aXJrcy0+ZmxhZ3MgfD0gSTJDX0FRX1NIQVJFX0FERFI7CivCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHByaXYtPmFkYXAucXVpcmtzID0gcXVpcmtzOworwqDCoMKgwqDCoMKg
IH0KKwogwqDCoMKgwqDCoMKgwqAgaWYgKG11eGMtPm11eF9sb2NrZWQpCiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcHJpdi0+YWRhcC5sb2NrX29wcyA9ICZpMmNfbXV4X2xvY2tfb3Bz
OwogwqDCoMKgwqDCoMKgwqAgZWxzZQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9pMmMtbXV4
LmggYi9pbmNsdWRlL2xpbnV4L2kyYy1tdXguaAppbmRleCA5OGVmNzNiN2M4ZmQuLjE3YWM2OGJm
MTcwMyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9pMmMtbXV4LmgKKysrIGIvaW5jbHVkZS9s
aW51eC9pMmMtbXV4LmgKQEAgLTIxLDYgKzIxLDcgQEAgc3RydWN0IGkyY19tdXhfY29yZSB7CiDC
oMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgbXV4X2xvY2tlZDoxOwogwqDCoMKgwqDCoMKgwqAg
dW5zaWduZWQgaW50IGFyYml0cmF0b3I6MTsKIMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBn
YXRlOjE7CivCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IHNoYXJlX2FkZHJfd2l0aF9jaGlsZHJl
bjoxOwoKIMKgwqDCoMKgwqDCoMKgIHZvaWQgKnByaXY7CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9pMmMuaCBiL2luY2x1ZGUvbGludXgvaTJjLmgKaW5kZXggNWU2Y2Q0M2E2ZGJkLi4yZWJh
YzllNjcyZWYgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvaTJjLmgKKysrIGIvaW5jbHVkZS9s
aW51eC9pMmMuaApAQCAtNzExLDYgKzcxMSw4IEBAIHN0cnVjdCBpMmNfYWRhcHRlcl9xdWlya3Mg
ewogwqAjZGVmaW5lIEkyQ19BUV9OT19aRVJPX0xFTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
STJDX0FRX05PX1pFUk9fTEVOX1JFQUQgfCAKSTJDX0FRX05PX1pFUk9fTEVOX1dSSVRFKQogwqAv
KiBhZGFwdGVyIGNhbm5vdCBkbyByZXBlYXRlZCBTVEFSVCAqLwogwqAjZGVmaW5lIEkyQ19BUV9O
T19SRVBfU1RBUlTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCg3KQorLyogQGZpeG1lIGRvY3Vt
ZW50IGFuZCBmaW5kIHByb3BlciBuYW1lICovCisjZGVmaW5lIEkyQ19BUV9TSEFSRV9BRERSwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQklUKDgpCgogwqAvKgogwqAgKiBpMmNfYWRhcHRlciBp
cyB0aGUgc3RydWN0dXJlIHVzZWQgdG8gaWRlbnRpZnkgYSBwaHlzaWNhbCBpMmMgYnVzIGFsb25n
CgoiIiIKClRoaXMgd29ya3MsIGhvd2V2ZXIgdGhpcyBvbmx5IHN1cHBvcnRzIGRldmljZS10cmVl
IGJlY2F1c2Ugb2YgCm9mX2ZpbmRfaTJjX2RldmljZV9ieV9ub2RlLiBJZiB3ZSB3YW50IHRvIHN1
cHBvcnQgYWNwaSB0aGVuIHdlIGNhbiBlaXRoZXI6CgoKMS4gR2V0IHRoZSBNdWxlIGkyYyBkZXZp
Y2UgYWRkcmVzcyBmcm9tIGZ3bm9kZV9nZXRfbmV4dF9wYXJlbnRfZGV2IGJ1dCAKdGhpcyBpcyBz
dGF0aWMgc2luY2UgdjYuOS1yY3guCgoyLiBQYXNzIHRoZSBNdWxlIGkyYyBkZXZpY2UgYWRkcmVz
cyBhcyBhIG5ldyBtZW1iZXIgb2bCoCBzdHJ1Y3QgCmkyY19hZGFwdGVyX3F1aXJrcy4KCgpJIHdv
dWxkIGdvIGZvciAyLiBEbyB5b3Ugc3VnZ2VzdCBzb21ldGhpbmcgZWxzZT8KCkJlc3QgcmVnYXJk
cwoKRmFyb3VrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
