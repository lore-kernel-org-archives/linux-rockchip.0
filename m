Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD725C5472D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ISFuhHGkIzP2NKlT8vxP85aPawzCQ/yUGJXxVDadUU=; b=w4CkuO0xxrbdhahZhgDV+cs//1
	VEOQpkH4o7zlHeKi/2J4nyyBcCDZasNAsBSAWqAqwM5CU0/ELbbCymwyrm6XBqJNql/i9yhDEQoWH
	gDtyg4/JSEcv0ocs7egOZsP0Ebfw35pmRkQ4dEdAjxE/5OObJg13qm7JuNVQg0I6vebuLWmsRiDHi
	fTGw+IG5GaSGf1rv4jaoxcgDIRoaoirUu+uCTWbUezC6om6Mls2zkssnVoi2M+/eJhSuZUyPfJar7
	OcK4DHe7aI6QD4d2RaeNvzynJIe44dzn3EEEmuxfkAinZ9oIf0kwI9dlzqzNck6ErlX5FENrMmLyz
	EbFZuCdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjBwr-0000000E2dd-2ymZ;
	Wed, 28 Aug 2024 06:14:29 +0000
Received: from mail-tyzapc01on2070e.outbound.protection.outlook.com ([2a01:111:f403:2011::70e] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjBvj-0000000E2Rb-1xzQ;
	Wed, 28 Aug 2024 06:13:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n0mZTTQ+vtDetHFp88cLMzMvPn77yXqlWQC993AUQgFeDJR8t/e2FvzZL73TWyEet/MrSGZ0FCuxGAYfhxt65IQdjUsbhLt/neg/qhmUrJcnKIhiBzB4ElO02qtdwmg6a6a09SSgVWFmgF5FC4xyd8yKQ4MDsCigtyRAhz199Fa3kTGln5g9PAKxw9x9Bvp2587QXCmxa8Zc3vjfQpe4/92AjGJgiBksqU92qcaIrroy8X/cann6ZsUgVsOQWtCoXcSXr1Kl/tps7G6vpqKNRO/N6WxEPR2oRc58Jja7cTUY5RKW+Mgq/yN28bOOSIaYEy/Ple2ShHRG4ALc8pMPwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZL37oaV9NSY/KcJM4zBNk4jjlk5HMG2D3f1MdIButHA=;
 b=JpbRrqTzCpi8/fbLLITT/uXAIyKt47/8c3UuJDqw9z1QspKwJGQHhb9UGgq/N7IdQkg+cU0eFIqS7W6w5ljd2uqC9bYUOVd6G10liK/PTodQuojAg7hD0BmE5p8t8gj4zZyh+bh3e5P+SCRH8/YRXC4dEtsCAgz9Cmkk7QtKttV0oJS1lHgWwkHJbh3ohbzU/HctwXu3j+TnDsrtCnG0jAOITY5/xTbODaSqv+V5bnVWgSR7tdhkqqEcFkxH1Yjer8rIrYMzVNQSQ20wrHMIHcexwmW3S6h0IN+vCmP9zNSabt5XtdLi05juw6AJQ73pnpyu9RsWiLUYgZgWNKxEDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB7151.apcprd03.prod.outlook.com (2603:1096:820:d5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 06:13:10 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%4]) with mapi id 15.20.7875.019; Wed, 28 Aug 2024
 06:13:09 +0000
Message-ID: <c5047173-d569-42d4-9676-4679100da118@wesion.com>
Date: Wed, 28 Aug 2024 14:13:04 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 2/2] arm64: dts: apple: add "brcm,bcm4329-fmac"
 fallback compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, marcan@marcan.st,
 sven@svenpeter.dev, alyssa@rosenzweig.io, robh@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org
Cc: linux-rockchip@lists.infradead.org, dsimic@manjaro.org,
 conor+dt@kernel.org, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, nick@khadas.com
References: <20240828033953.967649-1-jacobe.zang@wesion.com>
 <20240828033953.967649-3-jacobe.zang@wesion.com>
 <22aaf58a-da71-44c7-acd7-f3e70b91cdfd@kernel.org>
