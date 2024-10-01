Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F9ECEACDE
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ky+dKud8H45jf1XXEGPoxP6pgjRpAX+JbykdzlMXlbg=; b=ZrU920ls9+WiLmCmUN+L9QsUYE
	Nl5zNAbTKHzh9frOL3vy+ui/y3n2YtFnQMv5vdsnaWimnfvDL+XktcqNTn2oJE5T13rc4RfA0A0Y5
	gyFYFlDIJHt0Ww1wQB2/VcIF9YhnZfa1etX+vu1ppSENaYBwucQyDmIjxMCgSbdku1zhVnlUuwZIi
	kyKj03sbsRUQJDTgXP4rHE2Kptwgnwio0GKQjqgwoZgUHN2A0sCJJhw4hZAbTu1ehMK1oooTkIfUz
	kXLmGcMOcrE09lNx7mbbiLRneQ2QeuIhatQbnKjjt5cJbR/WC1vaga1fZ7CzpmOu8Te5qa0WYL+zA
	7aysAznQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sveO0-00000003FIY-1HRy;
	Tue, 01 Oct 2024 15:02:00 +0000
Received: from mail-westeuropeazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c201::] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sveLI-00000003EBB-2dBg;
	Tue, 01 Oct 2024 14:59:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r60bCG2IKvucMObw+m2vs3NsOhGuRx2kOU8GyTHOJtUJWl4QKhXgCVFDzB6Et7WlwGD1r1KzxKg3xZOlesdi7v5CrIBa4b4SYe0KexTMCdkXYrQFbaP9f/lILqdGq6WsoznrPJM2V4a+SUF0ne3Y1YGj/oKiSS5098In6Rdl7mz0uvT109NTxfkylf0mthwfVC/kSrE6mlcK6QxMkW5+9tro9kvJG1AcihqNZB0twSnPXm2zCCrhDJgsOoffCDO49353u4andhT6vempzc8Hawg8I56jh55XpjiQy0GplG6ovtplHKqA7RRqali5w1cBHZzHEji1CElyqGS59MXfZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ll07kiXTloVVw6iS5fJ7OEyfEbVhWObHloRf7Upwck=;
 b=k4UuvdQJbB7LmIvID+w7DyJNxVpBXcVRIzRzPlE7RF8L9fYLavSauBDmb6RZ5O5V7B3dKAgj+0cqas+i0c9fjHqCA0WxWrxaMoYp9/r+iH/0x5Z4n6joaOmauhj6Rf1a46mky5c2JHSOpFCIuLt9onK8P2vPyjfTB+N9D8svLwDUPajFbEs5Lw6lFL5YQtnjJMweeyeN+aipoUQCvyvOIwP1x66WKcQpwLZsmjiO+3yPvsr7YsPRjcFx6aK9D/yhk8zbzSxmeo6QPtAZXU3xVyaN6Ast4G5WJB+rU3a8QMJuRi+gau+jbMvy3oKaETfCRBNQaiCcP0ZtnCZt6U7bRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Ll07kiXTloVVw6iS5fJ7OEyfEbVhWObHloRf7Upwck=;
 b=RAlI+0aKKOr3prAi+S42OkalmcnSIkootuVOgYlZykKe1j5cIuTuwaYcbfs/UfnvvJC7jvNonzNzrSt1h61h1kR9/n4daJFx0QTiCNjTZDTqwTlpr5o1PmIXAxEGKefXftwykkbduzYs+F1IkPk0dgQguxfvxdZ98KhOOiSUu5Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA1PR04MB10793.eurprd04.prod.outlook.com (2603:10a6:102:485::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 14:58:59 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8026.016; Tue, 1 Oct 2024
 14:58:59 +0000
Message-ID: <54e8e758-3d6d-4625-9a6b-7ede12acc577@cherry.de>
Date: Tue, 1 Oct 2024 16:58:58 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add power button for puma-haikou
To: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241001134741.210979-1-dse@thaumatec.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20241001134741.210979-1-dse@thaumatec.com>
X-ClientProxiedBy: FR0P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::12) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA1PR04MB10793:EE_
X-MS-Office365-Filtering-Correlation-Id: a8122d92-1ab8-4478-4080-08dce2299472
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGNsKy9UelVtYStOeEtMTmw2bi9mWmd6djZDR3p3bmRhTnRqbm5SQklGeHJj?=
 =?utf-8?B?NE9rT3ZDUDJzQ3dyZlM4TGV5ZTVkZ3VaZzFvc1pSZmtMM0FOQ1o1eThsUnZv?=
 =?utf-8?B?blhFSDFqV3dhdXNyamkvMjdXNXM2N3hWNW05YmpCb0F2cFdlMjF5SHJ0SE9R?=
 =?utf-8?B?Z1krOWE5SUpqSVAxZEE4SzZqWVdlMnUyNTI2Rk5jaVltVnZCeVlPM0MzOGdJ?=
 =?utf-8?B?aWszdWRIcEZRNWhBdW5ZL1pyMS9uZkt6RjQ1RG5jV0J6MHoxTmNLbVoyWmpr?=
 =?utf-8?B?RlJJMDMreEM2UVZId3FaekIvcmxNcXhhaURlWVJhQ3VmaDNZRnAreENDbEZT?=
 =?utf-8?B?N0hMY1doRk15c2dVVnE1Tlo1eXpZMC9BbWxndlF0NTZDWXB4eThzT3RVYmRL?=
 =?utf-8?B?b000WDdOamU0NlFWQzNoRFV1TjJ4MkFxMldHL1NTYkpoT0hiaTFWamw3VzRD?=
 =?utf-8?B?NEphNGV3S0Jzelh3T1RYMWNuaEtPcjNUbzR0N0JUbUZCNlJBeVNYdUlzTmZX?=
 =?utf-8?B?eGYyaHlubUYvbFdNVkhTKzN0ZE1IUlk3YTYwRGU2VERaSlZOOGNDWHQvS0wx?=
 =?utf-8?B?QXJ3VGRXNlIrNWl6T05KU2NPQVFTRkNZN0FNRWZBMFZ2NU9WMlhHaFJLT3pz?=
 =?utf-8?B?RlBMZHI2UHVuOW9DWTloTWFWbVc1dHFGUnZsVERuNmpFeVlqSUNzc2xOZFBs?=
 =?utf-8?B?NjczTWliejh5WG8rNFh5MVpXaXEwdlU0ZElsQ1V0akxPdG1leTd5MHNONUdX?=
 =?utf-8?B?MGQyUjNMblh6Sm5rR2h0UUJlK2Q3M1FkQjN4dkdHZ2pyWHBWQmxhZTVzeFQ0?=
 =?utf-8?B?RUNxS3J6TVZldVpMbzFiemFkTi9Ib1g1UlNrdGx0aDh5b2U3V3dwWThNY0J6?=
 =?utf-8?B?NUFSNXF3VDRPd0xsMll2SVRjM3NpblpUb09nT2ZpZXRoMXJpbFpnWCtRaENi?=
 =?utf-8?B?NDI2ZkxqYzZtMFJLTHBSTzFQK3lPN3UvOEp6WDhyS0VoSlo4OHozNVZYUHR4?=
 =?utf-8?B?OEgzUjh0eUxzejFrSW5nTzFvZ1JuWFZpa1JYOUVvOHNOVGRrQThFQk9oWEsv?=
 =?utf-8?B?NnA3Q0ZYNU4vSXpUQmFCSEpHZmZ0QzdjV1hOWlQzb1Q3Z0Y2Z1NmNWUwaFlZ?=
 =?utf-8?B?MHpIRnVMMlBGRUR2R0dkVWZDTCtTamR3bFBUQUIydEoxME80TFprNHd2UEN2?=
 =?utf-8?B?eFJRNitPTFFXM1BTOGxrZi9KTWRFbmlWZjZPMnQrOTNOMm1RZ20xRldlZlJp?=
 =?utf-8?B?ZXF5WUxxaW5la0J0VGlhRHgxa012WlAxbmJrcXdBQXVSbGw4aXFHdlVPLzBR?=
 =?utf-8?B?S29pZnpSa2w0U082NHNzRG4xL09ROUJuTHVWRjRkeXVVRFgxdkVuQWNvb01a?=
 =?utf-8?B?bGMweWFqMnRSUEpQNXIyRGVmSWZEbVJWeUJTRjhxS1NoZEJtdFFGb3cxTldr?=
 =?utf-8?B?RW42cHlLd203QU5XbnVSK21GanNrM2NMVHlld1BhUzNzWG5UOHZWVVIzRzBC?=
 =?utf-8?B?VXlSd2h2ZWV5bWRkVlp3VG9nVWRsdlp6UXg4ZURoeXdlY2pyUElHVlVzbDBu?=
 =?utf-8?B?VnQzWEZzTFo2cTU0WlI0cnBocWtOOU15SWloSXpSRHA5Q0NrRktna1VtQWpV?=
 =?utf-8?B?ZWxGQ2huYzBsVDFTanNwRXVPWkZFRjhKM0U2c2NObEVsd0U2Z0RaYUw2clVO?=
 =?utf-8?B?amRicUxFMEpScHJtRk9kVXVQZjQvNW1OUjhWRTBLeXRvcytvK3ZTL2xBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXFXRzlaM0t1WnFPTnZobDF6UDgzMWNxRVNURVhqYzVUSENDM0szeEpxT0hm?=
 =?utf-8?B?YXRuZkNzZlZJOTRaQzFtNlM3NDlvMkRUNXRsSmhnKzRLeW1DZGNhY1U4cktH?=
 =?utf-8?B?cUJIb05YQzZQVWVEVXowMVpadG1tYW5sdjVnUmh2OTNDalM1ME1pRitYOEZH?=
 =?utf-8?B?NFRrckZML3lJNkl1Z1dMUWFVQkJod3J4ZTd2a3J6ZGw0dVlDbVZNZk1kKy9j?=
 =?utf-8?B?dlZiTWQ2aWl1MURuNlJmd3ZDeCtacXRtWnNZNXNHTTIyeG5rSEJIMGpIVW9D?=
 =?utf-8?B?QkkxcS83My94c2MwWWZVQVdCWXlkY0Q1VGJsQ2tKcGdYREROaGJwMHg0eDhm?=
 =?utf-8?B?OTdaYVNZRFo2Q2p3ZklQTXJhNnVyMGdadWJ0NExTTkM2TFRYeG5IMFY5OFJC?=
 =?utf-8?B?SU01Ty9VbCtDSWxqaUJCNWJXdFRmcE1VQ3MyUEZMWXBWdEFMQkJXbS9NaGVD?=
 =?utf-8?B?YjA2ZnViaTVrbWl5ajM4R0xmSUt0SVNMMEEybTV3YXg4R2g3cXdGUVpnMi9a?=
 =?utf-8?B?bDZKcEpLeHdjZmJzbVQ4WGhIN0xrME5NaXAxdkJXemljSEVGOFRDZkFtQXBk?=
 =?utf-8?B?L3E2MnRBVmhubnBRVk96RnNqdzhucVNqRmVHaStiOHFRcEs3YnBKRHVBQmho?=
 =?utf-8?B?K2diWC93Wms2QUpKU0pZbXMrUS91Mkd0d1VDeitGTnhRNDhER25OMmphTlZw?=
 =?utf-8?B?WEFzbWppdUVVdVVMTmtlU2N1M2Jac0ZGajdHZnN3R0lRb082b1JiWU5pZURB?=
 =?utf-8?B?cUxaVERkRDFMTjBVdUwvSEhqQXVIWTdJMFdzY3QyZU9YYVVtQzFEdWZUTFFO?=
 =?utf-8?B?MFJqcHcrYjJnb2ViTjA4Zzc1SmdGZzhsb1dtSVZLUVpueHZEaThMMUF5RHJa?=
 =?utf-8?B?bE03VlRjYXc1Q2hUeDVLbmVJSjVwa2x5RkY1S2tISDBDUUkrMFFjeWxyRTBv?=
 =?utf-8?B?eXpRQmQva3p0QjhnblpWOTdGbGIvaTMrQjJqOU91dFRXT0x6ai8zYTczYlRx?=
 =?utf-8?B?RlB6cnVFcHk2anNGaEExalFsdkdjVzU0bWI3L0hwdnJjeTRaNWFLRWdaQmtm?=
 =?utf-8?B?b21LekpwTnhkYmJqNFNoNC9OVStmMXNabWFoY2JjaUw0VHFEOGZ4Z3gvanJU?=
 =?utf-8?B?YlpQcVM1Qm5Tb25rYS9yOE9wbGw5T04yajJERTVFZ1FGY1NUR2xDZ2pyU0p6?=
 =?utf-8?B?Mk95QjhjaDZtcHE2Z25BMm1EdnZEQlRmOGpEaDJKQjdKR3N4OWRVUHRXUmRM?=
 =?utf-8?B?VlBKWE56Tm9ZbS90azZlQjdFc0UyQjhzYXBpWElZV25BT1R2QS93S2xOL1A0?=
 =?utf-8?B?TzBTWU1KTThFM3hlMkpSSTl6Sjc2LzBWaE9NdE1GQzVnYmFxc1BqYkxwcUVm?=
 =?utf-8?B?NHIwQWRmaExGaTJvU0Q0ZzAzREd3aGc4dEwzZFp0VVJZczBBVGNGSnV3RUZl?=
 =?utf-8?B?K2RENXdPN1IxWTN4ZnhZTkloQjE2S1hybUxlQ2x4WEtsckt5b0M0eVQ0ZzJz?=
 =?utf-8?B?Q24zWEtCSVB2c0xrZy91cm1oVWFzY0N0Si9maTh0LzhkSlJuSHhZSUV4U0JS?=
 =?utf-8?B?YkZ2Q3lCNmZucFhxOW8vMUFrUkNYRnlIdUpLczVNaHI0d3dJdnhMR21mRWxh?=
 =?utf-8?B?QzRmblNGV3pLcXNsYTBPUHlMdCs4RkpRZHVMTW91c2EvMHk2emRiWnlLL0NH?=
 =?utf-8?B?YXFLQXRvL0RNeUJPdnZuQ0VoeU45OGxRckV3OU1nTTdhS1h1U1llWXk3Snk0?=
 =?utf-8?B?YzNTalo4TjIyYmFpcktlTWsvdXNMbXdUdUZ6c3podFBYbGEzeE9sclNmWHI5?=
 =?utf-8?B?elhCYmxBZTFDTGppeGg3c2pZQjVud3N0a2cxc3g1QXRpODBUVkFPL1h4OXI0?=
 =?utf-8?B?TDltYUVQaVlQTFF5OWFNN3pDSFRvdDliWlRrSXluUGlyWjV3N2ZOaGJ1TFdE?=
 =?utf-8?B?RVRDVkJZa2ZYTFlqam93T1dlaHFhMHhtTTREL01NaXhEaUhnbUplNVJIQmpj?=
 =?utf-8?B?ajBMYWprT00wcEM4cUExMXZGSngvSndNNGoxWlJJWDhUZFBSeTVGZnJtOHQ0?=
 =?utf-8?B?OVd3cTdtZndPdEMwaGtJYjVTclBad2tudExyL1IwUk5OM29BekZhRTdEdkFN?=
 =?utf-8?B?ZHY4MWN4Si9PZXQzV1JRWWtTRHEzT1NWRklKVlV4RVlQeTBrZG1zdFBBNVBh?=
 =?utf-8?B?VFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a8122d92-1ab8-4478-4080-08dce2299472
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 14:58:59.3986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yrkCaS/Mo3H/nBo9IrXyZfNwqV66G/Z/dk6FN8AExPvZeUoF/jGBnknTADwzToncKfUqYJRTB18F3JDkXcvG5NeSImkfXOdOj7fRh84VagM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_075913_035730_A9228C26 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Daniel,

On 10/1/24 3:46 PM, Daniel Semkowicz wrote:
> There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> is routed to a GPIO0_A1 through a diode. Q7 specification describes
> the PWRBTN# pin as a Power Button signal.
> Configure the pin as KEY_POWER, so it can function as power button and
> trigger device shutdown.
> 
> Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
