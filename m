Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DC6C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 09:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q1KFWb+rvEvH1nk8RW2nbIj41ZIwb2zLeFe0dkZCBlM=; b=ClNLcQd1P5ssLlRrRng0OCG2+T
	fhdrpNjsWneYkVdqmp54y0hfRSe5Up0eSXRKt/hYSbr5Gc4kWTfRMKu3RLucpAPjstL6W5ZTo+aqZ
	yMY8Aq1PrxD2lbt1CsUIBj64rRAJij5toLEUjTLrKx9tnyT3AtpzFRwf0mubKC5v1Sf8qqfZN1JcV
	7KKWIC6cfe0Ka6VzVtr/uDBryTHmBeZxpNZk0/WypnJA4ZTGkuObbW6WUr4HUXcuE2ntOOBfT8JKL
	8fixhzOS6oK/TRdARt4dbOOZ/K8xWFedWi5+y/iI3aoNpKxtt5tV9+PuCK/wacD4i2NBrbuL7yWXs
	DOZeNuHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypdn-0000000CqGn-018i;
	Mon, 22 Apr 2024 09:07:11 +0000
Received: from mail-dbaeur03on20700.outbound.protection.outlook.com ([2a01:111:f403:260d::700] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypdg-0000000CqDM-2yEw;
	Mon, 22 Apr 2024 09:07:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8CcXbinK1bjyguSClsVMAJbRAH4wPKtAh23bMBeO5BsRPGeShUivAZNzVWDAWzrX4E1diaS2sbj13rC5rikpTtKTbTx0HR5ar9blGyLZ571qWBqaiJ6CO2DshqstMShzwV4cF1fNWtdWUF/yaaonWMkzL3HGGGmFlWYEpTqFkxp1uysnqMpt0GFT9dxSSBNP9xTrVTT+F8Z+V7tN2C/t3Cqc4XOYPG3GLU+zSGrrdhAOrHr0P21hT0F1XJ9HCZzR/tJpWOg0/9Hc5BZ4YE5gUu+7eeEqX9OSkf89/9Q7zCY2Jdhr0KqzwKYbSGCtTEOay/Lu2ayoYqW4QYucRW8WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9mpXqHizG4Ow+lZlnWEYfEEA5EaDebJxHqoD7DxN0AI=;
 b=UgRA1a9K/NUKwVwaZ/5YevdGp1a6eEB1jPdMLR/dbtaKO44jaPUoRefSyOYLsXFSd2/gIwxIOXpaKdX/zmIz+MyhkWRZjK34vt1V3SNrkn2SUoNVB3TB9ElVY/dMe+KEQgzn9v4MxA6VatE8IhEkdSROxlo6eJ6+QEsIaWuKAaJwaTAoIh07s280ruKh9e3r34HAR7S9sXi14axLKCe/a08h/8SGSTmmkdXsrUSvmB3Y5Eg9sq/273XI4syvob5Jn5mbrVH68mWXzLWNCV4SC8uLtEx8GL6HHbatxNjiWxY50HhDsBe0zI5wpwSguPodljfemxbQAsrYaoSfAHi4ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9mpXqHizG4Ow+lZlnWEYfEEA5EaDebJxHqoD7DxN0AI=;
 b=F7U5sWLDMv3KK3QK+uBT2bxDobUX/MmKR+Kln7ZJ+dSYwpbb5XOK/nu4H0zgwqzgJ2AK5WjeOQVRrkhKCLZksucfbsdOjG2cIGdyHIIUhZpWk64JhS794KDOpvrneeHyKKxzziu9Zm7wKi4YyOnzKbtgJp5oO6vlP6eiXiUI85su4qO2Fx2tAiAZqQKHaZxT/UON+ezh4ww3afrDa9hXSf3Zp6ScTG0vKC4/vDS6UYAeKxsLyHejjbpZw4E13CoPz8XFPTCj8Q9dKvORWP2G9RrLZmMlnj3Dq5r6B1oUxAC8eOX4/5rbQqWR7VqzrR+1E8ybnJk3Xu1e96SqOkm1IQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by DU2PR04MB8613.eurprd04.prod.outlook.com (2603:10a6:10:2d8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 09:06:59 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 09:06:57 +0000
Message-ID: <74f2bd5b-8e2a-4915-a60b-f4f9d04981a4@theobroma-systems.com>
Date: Mon, 22 Apr 2024 11:06:55 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add dual-role usb3 hosts to
 rk3588 Tiger-Haikou
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240418210332.2394871-1-heiko@sntech.de>
 <20240418210332.2394871-3-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240418210332.2394871-3-heiko@sntech.de>
X-ClientProxiedBy: WA0P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::28) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|DU2PR04MB8613:EE_
X-MS-Office365-Filtering-Correlation-Id: ac46bf3c-3f19-42bf-c9df-08dc62ab8ff1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2RWMm92VTJ4WEFBanZNaUEzNDRjQXJrbU5lOWkyM01abkY4d2JkcTExb0hp?=
 =?utf-8?B?ZGFQUFdzMXVJYnFGUnNDaTJMYlpzUVNQTTlqQzh5L3diU0gzR3AyYWZxSmY3?=
 =?utf-8?B?ZXUvbkJSNERHSHNzMEY5OXRCOUhaUWwwWFcza0FrNWZCZVhYbnVSM1c0TVBn?=
 =?utf-8?B?cDNML1dnbThGTmlFZjE0N3c5Tmw0R29FZm9uY25OUzBzZTZZYkJpTENvYVJD?=
 =?utf-8?B?RE5OSlVWTGQ4RFo5dHRMS2UvSXNnaGExbk9XSFZ4MTlybjlSYlBCRlNDL2Vo?=
 =?utf-8?B?SGVVbnNaejcxYnU5YytKRENsK3Y2KzNvMk41ZWFGYURMSHZIWnBTQTUrNkt5?=
 =?utf-8?B?MGJPWDkrSko4UEdtOEI2ZXlJcUtlVk85VEJ3V2tNSGd5WWhEL205Y2FVZnRM?=
 =?utf-8?B?R1JCTTlxOFBQUm9iaERrWFNXbFVCMmVyTVJPMk1aY2NFR3U2RktSTTBZUXJ6?=
 =?utf-8?B?VTQvR01HSE56ejV3Vm10Y1FmbFM4NGIyQkRTODF1azczS1JEQ0k1TU1PRjVH?=
 =?utf-8?B?RHE2R0RLMEplNzlqaUJTK1JRQndXRW9qVXM3cU9MZm1jT3hYenJPQlRmTGhY?=
 =?utf-8?B?SEdEUzJxVmxyUGV4YXFaZitSQnpwcHdmQnQzdEZpZ0hjWkZqYTNISWduc1dT?=
 =?utf-8?B?akNxVWo3WVlYNHNQdjRoMDNyMUEwNFpacFNDdkV2QVF4L3lVS1pIb01UQjRY?=
 =?utf-8?B?TXA5ZGFHalFnazR0YXo0cVYrSzBsRk95MjNobEc5bDRqOHdKVnFkdFB0L3pz?=
 =?utf-8?B?ZThwVmh0UkpoUTRDWkZmdHlQSkxtUWh1VnZpS2wyR24ySmVQYXpaSWFMREFu?=
 =?utf-8?B?MUs0bnhpT0hDQ01FSWtNWnMrUDVqZ0IxSnVNUUJUT0dKNXU0V3BjQktTK2Rr?=
 =?utf-8?B?V1A4VUM3RExuMzZXMmhNalhaVk1YTHZ2WURnLzBLa3R5V3ZWUExpVklLWHFi?=
 =?utf-8?B?Vk1kS1ZXZVVGVUN4TnQ2djFMZXN3ZWdqNkRobHhjOTN6RHpWUlNtcVk3dmo1?=
 =?utf-8?B?Zy9jZCtSUzgwYkFmcmREL2J5M0Zxc2RsL0NLUEs2LzZVTEJpWXRGdnlyT2Nj?=
 =?utf-8?B?Y1RMU2VjY0szbkxnTjU4cEhFbVdYVUhVdFA4RFJKWnZCTXNvSEJvMWlSVk1y?=
 =?utf-8?B?M01kdzk3aWg1MURFNzdUclVWOEdpaWFhRTY1VWZ3eUc2aGRUUVkrTHd0VGM4?=
 =?utf-8?B?dXd5bktlUHFLc0JncGtPbzd5NVNSNVllQ2lwUEkzNW5uYXJ4dTdiOWtPeUE3?=
 =?utf-8?B?MlhpalZOS1hCQWVVRWhrT2hOMUpkRWt3ZmFVU1RsRDhETGUvSDJtQnB4NE9u?=
 =?utf-8?B?SmZPWTlPSGVvcVpxVDNVeW05a2RFVjRQbkMvcE1yNVpqK2gzQ2dXSjJsTmsr?=
 =?utf-8?B?ekZOa1ZXd2hKU09mNGlaYTRmaE9QK2NmNDdwYlFJYVptdmp1THRxQ1R4VkNz?=
 =?utf-8?B?N3JvZW9sNFNUNXRvNnE2WXlKVmRIUFFvQkdvOFA5Q2E4S3lzeUhxOFBHY1pi?=
 =?utf-8?B?ZmtyQ1RwSk9UV2VlRklrMUIzdU5EbmNiczJLOCtQNnRzSnphUXpSQjVsK1V4?=
 =?utf-8?B?a0g0dmEyVm1FOTc5VXdDVE5RbDRJaVpSTjFuZnowUUduOFMvd3lOcThFZDFJ?=
 =?utf-8?B?bXlZL3R3cHhrdFM4eVVqeFowazNqUUUvWE5wQVlLdW1RL1E1Z0VrSDdKS2hJ?=
 =?utf-8?B?bUsrQUdpWi9xejFCM0hpdEZYeVJlZ3JGRUZtZmJtRGpEblQ4eGhTa2N3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzNNWlc0T2NJRU5yK2x5YnNQWVBWMFk4Tzlta0ZkVWNGeXBGSFFGWDJkdWFi?=
 =?utf-8?B?NlpmNUxlVk5SM09yVmJ2U2xZZGV4SW1qeHVwK05rdzVkWU45ZmZ4M1pMMDFD?=
 =?utf-8?B?aG5LRmUxbmVEaVlRcnErNStsd1FIL1Bsc24vVzlvMzFzZmIrcDE0Nythd3c4?=
 =?utf-8?B?ZUQxRzMvMnZ0bjVJZkJkSEpTTkVCZ3VEQm81c2dVZUZWaVpKaEZvVk9CdGFF?=
 =?utf-8?B?eW1LQUNpbU5pL1VDeW9LOE5YQWhYT2NIeXoxdjFwZkhHbytrYnBOZDdjR0tM?=
 =?utf-8?B?UkJHekE1d21IM0RLeGhCWlJuUG13aFdUQWNtT0RHbkxxbXNvWmJoYUREK29M?=
 =?utf-8?B?aGhtUlh4ZzczL0cxYS9yMEl0cDdINW84SkpuM0pGSVBEamlQNXJ4N29aVmt4?=
 =?utf-8?B?NkVrQ3c5NkFVZ1RNUk5FbnMzdkhITWZ4SWowclpjTVdQbnhMa29TSzQ2bEdY?=
 =?utf-8?B?VUVOcmh5clMrVVpEbzQ2M3ZXeTNpbnlKRkxaSU1PSDJOSkhZV3I5MUtid1dW?=
 =?utf-8?B?ODQ4Rk9NN09KWEtybVdmTXByOXBqT0xYN3htMWROR3RHdjY1MnlaV01TU0pk?=
 =?utf-8?B?TDY3SHFzMldEVU45ck9JUTVxVmxwamJyNWo5N1liNHZvUHNzZE8vZ3EzWlJ3?=
 =?utf-8?B?dXFPTnBrUCtBOHlYY3pjU0FHZUhWQXhLWWJaTkpoQmlmckpYUnd5Z1l0Z3Ri?=
 =?utf-8?B?MHBCeWRYZW1UWTJrWUxDc1ZkMEFmY2dxUkR5QXlvODdpZHE0ZDhwUHhDdEZl?=
 =?utf-8?B?U1hQRStpbWZ3QXpMOUFHWHR4Umt6R1habC9mbTdER1ZxZnhKYS9nUHcxMTNR?=
 =?utf-8?B?N0pMODRRNml1a0w3cTRCYTRoN3RZQkZZWG93QUZxSTNoR2p5aEV1U2hjT0pT?=
 =?utf-8?B?SmdycVJmNEtqcjk4SnJ3NzN4dThOc0crZmZac1dSMnJMT0VFV29lZm5oc21B?=
 =?utf-8?B?NnkyTVREaTA2NmIzVnpmbGFtRDFMTGpzS3hTd01BS1FCQ1VFNHIvUFpKMHVQ?=
 =?utf-8?B?NUFKTVVCMVhVcnNCN3ZjVnBkNGt0MUNEeXJTSUs4Ym0zR2dCeWpTd2J1bWpt?=
 =?utf-8?B?RWEvS0hJeExRcXc5bjFyVkttU1duUTBPdml2Wm02TjhzVW1aeVE2L1VtYnJX?=
 =?utf-8?B?d2VPSEFLYlkvSXE2MjEySS9JMnZ6WGlLZzFtdFNkY1U0Wi9aTThCMEZSV3ZE?=
 =?utf-8?B?M1Q2YytBRmhLTkRlT09oa0x2Q0JkdnhFS3k2QnVvdklXd09CNUwwYXZtRFJF?=
 =?utf-8?B?NkFPWnI3QTVOcUYwUkMzcld5dWJCVyt3RXhVZlczWjhWMk1DZG1vbTUrdzg2?=
 =?utf-8?B?YkUwdStzZVpEYXdQcERMN3Z1SzZJR0phM2s2N0QxVU4xUXcvNUxZNlN4aUYx?=
 =?utf-8?B?S1ZibW53QjJOYXQ4eDFRYmNKdzdQdzdnWFBKMVJuNzl0cVlWVy9IQzZRZ2ZU?=
 =?utf-8?B?bEs4dmJSd3BvV0taZGxzbTI4U2kyU0Zkck1pMzk3TVJGUVNKMHhxTXlKVzFG?=
 =?utf-8?B?UFYwaTRjengvM1ZpdWpRVjJuNVJGYWtxVVZORWVXT0lmOFZJUUlBOGE0T1pE?=
 =?utf-8?B?V3c1aVNPZFBxM3lDYk56cW1tMUgzZmMxTExsSHRlVTVBbDVQK2RYTHBzR2du?=
 =?utf-8?B?RUR5MnlZd0hLR3FJSjNzSWMzeDl5d0tRVTBNNS95VUFaeUplS3V5My9aL2Ji?=
 =?utf-8?B?SEg0Y293d3Rhc1E4UlovME1mWTd5YjJnZFBrSWJZVUU3T09mb3lIek9nMlhB?=
 =?utf-8?B?dVZIQk8yM0t6S0VtekFMQnBxRjZ0YXBrZ2lTVFAvRHNwelBNTUpKUXMyWkds?=
 =?utf-8?B?YTkrNGhNeUdPT2Z1VWF2Rk5HYXZJQkI1bHd4bFJUQll4RVZESTBxbkpjUm8x?=
 =?utf-8?B?a0x5Y28yNEFBRFJUMFBjNHNsdlB1aG1sc3VyVzl5bmFncHo2OHE4ei9yWFVK?=
 =?utf-8?B?QjlzV2hqVEpKaW14RXVlWGNrT1Z1UkRKT2x3L05rbW0wczViLzY4d3M0OXo0?=
 =?utf-8?B?ZEhMRFhCemk5bDZRNTZQck54Sm5wOEt4NGFKdUpObXVaL3d6VHVyek1vOC9Q?=
 =?utf-8?B?MmVhajlYU1B3ajIydHlLemJUell5YnpvTFBXbDlHMjVydnVEUE5VREJHNGJm?=
 =?utf-8?B?VzR0a3VGRkR5Skl6UCtheTBDT0EwNC8vZW0rQ25MdUViSkdPQmtsNU9WY3Zw?=
 =?utf-8?Q?nJW8qNKb064mZQTGDlxouuM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac46bf3c-3f19-42bf-c9df-08dc62ab8ff1
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:06:57.5331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OeUveV2iLgTDFlW/bzJg+di3kunPkBE4fMiijH0cHcxvPz18jt99EjsKSG+VOc/VwfXdr+E2X72WmxhGmmqH0Xxq5XvHYpVcJ7LbXUqgrVqulSwICSKEMxJbna+QhvJ5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8613
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_020704_784877_3A9AE737 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 4/18/24 23:03, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Apart from the host-only usb3 controller (host2) the rk3588 also provides
> two dual-role controllers. On the Tiger-Haikou combination these are
> connected to the lower usb3-host port in host-only mode and the micro-usb3
> port for dual-role operation.
> 
> Add the necessary controllers, phys and usb-id extcon to the Tiger-Haikou
> board. The Q7 standard defines the pin as usb-id, but it will only ever
> get used if the baseboard actually provides an OTG port. So the extcon
> stays disabled in the dtsi and only gets enabled in the haikou dts.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Would have preferred two separate commits but the content is fine and 
it's not that difficult to review, so

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