Content-Language: en-US
From: Jacobe Zang <jacobe.zang@wesion.com>
In-Reply-To: <22aaf58a-da71-44c7-acd7-f3e70b91cdfd@kernel.org>
X-ClientProxiedBy: SI1PR02CA0025.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::13) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|KL1PR03MB7151:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b5202a9-1bc5-4f0f-ef1c-08dcc7287d3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bC9Od1RmZjFTdkZVM2hzM2tzaThTSTNnQ1VxV09TUkJveTVUdFQwWWdoazRQ?=
 =?utf-8?B?ajVrTE1WMnJVOCtmQkZIMzNSS3I3djdrTzNlNS9XckZNV1AyMmNCZktsZTZT?=
 =?utf-8?B?N2kwclZBcUxBbnBoY0VkMkNMWm1BY2VCUHBabXViV0Vwbml6QjRIVDJDbFRZ?=
 =?utf-8?B?UGI2Smk1TWdtVXZUTnRmaXo2b2hZSG4xaFkxMTRIUDVjYmc4cTNwT3J0QXNn?=
 =?utf-8?B?alZEUXJtall5SFhURmNFZysyeXJka2ErWFkyRlpMb3J6ZmkzNUljMGpjek84?=
 =?utf-8?B?bENUcWttcTNsbnovSUs2aEdJWTVCRlVQbjd1bDJUWk9RSFM1MmxBdjdmT3FV?=
 =?utf-8?B?SUJabWVsSHZnSzl0bVlmdkdGZUxTM0wyK0NibklxUjJuWkZnbHM4MU10dWZj?=
 =?utf-8?B?QnRmb0d3clFXdkhidHVySHZjbFJPSENRb0FQa1BmOEVRVlgvcnA1d1k2V2RC?=
 =?utf-8?B?NnpEcjNGd0IrVnBpUFErR2JPblMzS1I1TEJyZFNBdExDTGhWRzJ2UUJBS0tm?=
 =?utf-8?B?czV2YUNuaVJ2aFJZeHUzRHRmc2hodkQwTVJCdjJwRkF2eVpCTjUzVU05M1E5?=
 =?utf-8?B?S2xjUForWUhjZzRFdEJYRHRrZXp5NDhzSXdEbzI0SWVST2FBMWdwQUtUN2pT?=
 =?utf-8?B?L1JrKy9zZ3NmVjdSNEoxL2hFV0RWRVR4by9SVHFXZURPZHU1eWY4VXdOaXVx?=
 =?utf-8?B?VFo0RkQvOGZ1WTRZQXNXYU1zNDltWGdFMjlFTk5aNXhPOFg1ZldVWHYzK2Ji?=
 =?utf-8?B?VkJjZENoRUNIUHEvM3V1cEJ1WVhacjkrRGROc2Q5M0h2UHVtc2wrcXpOVmsw?=
 =?utf-8?B?Z1ErRDV4d3JFRGJYMVRLUVVEZm1mRU1jYmF3Q2JHUkFYQ2llWHFIMy9Lc281?=
 =?utf-8?B?a1Npc1NyUnF5UldlQWxpSW5nWlczeTNFNW1MQ1BneUdnUjA2czRuL2xrUENo?=
 =?utf-8?B?Z3RNdGY1R2ZWMTk5QmExQ05aYTFEMFhnYmV2YjFpQWdSL1hNeStKR0dtb3Nm?=
 =?utf-8?B?UTZTc2J1NE1JQW9XMHVuK0hGVzd1d3F2TlIyQWFpdGtXNkFmNFBWQnJHc2Ft?=
 =?utf-8?B?T091RVp1RXdFcTA3dCs5S3pjTXRVb1lpR1NIM3ZxSVBVMVhablk4WDJka0lX?=
 =?utf-8?B?NGJ2QjhaWnV0Z0V4T1MxTTNobHc1RDNwVnpnNG8wcnpSOXF4aEpoVy9OTldl?=
 =?utf-8?B?WDVUUnZ1SnpKeEJzYVdTZk1uQU50Nkg1c0h4NG5POGdycUo0MXpPL2FGR1RV?=
 =?utf-8?B?ZlRMWjg3VGYvYk14NzlVK3FMOTI4ZTUwcHBKQjFyeG5jNDJoYzJjbXEvSmlI?=
 =?utf-8?B?YmVJYnd0ZGJYQUMvVnRta05Najc2UmFLMWRCc2c0M2piajNDSm5vUWZISkRB?=
 =?utf-8?B?cXNaZ0lwNXc5QS9JMzN6cnVIZ0ZPRU41UDFVNk90U2JvdlJnSGNaUmtPdHFv?=
 =?utf-8?B?c2FlWGFGMVBHRDhqRWtmYlJ0YnZaMFU3Z1NoR2NwTkRERjkrREJtYU9PdEF1?=
 =?utf-8?B?NVFKS21jSC9SRXVLaUR0ODZueG1wM0RXWjJPenJ4a1BCcW04TlJBRFNnOURL?=
 =?utf-8?B?LzErUHArUzlzSHpaM2ZLcjR6SmV1NDJwS1VEcWF3OHA5K096dGtSYTN2eWx1?=
 =?utf-8?B?VTZwa1RyWk1tVFpEMkRic0s3b3BkZkcxK1c4RDF1QVplZ0hNbm5RdUgrSThG?=
 =?utf-8?B?aVVDLzNMMDltU2JsWE5tYUxDOTE3K1pUS1g4U3NOWGJJeVRKQ3FxV1kydGEz?=
 =?utf-8?B?TGdDQmdObUNsdFp0ZHFxUzZ3U0dnSkN6eFVTbUV5OUREN0g2QjlsYzI5azM5?=
 =?utf-8?B?NjlKbjJ3SUlnVE5temJPdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2E2R0tvU212VUoyUlIyc2Y1THlPSENtay84QzQ3WWNJK2cwVDlUcHh1RHFS?=
 =?utf-8?B?YVFLZDJPWWR2VnE4d0dzRElGZDQ2WENHT1pjV05yU08yVXpvaG0zQ1FwaWdW?=
 =?utf-8?B?U251bGdjcHAyYnp4clU0a3ZXdm95UTlBd3NxS0haV0w3cTlGZTNNM2hYbnIx?=
 =?utf-8?B?M0R3UXZZSnRSeCtlR1FBbVREMGNMdmlCY1ROajJIUi93d2wwYWR3Z0JoNnFv?=
 =?utf-8?B?NjVCMGJ1THVuaEhLNGF2NFd0b1lreS9UWThvcXJOVjJzL3FBMjNqUlo1MXVy?=
 =?utf-8?B?cTBaSHZaUmowQmFzNmtNekxEWEs4V3NPc0x4QkFCQzFQajlHYmZqdVBtbzgr?=
 =?utf-8?B?YXoxaGV4YWFRSDZFM1A5MmRZaHZUU2dDYXNjN2VKajlwNUFGdGZuSHdja0U5?=
 =?utf-8?B?dHc5b3J1TkM2akN3YzliT1VUcm96OEJSbTdDSk56TDhSWU1Mak5FNEVJTWRs?=
 =?utf-8?B?VmMyNXI0eWNzVk1qbC83c05qNFFZMmNBSDhNbU5HTmF4bkNIRDlyY1d1djhl?=
 =?utf-8?B?VlE1WmNSNE0vamJTZXQ4dTZpazRBNnFnUXR2eFNFbTY5RE40N3AxTFVrOS9L?=
 =?utf-8?B?M1RZaVdlSEtiNDk0c1ZFMGZTTU9jQldaMDZsNGMyQ05idlRsbUdVSjhMQWVB?=
 =?utf-8?B?WUMwMmo4ckI0eFhPMU5ZYXJJR3BiV0dpdmYvZ3M0dy9MVTB5YXFlYjdjVXNB?=
 =?utf-8?B?a2t3Nmx4clJoUEpsa2NWREFRZkZ5YmsxeWhSQTdKL0xseGR0RFJtc05HRDFa?=
 =?utf-8?B?eis0bk9HSUY5ZWRiK2lHY0JvVTBzNVdKYzVoYTh0OFRrWjg0bm8wVDlsYmU5?=
 =?utf-8?B?QlB5dHRFRExtL252cUJ0bHpXOUExbUxheC8zMk1mb0swNUc1b1didnNsRGNG?=
 =?utf-8?B?YUp4bWJhaG5pOWkyQ0VNZkJ4MlVPekFPREdrbkZneVgrRUtUM3lEVFYzSHVD?=
 =?utf-8?B?UXliMnd5dG9zaXZsRFAyZjUvYkV3b2dscnVwTkZuRy9FcFFRSlVtVURxRlNQ?=
 =?utf-8?B?VlNrV1JvS3dmQlFvdVN4UGZVSFJJdndwWnlKZ29ZakthYlVWS3d5VkdKU1U5?=
 =?utf-8?B?Y3dXbGp5V0c1YXB2SVJNNXlkU0ZGMGVGMmNVZHJSbEJXYXpXN25uQXlNL08z?=
 =?utf-8?B?SlFDaW9UcU05NU1SK3ZSamt5Snp4TzMzTWU0ZlJna0l6KzFkM3MxZXpmMXdi?=
 =?utf-8?B?UktXeVpYbXRoblgrL0VDa0dtWjJ5MXhNcWdUWEFsaXRoT2VxV1o5MmJBeDU1?=
 =?utf-8?B?SE5vSVJTV0Q0aEt1dEdkTk00RjV4RHhwa255bERmZlYrOWpiR3h2a2ljcmRp?=
 =?utf-8?B?dTRldE9xaDE4d0xNbVhCSG9qcUVwcFZXQlNXY2NpZERVclJJcWZjcnVIc3Rt?=
 =?utf-8?B?OFErNmp1Mkw5R2JpOHh2ZEtMM2EyUDRURnAzeEtURnJFZ0ZCd0YvMkNUZ2Ex?=
 =?utf-8?B?bW51WlcyVXdyNDZNS1NEM0prSVhlOGlIQUZNdFRXMjEvYTVGMjBJUEpBclZK?=
 =?utf-8?B?R09YV3htNGtNQ0dqWlFSUkZyWFRKa2pKUi9rUldzSFRvVHQ5ekUzbDg3UUN5?=
 =?utf-8?B?T3ZMYWh1cE04N3JmZVlqeTZXZnUwRlJzcTdlUmdaM3EvNlRhRjlieFNDeGRq?=
 =?utf-8?B?WHZodXBNcEJUNTJneU9Jak5McUlCVUJkVU9NeEFUYkU5YkJ2dXZOWllyY3Z3?=
 =?utf-8?B?NzE5TXVDRDR0OXI1bGdUVkNGZkxrVm9RalJjUUlGWGFKcDNmQzJYaXNVTWNJ?=
 =?utf-8?B?QnhNS1RvK3FjMkpIWE1Tb2tkRHE3Wm5SZGFCdUx3VEJxUUtLaEhnR3E1SlRY?=
 =?utf-8?B?Z0o1WnNQbHpmU1JIazh3T014RWtwbmRLZUNhOWp0c3lVam5Qdmw0SklkOG92?=
 =?utf-8?B?bis2czUzYVdxQlpzMnRXWnFKaElrcnNrS1c3YzdtdUNxRzBFd09zQ0FDc2Nr?=
 =?utf-8?B?ZXJlUlVZQlhodTBxOHA4MXY1QmorcGhHZFRyNUpTZUtnU3NFODNpaVhhbC9h?=
 =?utf-8?B?MWhIRFY5QnVDMlVvME1hK0o2N2JzcFRmVmFCbVhjVU1qRVI0ZlQ5L1J3d0c4?=
 =?utf-8?B?Yi9qb2Y5blFIeWJKRHl1TWFRdFJ3UzVPdDBJNU9JZ3JiRGZHd2JXYTg3SlVB?=
 =?utf-8?Q?cKKDhGxqH1cZG2ojKKeNOZPu8?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b5202a9-1bc5-4f0f-ef1c-08dcc7287d3f
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 06:13:09.4984
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +wsUI6PWad56KcZ3NxceEGSRNsmDeMuAXIe9IhsMFHuPJLm9dNf+agh8X9W7MrQ7tNEbwbTgIgyJVjobeE1fuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_231319_546765_15C695D2 
X-CRM114-Status: GOOD (  17.01  )
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



