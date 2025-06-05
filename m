Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93838C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 09:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+ldLjuiCTtpCKQBFCK/aGN9LZ8DuKaszbQJdkJdmGM=; b=US0a232tkqdR4MSCFwjYidm0EC
	bA26VD8ytUHMx4Ahs8kMbNR7uojTldG2bPtyY8Ju3bSQvhoZItTEfG7ZQjlwKk0Y2F1VJGKS7yUFP
	YlucP/GGBVLKzjy5FCX8XfO7ObDUsRLJVGFtqieAfVJO4b8sgixv4jSyT/BHt5IDn/DBDGLxE6ZbS
	9/kCcJNIZ4hx+IkbTCJufN4tgjLFjF0ye6PvizZ0i5HRLMTPKB5LLiekYq3pEpz/t0OjFTUEwKXLN
	DCz0dKxh9cQbu2DB/iMkA3co6F3p5dIm+rp9E0qKgXPDvIAKAINIAgnVYlLNa3uKfasp3kA/k0GVn
	4rnwR+FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN6aA-0000000F8H3-20uU;
	Thu, 05 Jun 2025 09:08:18 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN6Xw-0000000F7uy-32QP;
	Thu, 05 Jun 2025 09:06:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pfc8rnhBteURyP9JEgsXjPoWRP2mDwoVK0qr97eukednET5yFvNbOB5j7q9xQX3HvGUMoXxhq+TCSGNN3/vHXHE/lXZ2WXRu9Ua/S7AmwrrVG9BVXtzCioCsFVaeNRypZWvs7W5MfB77sPzIQtGgzKrxRKUg7JhcAClQt8n+gEbVSyqVaZd0dtIX+FYOif3FtVqR7u/QZc+Upra9QrEhJFrcdff8oS1oBubwIGX/pEXVQF4T4G8kxwCdJ9QGfmqjrrhXyo2Cgsb20xtHcI5S+nXSn0sd9lupBvWUQkRkiO+15PvpvqqSqMFm4fFFxRVQ8AyTX/eCtmM/VxfyqwuPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cFRuxW7NTZN/2ZGZzfZnUksUEo1HJBgvdfJYe0Zqygg=;
 b=OIsrEQH68TCxycGz5ZO0cIh1DzlupGSHiVo1Rox06CQdKglmjq7ffBxK+ImiXyeovhdZGQak0gnwYVaipNByxGhKpWTXrVwQsgu0dk73aCm5Y5sldJq4oWHeZizxvybxAbvXj/C2dgXi2bDHS/zSTQLYgtzG0jv20SeyAD30E/E9+EK2Ez8NFLjeVa418XMhkkKSp66gTOnndEdMT8QTUEF+sKhiZsmZ6jy3ropDkRu81YmUtwfBagV1qLnziSjsvyJdCi62oAqBFIhzT5YRRbMWmA3TK9gdyU/PHB1iVtFMd1kR+m3zIwhD1LPOUo/YTHhdGyDKP6816ieQcI9yYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cFRuxW7NTZN/2ZGZzfZnUksUEo1HJBgvdfJYe0Zqygg=;
 b=A260MWUThAS7G0YakwKgMo3s84TAIvjIBTtb2BIlcTQ00LvALmAp/HySeDWmudfVaSLLLVVzWMv3mPWKjzA7NDPR9CqOAYv1ky6fkn5ctl6yhZIw2lqZOlyOSE0OQBzlf5U0LSMCT99SQQe583qmE35e+Hm3UNXTeOE0pKz9EvE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI1PR04MB6910.eurprd04.prod.outlook.com (2603:10a6:803:135::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 09:05:54 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8813.018; Thu, 5 Jun 2025
 09:05:54 +0000
Message-ID: <a0202e76-4931-4061-9915-5fae50d3abdf@cherry.de>
Date: Thu, 5 Jun 2025 11:05:53 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add regulator-enable-ramp-delay to
 RK860-2/-3 regulators
From: Quentin Schulz <quentin.schulz@cherry.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: jonas@kwiboo.se, dsimic@manjaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250604202425.239924-1-heiko@sntech.de>
 <e4a1bf0a-0fc5-4c15-96dc-7e9c7ae3ccd5@cherry.de>
Content-Language: en-US
In-Reply-To: <e4a1bf0a-0fc5-4c15-96dc-7e9c7ae3ccd5@cherry.de>
X-ClientProxiedBy: FR2P281CA0172.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI1PR04MB6910:EE_
X-MS-Office365-Filtering-Correlation-Id: 9620f638-3112-412f-0121-08dda4102d3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anlsMnArNlhKdFJFL3RhaXR6RC9UL1d2N0ZLeWxHcUpERitaTTVMdW05bjdS?=
 =?utf-8?B?V2pmcWlKSzk5dEsyamlVTzNMa0NibU1rcTk1Sm5hV2p1Y1dKaXNTcmM4Z3hs?=
 =?utf-8?B?VStQVnNDQXNuTzh3ZGsrZGFYajljb2liSllnc3dmL1l6UjZ0K0lvcmUrYzlJ?=
 =?utf-8?B?WHhGeTJ6OXZieHBWbktQUmN2L0RrdHFQYlJxOGxrU0lKS1hXUVMzQktBL01W?=
 =?utf-8?B?dUhQUDR4b3Vydm5VTEphOW00Um5qcDlyZzNSV08xcHNLQkY3YXI1aVk3c0Mw?=
 =?utf-8?B?SFUzV0ZYc0VzbnNETjUzNUhqMzBUTEFkbW9tWCtvQVRCa2FUR0NITDlLZlZ3?=
 =?utf-8?B?T0o4VW1mdCtqOHh6SW8vNURtRGVUNkpOZ3ZkZkhvM1ZlQTVOdyt3QmR5b3NL?=
 =?utf-8?B?LzFXd0pCeVE1em8vNzRITmg3c0Z3ajg1Y3NwYnFpY05rT2xoNDQwRG5LcEZl?=
 =?utf-8?B?eFVZeFRLa2pSakFzOXNrYS9GWlFBY0ZxTm1FdUZ0ZHdhREZFbXE4Y0xJVjJZ?=
 =?utf-8?B?RFVVYVV2bTBuMFNGL3N3ZlBHRW5rM01GMXdOaStIWE10dnFYbjRpeXFYNG9B?=
 =?utf-8?B?TU5lYkNrY1VDNGlMdEtyalBnamhhTzRKOEl2UE0wdEJadEtmTkZiWVp3ZVN4?=
 =?utf-8?B?cHRqOGZxeW5wclE2Tk9EQlFvZlE2dnRQNGoxKytyekRhenJiQ0VQRFlnUzJU?=
 =?utf-8?B?Mm9ka21HUkZlL3VndkU3bEZiWlhQV3ljZTROcElmT05XSzk0THBEUHZYeEFv?=
 =?utf-8?B?L252WlZ2SXNlVEVJQTZpVGtsVlNJZTNsQ2JQU01JbS90MHRrcE8xcHIyT3Q5?=
 =?utf-8?B?L05lSFR6VUg3clM1WDBKcHIwWW9vQXBSa2F2U3ByTUtybUVYbUVKT3A0bFk3?=
 =?utf-8?B?VzhHR3FabVJrS0ZQbDRMM2pteEFCVG81Q1pYbURkY2hlWXIwQU5tU0lvdnRj?=
 =?utf-8?B?YTRNM0pMVkpSQ1hleGxCei9tUFVQdldCTnNaRjlJbFVvT1NZdWt0N0FYMW45?=
 =?utf-8?B?VDdQY1k3ZnNRMXFEVjh3S3VIc2R5Y0lIWFlqYk50UTYwRXZ1UEJlMWRvUkRC?=
 =?utf-8?B?RnJFNG0yaEZJWVNrVjZWa1dmYVBnWVUvL3BCWnhvUEZZL3gzamtXZllSMXI1?=
 =?utf-8?B?TUU0VDROYVB5dWFLd3dUMXdGTm1HeUZCVUE0bVZBSkVleWpJUVc2ajdXci9h?=
 =?utf-8?B?V0JTZGVlR2xkZTgrc0txWTVTN0U4MFloL2xoQ0Z1U0tlWENtZ3JpMDJEM1Nk?=
 =?utf-8?B?bzNmMkFxNkhVbHh6ai9IT2NnMjIrUFpRb2UyQVZuT000T2d5eFBOQS95ZTgx?=
 =?utf-8?B?cFNQVlgwTW9ISVJhWE1yNXpJWWFsYWI2L3FmYXZqaDhWdnR3VWpoTXhqNVlx?=
 =?utf-8?B?bkFpMzFJWUNkbXhzaU85eW9vUEsveld6R0k2dDhGY3Bac2gzY1RtbGUrQmhx?=
 =?utf-8?B?N1pZSG51V3lXWkxEK3BoUll2ZnV1QkJTbGZHZVlwZVdiWWtEd1liZ1dNT2h1?=
 =?utf-8?B?eVhOelZNUTVDWFFFNEpsMi8ySktvNEUveEZOemt6d09MSnpodmZTcytWVGxZ?=
 =?utf-8?B?TFRPdFNlOUVkTjlKd1dOT0FiQkYzVkxERUhrRElZMktmV2tOdS9sbnJ6R1E4?=
 =?utf-8?B?bEpqSSt5azhuWGtBRUFOZWJ5NDRGMGx6NlUyNmp6b01uYmU3d0RHM21SYWl3?=
 =?utf-8?B?T0h1VGxYM1h3Y21nNndBLzVlakpTK2dMZmZsNU44NlJQL1N3dTAxa3hQTG02?=
 =?utf-8?B?OUVUenJ5aVJ4V1RyZnJaejVpRVcvaEZOM245aDluVjlZV0VZdkVYNytOS1BC?=
 =?utf-8?B?RnBKN3JnWGw1Nms3Y2lFY2lEMUNMVTEwNDdQVDFTZENON0JyZW81NEJJOVpL?=
 =?utf-8?B?bmRyNzJyM3A1akEvVlovMWJzQXBLcDNNNVFKSW5jQmR4cjB0cEFYb3NHL2Q0?=
 =?utf-8?Q?s+PiPImdsTY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3VSRkJsaFlWR0ZmZ3dsYUtjc3BWVzV4SmtmbHRLbmVQdmVqVXVzUFdwUVZN?=
 =?utf-8?B?NXN4L3R4UlJaellKOWlRZ2Z4d3JaQ0I3VEIzdzYzQ3FUbXpqeHhFWnNVL0Yr?=
 =?utf-8?B?aE9OMTN4QTBxQ3dYMEpXZm42WkNFRWNYSUFGcW1sQ1Y4a1JHSEZlSUpYZ2R4?=
 =?utf-8?B?c0hWb0l4VHdwOFdMUFFuY2IxNHJzK3RxOWhOYUw0OXV0OFRNemVpT2orWXdP?=
 =?utf-8?B?TVN2L2x5Z3NJemFqRUZITCtVQy9YNzRaMUs2TjJUQURYOW43dGowS054UUM2?=
 =?utf-8?B?WjUwZSs1L0Y1UlE3VG1aN2JmaWlla2pTT01RTUMyUjVJQTJBRnI5MUFKRDEv?=
 =?utf-8?B?UXh5bE1aV1ZDT1R4aEMzNVk1bTB4bXQ2QnBSd29EMzNxQjF3eWNYT3BqNnRQ?=
 =?utf-8?B?TVV2UzZzQWViMDJsSVE2SUJ2eks4dlhNN05sbm9hbXJQdzREa0VtY1hpc3ZC?=
 =?utf-8?B?RmRQaXVyNWFjR2NiY0E5YkVHQWcxclFuRHAxMzJvakc4YllJSlhiemFDZkVz?=
 =?utf-8?B?ZnEvTC94TGJiY3E1SGF2NmNPdU16bTBiYzVFa2JzVmVreW9GQ2hHMitCKzND?=
 =?utf-8?B?L3g0MnZ3Yjhia3B1V3oza2xyQTJrbThEQzJPdk51T0xEck02ZFRRNEtKSDJI?=
 =?utf-8?B?R3IrWUhUYklxRE95MkQ5WUptOVl2UitZWkUvNW9XWWxCWU9nVklDeWl3bVpN?=
 =?utf-8?B?STcxcXMwQkU2dGp0amdQYUV6ZGltTVRRTHRTSUY2cVFPUTg1T0pRdzBITXpJ?=
 =?utf-8?B?b1I2VFRSL0xuMHFGY0FNQzZkTW0vZVpya2xDSEVpU0xEYUtQT3o0NU9TZ1VM?=
 =?utf-8?B?blFPZ0kzeVVNR3lZbFpuWklIdlkvVVkxK1pCeXdkb0hvZlMwTzhHQTc0U3BF?=
 =?utf-8?B?WGxtUTMwQTJieUt0bmNEME5QRWhrcVFvY0liZDd6TEdEYlhRTklPYUZaWHRK?=
 =?utf-8?B?VDRnMTl1Z1p3Y2IzQllSL2g1V1dRUTlZcktWak9WZXRTemhYdzlWa2NqK25H?=
 =?utf-8?B?dUxSL2hxV2QrOGc4Rnp4cDMyM0NhRGtVWXFWUFZvbVlHS3N6cDVRSzF3UXdD?=
 =?utf-8?B?bGFaMGk0ZkRBNmNCOE4rMTIvTXoya1RvTURMaHZzeVVGZWZIM1VKMzVDbjBN?=
 =?utf-8?B?TS9VN1BnK2E1ZVhZU0RUbWdlWWZZekY3S0NYQXp2bWNLQW4wcFYzRUxKOGxL?=
 =?utf-8?B?ZnpTcmdmVDd4ZUNCK01nNWJ0RzhXalc1VDZhTmQxMlV5S2VodFJRL0hGNlBW?=
 =?utf-8?B?Z0xqSmdiY05Pb21BcVJTM0dRdnpLdTI2VHlMeWYzdlgvRk1wT0hwOTVvdUpT?=
 =?utf-8?B?aU5XYVExTVBXcUdOcXI2WVNpY3dnVXEwKy9TNmk5NTFYZEYyeThkM1RXaHlT?=
 =?utf-8?B?RGQzMXpEVTloRTJ5WHpGa0JING91S0xjZWdlaTRENFR2VkhwQnRJc0hrTXA4?=
 =?utf-8?B?eWhIMkllR1pFdThGbGxpSkJmcklSekUyOEtoWXJ3S0pOMkx1VWwza2JNWWNs?=
 =?utf-8?B?UVI2M3VkL2oweDkxajhpQUVvSHVrU3F4YjBnZURjNit0Yk90elJlbUdHUDhS?=
 =?utf-8?B?WU1oZDZDNmc2VU0vQ01kZ0xnbm9EbGhZZzdkSk03Q0paMlhVRlVRdHhPT0c5?=
 =?utf-8?B?MVNuSFFqZmFXTzEyZllxaWN6L2c2cE41TUJvSzEyUjVmNzU1QVY4elZhUUdp?=
 =?utf-8?B?K2psbmY1ZHhYWjVOTmpxd01kOEJnaURPY3VPOUdDODFpczJjVThRWXc1SmMz?=
 =?utf-8?B?Q1NlL3NBWkd6N0UvTXZPWXpTZjk0WXNkSnJBOWVuSGxkc1c2cXFhWjRZRnBT?=
 =?utf-8?B?S1VrZzQwUUkxa0U5WFpUQlZab3hHbkhVWmN2V0V2QVoyRzEvTU44cSs5WjlU?=
 =?utf-8?B?cWMvcjI4OGN2alhtZjJkYllZdjRDbG1QMjZZMm9SWC9qUEd5emJOdXhNYnlh?=
 =?utf-8?B?QlA4UEVwblZoTERGbVd2UU83MXMwSUN5b1E4a1lDS2Q0QS9LR1ZqVFJYVkli?=
 =?utf-8?B?UmxZTHN3WHFhNFBkbnJlMkZVSEN3OHpZLzdoWWJsRHAxaHBiMzF3KzVVdEMr?=
 =?utf-8?B?ajhmSHlUcUkxc0RrYkJqbm5xNHYzYldhSGR0UjlPWjUvUHpHMGN2QUNLNkVa?=
 =?utf-8?B?SkhBK0tYbHVnTkl6NEtnRlBBN09EcTNrd21ZNEVoNm1ZMmlkV0g3Tm16dDZ5?=
 =?utf-8?B?MFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9620f638-3112-412f-0121-08dda4102d3e
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 09:05:54.5771
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m+bnS1Q8U8y/w6Aab5xiAv9NMJTHFzJvE4kIyMQJ6gJD78X0Vvc80eBkoMCeCyta6Ve4fqzImuSDUHq17AxXYgObD29XZQyLAWapX0hc/2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6910
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_020600_764985_9CD9484F 
X-CRM114-Status: GOOD (  37.16  )
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

T24gNi81LzI1IDEwOjU3IEFNLCBRdWVudGluIFNjaHVseiB3cm90ZToKPiBIaSBIZWlrbywKPiAK
PiBPbiA2LzQvMjUgMTA6MjQgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+PiBUaGUgUks4NjAt
Mi8tMyByZWd1bGF0b3JzIGFyZSB1c2VkIG9uIHJrMzU4OCBib2FyZHMgdG8gc3VwcGx5IGNvbXBv
bmVudHMKPj4gbGlrZSB0aGUgYmlnIGNwdS1jbHVzdGVycyBhbmQgbnB1IGluZGl2aWR1YWxseS4K
Pj4KPj4gTW9zdCBvZiB0aGVzZSB0aGluZ3Mgd2lsbCBiZSwgYW5kIGluIGZhY3QgbW9zdCByZWd1
bGF0b3Igbm9kZXMgcmlnaHQgCj4+IG5vdyBhcmUsCj4+IGFsd2F5cy1vbiAtIHByb2JhYmx5IG5v
Ym9keSBoYXMgdHJpZWQgY29tcGxldGVseSB0dXJuaW5nIG9mIHRoZSBiaWcgCj4+IGNsdXN0ZXJz
Cj4+IGZvciBleGFtcGxlLgo+Pgo+IAo+IFRoaXMgaXMgYSBiaXQgb2YgYSBjb25mdXNpbmcgd29y
ZGluZyBoZXJlLiBJZiBtb3N0IHRoaW5ncyB3aWxsIGJlIChhbmQgCj4gYXJlKSBhbHdheXMtb24s
IHRoZW4gdGhlIHJhbXAtdXAgdHlwaWNhbGx5IHNob3VsZG4ndCBiZSBhbiBpc3N1ZSBJIAo+IGFz
c3VtZT8gSSdtIG5vdCB0b28gZmFtaWxpYXIgd2l0aCB0aGUgcmVndWxhdG9yIHN1YnN5c3RlbSBi
dXQgSSBndWVzcyAKPiBmb3IgdGhlIGZpcnN0IGluaXRpYWwgZW5hYmxlIHRoaXMgY291bGQgYmUg
YW4gaXNzdWU/Cj4gCj4+IFRoaXMgY2hhbmdlZCB3aXRoIHRoZSBuZXcgTlBVIGRyaXZlciwgd2hp
Y2ggZG9lcyBjb21iaW5lZCBydW50aW1lLSAKPj4gc3VzcGVuZHMKPj4gd2l0aCB0aGUgcmVndWxh
dG9yIGJlaW5nIHRpZWQgdG8gdGhlIHBvd2VyLWRvbWFpbiAoaXQgc3VwcGxpZXMgdGhlIHBkKS4K
Pj4KPj4gSWYgdGhlIE5QVSBydW50aW1lLXN1c3BlbmRzIHdoaWxlIHJ1bm5pbmcgYSBsb2FkIGFu
ZCB0aGVuIHN0YXJ0cyBhZ2Fpbgo+PiBoYW5ncyBjYW4gYmUgb2JzZXJ2ZWQgd2l0aCBtZXNzYWdl
cyBsaWtlCj4+Cj4+IMKgwqAgcm9ja2NoaXAtcG0tZG9tYWluIGZkOGQ4MDAwLnBvd2VyLW1hbmFn
ZW1lbnQ6cG93ZXItY29udHJvbGxlcjogCj4+IGZhaWxlZCB0byBzZXQgZG9tYWluICducHV0b3An
IG9uLCB2YWw9MAo+Pgo+PiBSZW1vdmluZyB0aGUgcmVndWxhdG9yIGZyb20gdGhlIGRvbWFpbiBh
bmQgaW5zdGVhZCBzZXR0aW5nIGl0IHRvIAo+PiBhbHdheXMtb24KPj4gImZpeGVzIiB0aGUgaXNz
dWUsIHdoaWNoIHN1Z2dlc3RzIHRoYXQgdGhlIGRvbWFpbiBpcyB0cnlpbmcgdG8gZ2V0IAo+PiBj
dXJyZW50Cj4+IGZyb20gdGhlIHJlZ3VsYXRvciBiZWZvcmUgaXQgaXMgcmVhZHkgd2hlbiBpdCBn
ZXRzIHR1cm5lZCBiYWNrIG9uLgo+Pgo+IAo+IElmIEknbSBub3QgbWlzdGFrZW4sIHRoaXMgaXMg
YWxzbyBtaXNsZWFkaW5nIGFzIG5vdGhpbmcgY3VycmVudGx5IHVzZXMgCj4gdGhhdCAoTlBVIHN1
cHBvcnQgbm90IG1lcmdlZCB5ZXQgYW5kIG1vc3QgaWYgbm90IGFsbCBOUFUgcmVndWxhdG9ycyAK
PiBjdXJyZW50bHkgYXJlIGFsd2F5cy1vbiBzbyB0eXBpY2FsbHkgbm90IGltcGFjdGVkIGJ5IHRo
aXMgaXNzdWUpLgo+IAo+IEkgYXNzdW1lIHRoaXMgd2lsbCBiZSBhbiBpc3N1ZSB0aGUgbW9tZW50
IHdlIGFkZCBzdXBwb3J0IGZvciBzdXNwZW5kaW5nIAo+IHRoZSBOUFUgcmVndWxhdG9yLCB3aGlj
aCB3b3VsZCBhbnl3YXkgcmVxdWlyZSBtb2RpZmljYXRpb24gb2YgdGhlIAo+IHZhcmlvdXMgRFQu
IElzIHRoYXQgY29ycmVjdD8KPiAKPj4gQW5kIGluIGZhY3QgdGhlIGRhdGFzaGVldCBmb3IgdGhl
IHJlZ3VsYXRvciBkZWZpbmVzIGFuICJJbnRlcm5hbCBzb2Z0LSAKPj4gc3RhcnQKPj4gdGltZSIu
IEZvciBhIHRhcmdldCBvdXRwdXQgdm9sdGFnZSBvZiAxLjBWIHRoZSBfdHlwaWNhbF8gdGltZSB0
byByZWFjaCBhdAo+PiBsZWFzdCA5MiUgb2YgdGhlIG91dHB1dCBpcyBnaXZlbiBhcyAyNjB1Uy4K
Pj4KPiAKPiBJbmRlZWQuIE5vdyBsb29raW5nIGF0IHRoZSBleGlzdGluZyBEZXZpY2UgVHJlZXMs
IGl0IHNlZW1zIHNvbWUgc2V0IHRoZSAKPiByYW1wLXVwIGRlbGF5IGFscmVhZHksIGJ1dCB0byAy
MzAwIGFuZCBub3QgNTAwIGxpa2Ugc3VnZ2VzdGVkIGhlcmUuIAo+IE1heWJlIGl0J2QgYmUgc2Fm
ZXIgdG8gZ28gZm9yIDIzMDAgYnkgZGVmYXVsdCB0aGVuPyBUaGlzIGNvdWxkIGFsc28gYmUgCj4g
dGhlIHR5cGljYWwgInRoaXMgRGV2aWNlIFRyZWUgZ290IG1lcmdlZCwgd2UgdXNlIHRoZSBzYW1l
IG5vZGUsIHNvIHdlIAo+IHNpbXBseSBjb3B5IGl0IiBjYXNlIGFuZCBub3QgcmVhbGx5IGJhY2tl
ZCBieSBhbnl0aGluZyAodGhvdWdoIEkgd291bGQgCj4gaG9wZSB0aGUgVG95YnJpY2sgYW5kIFJv
Y2tjaGlwIGV2YWx1YXRpb24gYm9hcmRzIHZhbHVlcyBhcmUgYmFzZWQgb24gCj4gKnNvbWV0aGlu
Zyogc2luY2UgUm9ja2NoaXAgd291bGQgKGNvdWxkKSBoYXZlIGRvbmUgbWVhc3VyZW1lbnRzIGZv
ciAKPiB0aG9zZT8pLgo+IAoKSSBoYXZlIGJlZW4gdG9sZCBieSB5b3UgaW4gcHJpdmF0ZSB0aGF0
IEkgbWl4ZWQgCnJlZ3VsYXRvci1lbmFibGUtcmFtcC1kZWxheSBhbmQgcmVndWxhdG9yLXJhbXAt
ZGVsYXkgZm9yIHRoYXQsIHNvIGp1c3QgCmFja25vd2xlZGdpbmcgaXQgcHVibGljbHkgOikgWW91
IGNhbiBpZ25vcmUgdGhlIGFib3ZlIHBhcmFncmFwaCA6KQoKPj4gU28gdGhhdCB2YWx1ZSBpcyBk
ZXBlbmRlbnQgb24gdGhlIHRhcmdldCB2b2x0YWdlICh1cCB0byAxLjVWIGZvciB0aGUgCj4+IHR5
cGUpCj4+IGFuZCBhbHNvIHRoZSByZXN0IG9mIHRoZSBib2FyZCBkZXNpZ24uCj4+Cj4+IFNvIGFk
ZCBhIHJlZ3VsYXRvci1lbmFibGUtcmFtcC1kZWxheSB0byBhbGwgcms4NjAtMi8tMyBub2RlcyB3
ZSBoYXZlIGluCj4gCj4gTWF5YmUgbWVudGlvbiB0aGF0IHRoZXJlJ3MgY3VycmVudGx5IG5vIHJr
ODYwMSBub2RlIHVwc3RyZWFtLCBhbmQgdGhlIAo+IG9ubHkgcms4NjAwIChhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaSkgCgpCYXNlZCBvbiB0aGUg
YWJvdmUgcmV2ZWxhdGlvbiwgd2Ugc2hvdWxkIGFkZCB0aGlzIGVuYWJsZS1yYW1wLWRlbGF5IHRv
IAp0aGF0IERUIHRvbyBJIGJlbGlldmUuCgo+IGFscmVhZHkgaGFzIGEgcmFtcC11cCBkZWxheSBj
b25maWd1cmVkLiBPdGhlcndpc2UgcmVhZGluZyB0aGlzIEknbSAKPiB3b25kZXJpbmcgd2h5IHRo
ZSByazg2MC0wIGFuZCByazg2MC0xIHdoaWxlIGJlaW5nIGhhbmRsZWQgYnkgdGhlIHNhbWUgCj4g
ZGF0YXNoZWV0IGFyZSBpbXBsaWNpdGx5IGV4Y2x1ZGVkIGZyb20gdGhpcyBjaGFuZ2UuCj4gCj4+
IG1haW5saW5lIHJpZ2h0IG5vdy4gSSd2ZSBjaG9zZW4gNTAwdVMgdG8gYmUgb24gdGhlIHNhZmUg
c2lkZSwgYXMKPj4gMjYwdVMgaXMgdGhlICJ0eXBpY2FsIiB2YWx1ZSBmb3IgMS4wViBhbmQgc2Fk
bHkgbm8gbWF4IHZhbHVlIGlzIGdpdmVuCj4+IGluIHRoZSBkYXRhc2hlZXQuCj4+Cj4gCj4gUmVh
ZGluZyB0aGUgcms4MDggcmVndWxhdG9yIGRyaXZlci4uLiBtYXliZSB3ZSBzaG91bGQgYWxzbyBz
ZXQgdGhlIAo+IHR5cGljYWwgZGVsYXkgYXMgZGVmYXVsdCBpbiB0aGUgZmFuNTM1NTUuYyBkcml2
ZXI/IFNlZSByazgwNV9yZWcgd2hpY2ggCj4gc2V0cyB0aGUgZW5hYmxlX3RpbWUgZm9yIHNvbWUg
KHR5cGljYWxseSB0aGUgTERPIHdpdGggNDAwIGFuZCB0aGUgRENEQyAKPiBhdCAwKS4gSSBhc3N1
bWUgdGhvc2UgY2FuIGJlIG92ZXJyaWRkZW4gZnJvbSB0aGUgRFQgYW55d2F5LCBidXQgYXQgbGVh
c3QgCj4gd2Ugd291bGQgaGF2ZSBzb21lIGRlY2VudGx5IHNhZmUgZGVmYXVsdHM/Cj4gCj4gSWYg
d2UgZG8gbm90IGRvIHRoaXMsIHRoZW4gd2Ugc2hvdWxkIHByb2JhYmx5IGZvcmNlIHRoZSBwcmVz
ZW5jZSBvZiAKPiByZWd1bGF0b3ItcmFtcC1kZWxheSBwcm9wZXJ0eSBmb3IgdGhlIHJrODYweCBE
VCBiaW5kaW5nIHNvIHdlIGRvbid0IAo+IGZvcmdldCBmb3IgZnV0dXJlIERldmljZSBUcmVlcz8K
PiAKClJlYWQgcmVndWxhdG9yLWVuYWJsZS1yYW1wLWRlbGF5IGhlcmUgaW5zdGVhZCBidXQgc3Rp
bGwgYXBwbGljYWJsZS4KClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
