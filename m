Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B3F6D18129
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 15:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fbqccnxnPthOYMsy/0ijNmxBdUv+HxWvh0d1Jsw+ifg=; b=OccI4pfEQBUVWe4YVj5qGj9KLn
	QR8FMlWWTpxlaIes8pfHFZwxxmuBHt84uYx1UYV1ue4JzgSwuVeYfe48IeWqLxLK1IzYexhUHrXP3
	XxCRqrt6dXYq+MLeNvIJMLFuQfcs/J9THK0dsWMFHmIu73QpO5IAzGNHZocVBeb67FuROQfzYYV0m
	9CEVZrsMtYsFFmgR7gB7mYXhwlKu8/gdohjUXUu7sYXHIfKO0lXY4YuRHTGuKAiN9v/oSHlpSfhzY
	mOka1qXh0K3o9PWqzGKgsL/oUBLm/aFnm21RIsWcSzvrQTFrWy/FvOLYdVovNbQmGSnOTxe4Ckhgg
	PbVmSYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0NAs-00000005jDQ-1lU9;
	Mon, 14 Oct 2024 15:39:58 +0000
Received: from mail-db8eur05on20626.outbound.protection.outlook.com ([2a01:111:f403:2614::626] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0NAo-00000005jCC-0c9M;
	Mon, 14 Oct 2024 15:39:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQB2N1OjLR756MOVwq7ehPHIiz6mwWm39mCkew33kTmIgS3VsBi0wR4sAJ1H1oML1R3J6PWI7qC+iMc3GaWGYz4+JwNtnfIQWMn48IN+QAQka3/yzXkF9Oa3QPoV9oKpJC5kXxY003Opmz9rwD3zlTyZraU4Dqqe6JBc7raAQg3unglfDbMHJz4ugc9Q78TFBQ+1Hnwcqt2tAVWiYoYBod4ZkBktJAhK2kKwpmyqw5fIRVwsEX5jUaf8HFCvQiPvQoBS0KRcfNbxr2lzQQCXZDt/RCJTONTsvio1LQC2bXUq3vsINvBaSrS9bwxueqm+xzgeWTI9Rr42bDaPNIbX+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2sDGEO31Ah5eFN14mdB0dGPba8Dic8/jkks8Gz2lxeQ=;
 b=iEai7eG3gAoEgMzaIOsrGE5gm3W09t8lRqk1RPonFpqo71OLAJIviyLAgt3hAoQ1PlQMXWPVTCY5BZu7k5EMcMCyP/RCQWNR7K1ISb3pzBSTUwt5UjPojkr+hsA7AkcjkPX0rTgOBOYOXAzhmLPScxYFgMPXwFNQxYA8Xhx73IqxIH4lYzww+9eEQEBHpPzs2AkBnMKECt6gEiNf2MEebYEsj4tbLRwIlYL858dyoX44lZO5vfRFfslfadMafHb6Mm3bJY5AWnzqMO7k8vw/5GQtGMstjBgm62NJHrHcxnNcVR0aAMDOlnYsLh1Vlow6T/nTruY6BZV1T3t54gy1rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2sDGEO31Ah5eFN14mdB0dGPba8Dic8/jkks8Gz2lxeQ=;
 b=Iq2rxQCxKF32eQkST0D7zgOZmKvhruajbqkTU21aQ1mFe+nVVU2H0zOHp1zgZ+U6Lq9xDBN3UoUg0Tback7n6dZ6aqGZL6oQAWVlgq/zPfNf4Ey/Y5HN0gC9wK0Vh9aFj+A0VsA73OEBSFmqAh6f6YQWg0SwWFXdwd+Zjhqn+ts=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM7PR04MB7141.eurprd04.prod.outlook.com (2603:10a6:20b:11d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 15:39:45 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 15:39:45 +0000
Message-ID: <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
Date: Mon, 14 Oct 2024 17:39:44 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
To: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
X-ClientProxiedBy: FR0P281CA0064.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM7PR04MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: 0df19fb6-5b8e-46b0-2107-08dcec666dfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHNRamVEZDdQaDRqcGhFR2R3NG4rMTBlaHVpYzhvYkVXbmxPYkI1OVhQZ29m?=
 =?utf-8?B?RHRvaXZvc3JQeHJUL0VqTG5YQ0d4cWE0NkdzNjJqYi92RG1UNyszdTJ6a2wz?=
 =?utf-8?B?MElxS3lhU2ZZOGExQ09HQVdCeUVnUUpLNndObGJFdHJEWUhkMDJzZ0xmVkFZ?=
 =?utf-8?B?Z1YrdXpjdEdINy96QmFXcWswK3ZOd0FDWlFOR3ExSTFJVFJoSEJNYzBCRWhN?=
 =?utf-8?B?TUZVWDVIZEswS0Rja2JnUmtRbnc2Q1dSRGcyUXQ1MVg3aDVuM3hBVzNrSGNH?=
 =?utf-8?B?bGhWN2krbWxZTU84U2xSLzRNOFV5cDI5T3p0UlRJRkpCTlRVMGpjaGVnYnl0?=
 =?utf-8?B?aGJrT1BQREhOL1RoR1ZxaVd1c3pVTVhycCtXemtrWndYb1NITE1yb3Vwbmhk?=
 =?utf-8?B?TElMWmdVWnkrdGd2eXNqM1ArS0dLWVhaeWtJT2RhUG5pemFFeWRoeHhZMkc0?=
 =?utf-8?B?cEVPVzFhaS9xeUNqT3Q4NVJ5UDZVL25UdC81L0ZrSzNodG4xaHFyM1BON29k?=
 =?utf-8?B?azhyVjV6ZlFFUUlIYkNuQThXR202VXhtRkxvSERjTFhBRGJ1UEdZM0xVMG5G?=
 =?utf-8?B?K2FZeWNzWUE4ZC9sd3JpbVFTcGZmbTJRcjlGTkRMNGt5L3AxSXgzS2dNNVZl?=
 =?utf-8?B?RnFyMjR0YnBOWDE2NTJxR014RzVFazNVRnJjVGl3dnd0V1Y5SHpjY1dvenc0?=
 =?utf-8?B?c3creFk5cHZiNFpUWVVMUDkxQ1VTdHRnMUQ2c0NtMXFwT3lhUmxzOSswNVNS?=
 =?utf-8?B?S1lOQWkvTklBUFM5NHpSWnhGRUdJcUtHbERnS3VRY29ZZHNGNTRSc1ZYdGNh?=
 =?utf-8?B?T001eWhRa1l2MUxTblM1d2h5WWEyWGRKTFRhaThzU213cnBpaUpBVzV1TEJ2?=
 =?utf-8?B?Rzh5M0I1TXExZVM4Z1diN0wyZHJXd3RMMEJxRHVMR0xmMW9weVpqQ2tXOFNm?=
 =?utf-8?B?RUJpN0xzVER0Mlg0VXl4STROYS9BelgzbnhNVkpaMWIwMEV3VWRUSTZ6enJE?=
 =?utf-8?B?Z1BqWVNUZjNiWlcvbTZvQ09ZRzhpeWtUSWk3OFNUYjJMQzhaV1VHK0dqL0JR?=
 =?utf-8?B?TG82N1U1VkxqZkpnd0NJQWkrbXNROGtONjhkVmk3RHFaVVdaYWRUNGthVElt?=
 =?utf-8?B?MXRrUG02ZStUSHJ2OFNnbDR6czZHVVM5RzhzTVNYN2lRS252cGc4T3VHdHZv?=
 =?utf-8?B?Ry9nNXBoYjBnOVhhNi9yQlJMc1F4VUtLR3hlc2V1S0x4NEM1V3lyZFg5NlA0?=
 =?utf-8?B?czg0OUhkL3NYU2kxQUY4QUt2MDIrejJwV2ZGK2VjV2V3RE9WUFhFelNJa1pm?=
 =?utf-8?B?TnNYeElJdXBTSmdPeXoxc3RnaUpQR2g0S3A1UXNUTjhjM3RiTjVuOEpHU05X?=
 =?utf-8?B?MlNCTlpSSVJLTkYvT3p5V3VRQ0VsR1p2MWtwZFp0TjdWNFlaeGhQUGNnbkc2?=
 =?utf-8?B?V0sxNzJwbEpVVnVNaXZlZjBlRkVZcXRqcG9XVzhmb1hVMVlDREVMeXZCMHFN?=
 =?utf-8?B?SmFKaG42bkZRUmROYUUrSERtdkYyMmppRjRhUzk3bDRsZUZmUUNHQVQ3QnpU?=
 =?utf-8?B?RE02azBmQ0J1MFNyMDU2ZTYzY0RDaEdQZVJpT0UrUUJjbHpSUGNSa0ZOc0g0?=
 =?utf-8?Q?cAs5R9fA3Kw0XkpgA7MbXum6XyTywY89JOGz48YobaRs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGo2cHcxc2JYVmp4N1dndGhpZENiNnYrLzJiTUxoMlZqak1tQUVkcmJrYlZi?=
 =?utf-8?B?RHRrUklQOHg5M3R1Z1dEc2o3UGlUdFVobEdLeEVZWkExNHQ2WVRPeDg4bmNa?=
 =?utf-8?B?TWZwSEJLNVd4NDBiQWZSZ1F3UVRRMVZLODQ3NTFCVWJvcHBmZ0FMT2d2a0NH?=
 =?utf-8?B?QXd2ZmFJRGZwY2V2Zkhvcmo2UDNxd29adC9XeDEzN1pNWHVxSW45MlRvbDJB?=
 =?utf-8?B?L3VhaXBwUURKdE5sK2hBcktGWVpSWCtNVmJPM3JUaFEyRzJqeHpvL2tWUUFo?=
 =?utf-8?B?VlU4MklJc2hmV3V2RVhpOGJVNUlCMUFoaHUwTE5SRWU1eHBaL3hNeFpTNmtS?=
 =?utf-8?B?MW9OY3I5YjAzcDA4L3E5dXN1K2trTVpMWjJSeVh0TmU1YjgvT0V6dTF1ZzNy?=
 =?utf-8?B?eUU0NStCN3pOUi9jMVdkY3gybGhpWVpMcEkwcUxDVkhsTU5uVmNiQmYzZm9N?=
 =?utf-8?B?VXJhQlpXWVRFMmNLZTFkNUdiWnZhckZ4V3gyRlhxS09CVVkycGRtWmZIaXll?=
 =?utf-8?B?WlJXRXErWWNoRnZGNVF2c3ZiQlNjdUZLSm5nblN3RDJNWkFJUkl1VTZFVUFm?=
 =?utf-8?B?STY3VTlUNk4yVFVyL1VKaE9jSFpVWlNBTWIvNm9iVkhEcTkwU3ZtWHUybGZx?=
 =?utf-8?B?ZlphbFV3bVpKQ1pPM1l6NVlRUFNxbDdoT3FRcXdYVG1Pa3o0WE5xVEhMNGV6?=
 =?utf-8?B?SDFpajJZbWRzMW9CV0ZnVS92aGJLd0FYNklMUnA1QThveVQwcytDMzhQckZu?=
 =?utf-8?B?UEt1b0lWY0dnNThvS09tWmUrYlRSQ2F0MG5MTE9DL1lQY0d3MlQ2ZExIWTN3?=
 =?utf-8?B?VTZRQnVyYVAwL1lPYmovYWJwYjV4alo0N1dtVmw3Q1ZiQk1JOWw4dVNqZENs?=
 =?utf-8?B?T1ptWGNRTUEvZWJkYThSR05WZzgzM0NRdE1DQnNVejlLajRTOWVkS09ZdDIr?=
 =?utf-8?B?YnovSDBZbzJUblNDNFR6blBCOWV0MFZpcVYrM2l3cGhZY3kvdW9GZWFtY3F4?=
 =?utf-8?B?NXZLMUh3UDFoY21hcXI0ODRUMTE1bjU3SEtGeUVFY1BZRWpKL3pNY1FRM2JI?=
 =?utf-8?B?MVVSZEhOVzQ1Z1lpY0xKenVMZGRxK3cwRkxQS2tRZi9kUGNZU2RwM0x6M3Nm?=
 =?utf-8?B?bDhiL3pXS3BYVHcxazBoMW05T3FhUTZMUkk0RGQxekErTi9YdGFObjkzajdO?=
 =?utf-8?B?ZEpPWVFuZmxSeDZuRzJRRnhkOFlHVFdzVUpNL2xaa2ZtL0krc2hrdWpGa2I3?=
 =?utf-8?B?aHBWc01USm1yQWdtVnRLcG8xRnNITHhRODdEZFJoTGtGWkVFZWtSZTJNQjN0?=
 =?utf-8?B?a01SZDIrUTdzdDYrcGs3ZFg2WnhjWVFSMGhaNm9qak9WK3BUYUwvMjh6dzF2?=
 =?utf-8?B?dFlYc3I5ayt3Snh2akZ4N01LVzNDbS9HRGpHNXhRNHJ4cWxrQ2ZTc0VHaEZl?=
 =?utf-8?B?V0ErSnIvUnJjWmM1N3VMRGR5YjFGT3ZKTFVYUmRoVXJZVU5uN0tKSGg5M2lY?=
 =?utf-8?B?UkwwandLblFaekhFMU8yZEZaY3JKN29FNzI4UHJaS0VINk9kOE1NYlZma2t2?=
 =?utf-8?B?UEJza1Q0ZHlvc1RVYUlmTGJBVkRPOHJVWElNcU5GblloeEJpcVM1RTc0ajB2?=
 =?utf-8?B?aEhvYkE5TmJPcVp0SU1oMytWaktaUDAvWmZETktTbm8wL2kvK1lHYml3T1NO?=
 =?utf-8?B?TXNtNmtPYjU1a0V0RXBRbGJWL2E3NlJqZUc3U0Zpc1l5RTlJdndKNDBIczR0?=
 =?utf-8?B?OW12bHJjRlNLR0Y2dEk4blI4SkhHOWMralFpaUdoZ2Uyd0pwd2JYOVhhUXda?=
 =?utf-8?B?Mmk0NWt5SWNBaHUwTks0SnZzOHM0MXphNlpaa2VYZnN0ZTFHejlUc2pZOVIz?=
 =?utf-8?B?ZnptSUZxS2FrWmY0WUVZVEhwby9QR0liOFpQaFNFdEdsZ1lhZklhdUR1byt1?=
 =?utf-8?B?UXBHS2gyYXVjQmZXamZpbi9QKzgzRENvb2VudTJQK2hmU0pZVUs4cVM2SFZ2?=
 =?utf-8?B?RWxVMkNNbjhvenp1RkgyYnpXS1EzTHNFZ2xVR3B6aWJDdWIremVmRVlMTXhJ?=
 =?utf-8?B?eWpjeTRwOWIrRkNsMi9INHk3QUVUdlRMRU1OZ3RNTlNNMXREelV3RVJyZmtL?=
 =?utf-8?B?UThTUGF4OWVLaVV6MjNZc1ZvWkw4WUgyajEvVGhmQW41bml1M09jQW9HN0tJ?=
 =?utf-8?B?NkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0df19fb6-5b8e-46b0-2107-08dcec666dfe
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 15:39:45.6802
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAvNbdcdvIX1/gVGC1FdNCJ9Rajd4DCRy+Atl/JkemnRe27KtLlOYVvBVM7FRQvQnGIPciV66dk+d00uNzjJppmbqRQ4HiT0D33NfGibZ7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_083954_212931_903EF0B5 
X-CRM114-Status: GOOD (  16.90  )
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

SGkgRHJhZ2FuLAoKT24gMTAvOS8yNCA5OjE2IEFNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVs
bG8gSGVpa28sCj4gCj4gT24gMjAyNC0xMC0wOCAyMjozOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6
Cj4+IEFsbCBUaGVvYnJvbWEgYm9hcmRzIHVzZSBhIHRpLGFtYzY4MjEgYXMgZmFuIGNvbnRyb2xs
ZXIuCj4+IEl0IG5vcm1hbGx5IHJ1bnMgaW4gYW4gYXV0b21hdGljYWxseSBjb250cm9sbGVkIHdh
eSBhbmQgd2hpbGUgaXQgbWF5IGJlCj4+IHBvc3NpYmxlIHRvIHVzZSBpdCBhcyBwYXJ0IG9mIGEg
ZHQtYmFzZWQgdGhlcm1hbCBtYW5hZ2VtZW50LCB0aGlzIGlzCj4+IG5vdCB5ZXQgc3BlY2lmaWVk
IGluIHRoZSBiaW5kaW5nLCBub3IgaW1wbGVtZW50ZWQgaW4gYW55IGtlcm5lbC4KPj4KPj4gTmV3
ZXIgYm9hcmRzIGFscmVhZHkgZG9uJ3QgY29udGFpbiB0aGF0ICNjb29saW5nLWNlbGxzIHByb3Bl
cnR5LCBidXQKPj4gb2xkZXIgb25lcyBkby4gU28gcmVtb3ZlIHRoZW0gZm9yIG5vdywgdGhleSBj
YW4gYmUgcmUtYWRkZWQgaWYgdGhlcm1hbAo+PiBpbnRlZ3JhdGlvbiBnZXRzIGltcGxlbWVudGVk
IGluIHRoZSBmdXR1cmUuCj4+Cj4+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiBy
b2NrY2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spCj4+IFNvTSB3aXRoIEhhaWtvdSBiYXNl
Ym9hcmQiKQo+PiBGaXhlczogZDk5YTAyYmNmYTgxICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFk
ZCBSSzMzNjgtdVE3IChMaW9uKSBTb00iKQo+PiBGaXhlczogMmM2NmZjMzRlOTQ1ICgiYXJtNjQ6
IGR0czogcm9ja2NoaXA6IGFkZCBSSzMzOTktUTcgKFB1bWEpIFNvTSIpCj4+IENjOiBRdWVudGlu
IFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+PiBDYzogS2xh
dXMgR29nZXIgPGtsYXVzLmdvZ2VyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4gUmV2aWV3ZWQtYnk6IFF1
ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gCj4gTG9va2luZyBnb29k
IHRvIG1lLCB0aGFua3MgZm9yIHRoZSBwYXRjaC7CoCBJbiBhZGRpdGlvbiB0byB0aGUgYW1jNjgy
MQo+IGRyaXZlciBjdXJyZW50bHkgbm90IHN1cHBvcnRpbmcgZnVsbCBpbnRlZ3JhdGlvbiBpbnRv
IHRoZSB0aGVybWFsCj4gZnJhbWV3b3JrLCB0aGUgImZhbiIgRFQgbm9kZSBhbHNvIGlzbid0IHJl
ZmVyZW5jZWQgaW4gYW55IGNvb2xpbmcgbWFwLAo+IHNvIGhhdmluZyBpdCBkZWZpbmUgdGhlICJj
b29saW5nLWNlbGxzIiBwcm9wZXJ0eSBpcyBvZiBubyB1c2UuCj4gCj4gQnkgdGhlIHdheSwgaXQg
d291bGQgYmUgbmljZSB0byBzZWUgdGhlIGFtYzY4MjEgZHJpdmVyIHN1cHBvcnRpbmcgZmFuCj4g
c3BlZWQgcmVndWxhdGlvbiwgYW5kIHRlc3QgaXQgdG8gY2hlY2sgd2hvIGRvZXMgYSBiZXR0ZXIg
am9iIHdoZW4gaXQKPiBjb21lcyB0byBjb29saW5nIGFuZCBmYW4gc3BlZWQgcmVndWxhdGlvbiwg
dGhlIHRoZXJtYWwgZnJhbWV3b3JrIG9yCj4gdGhlIGNoaXAncyBidWlsdC1pbiBsb2dpYy4gOikK
PiAKCldhc24ndCB0aGlzIGZlYXR1cmUgYWRkZWQgdGhpcyBzdW1tZXIgYnkgR3VlbnRlcj8KCmMu
Zi4gCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC9jb21taXQvZHJpdmVycy9od21vbi9hbWM2ODIxLmM/aWQ9YmVjYmQxNmVk
MmY4ZjQyNzIzOWZmZGE2NmI1ZDg5NDAwOGJjNTZhZgoKTW9kZSA0IGlzIApodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92Ni4xMS4zL3NvdXJjZS9kcml2ZXJzL2h3bW9uL2FtYzY4MjEu
YyNMMzY3IAooW0ZEUkMxOkZEUkMwXSA9IFswMV0gLT4gU29mdHdhcmUtUlBNIENvbnRyb2wgTW9k
ZSAoRmFuIFNwZWVkIFJlZ3VsYXRvcikgCmFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0KS4KCklu
IGFueSBjYXNlLCB3ZSBjYW5ub3QgY29tcGFyZSB0aG9zZSBmb3Igb3VyIHByb2R1Y3RzIGFzIHdl
IGRvIG5vdCBoYXZlIAphIGdlbnVpbmUgQU1DNjgyMSBidXQgYSBoYW5kbWFkZSBzaW11bGF0aW9u
IG9mIHRoZSBJUCB3ZSBydW4gaW4gYW4gTUNVLgoKQnV0IHRoYXQnZCBiZSBhbiBpbnRlcmVzdGlu
ZyBkYXRhIHBvaW50IGluZGVlZCA6KQoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