On 2024/8/28 13:56, Krzysztof Kozlowski wrote:
> On 28/08/2024 05:39, Jacobe Zang wrote:
>> Broadcom driver need to check "brcm,bcm4329-fmac" compatible. Before
> 
> What for?
> 

It matches the changes in the other series that I sent.

>> PCIe devices used PCI ID as base compabile so add it as fallback
>> compatible to pass the check.
>>
>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>> ---
>>   arch/arm64/boot/dts/apple/t8103-jxxx.dtsi | 2 +-
>>   arch/arm64/boot/dts/apple/t8112-j413.dts  | 2 +-
>>   arch/arm64/boot/dts/apple/t8112-j493.dts  | 2 +-
>>   3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
>> index 5988a4eb6efaa..4b021626d4692 100644
>> --- a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
>> +++ b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
>> @@ -72,7 +72,7 @@ hpm1: usb-pd@3f {
>>   &port00 {
>>   	bus-range = <1 1>;
>>   	wifi0: network@0,0 {
>> -		compatible = "pci14e4,4425";
>> +		compatible = "pci14e4,4425", "brcm,bcm4329-fmac";
> 
> So devices are not compatible, but your argument is that driver needs to
> do something here? That's not enough.
> 
Before this change, the check of "brcm,bcm4329-fmac" compatible is set 
at the end of probe function for SDIO devices which need IRQ. But after 
this change I set it to the top as the first check. So I add this 
fallback compatible to the Apple's DTS.

Oh..I got what you mean. Maybe my commit message is not clearly. It is 
no need to mention driver in it. Because the intent of adding the 
"brcm,bcm4329-fmac" compatible is to conform to the bindings.

-- 
Best Regards
Jacobe


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
