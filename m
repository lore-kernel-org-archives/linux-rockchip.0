Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C849C54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 09:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:To:Subject:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3YzyMYpVZUdrdLMOrZ7iO19FV0y3Nw+3zMjqm9VnCfE=; b=Nm8Ofe9Hir0FmjtFA9Z9qBm0we
	PDt16wxXxa2k1g8Tz/p3YpOe/DG1rcpY4M2O6VoT0qNykxvGHAHxHvdCq+iUPB2Fs75TeUhXLYt25
	pdNvsqEAdzRhn8lFJ9CCDqZrIMjmQApBVZRM+7G8ag3LePoDHWvs+ZpxcVqUsdq5z9g1UbLEnOs4B
	7tztp8yxClJVEmMGnJh89ohlBO/AUyrzviwfwLogDmEUbvC0d/n9V2Z2oDHD9DJb8+Oqt+uN+Peta
	zlrOq8K5/bA/HQ5OADBmZsGlOyaScMaQqIN2Ec4AnUFAIvdHxU4/QATQjA87K+tBf1vhHcQxfZ1Fq
	V0jJ7pqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWcA-00000008aUw-3euK;
	Fri, 08 Mar 2024 09:34:06 +0000
Received: from mail-db8eur05on2070f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::70f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWc6-00000008aTp-2cq4;
	Fri, 08 Mar 2024 09:34:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2+p/vac0tCnZuLW6anpxTTqakL6KA2VwXTzIlI146/yW/NYhlg8HkaC0m2Wm7H/izxTArLWpW54wVfPu6hSbRnhc62JLQ4Q6VBNR+bNLg+dzMNFoaAxooKeF6sij+UK9IGgXCSGdaETLwuV5IHsLwWwIJ0JWn1eLZWReybSWH2mdX2gAZRgN1q7iO55l2cx3J9UUba5wabyrwzYKKwj9O8MDtKgwZfWwGALwe8TEMaSd+rX0snVqpKKqyTAlBCxEaVEgj3RooiyfJa0ZJUuX9pp81HNaPG6vBjD6CGT0AiTRXS2XwkeHFqR5QS/UQRyB2AmGjekzK9WkeGYRIYIbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O0zM5eIIx4kFR8ChV0EdyfM6lMrKuYFsQUie8ivvSHw=;
 b=BXBKO5COh2RZdSRhyUeJj/T49RozWIpGlGvRQNrpLZE4tNuYS+vEr6tcomlP5PXy3zEHvvUXCI+6h4tj2XFMHCrZSAjuR2PhakqzkdkOuZfHxqkUXCAqtYYVhMpPxU0Vjl+1CoqcOKhy8P57702GEiitQFajSy5E2pa+lQ/+LE56zAQqs88/2nq4LlLDMN4XSwiYcKhx+1zx5aoz3WzAC/CcsHUNJyHGsbaDkrQexPBZtA4mtuNxuM1dU9XlnfvbCC8//b1PPmQAXxFmMNH183ODsse0OrFT63+lRQmbSNO5elMsIwwVUuGhZrBXKjddOPHBT4jBZ1Vjk3s1fllAZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O0zM5eIIx4kFR8ChV0EdyfM6lMrKuYFsQUie8ivvSHw=;
 b=JhGXstgwhjf2tim8R5mnyYe+guD3kEZD4CHUrAl/W9rwqZQH/BLiLHb+VlpmZZJzPZSGc7+5qR4HS8HnjpyaU/2zdzyBjnx9cuEVOHrL23wsyMq1cs6TTaKlw3daMxxOuwFy4GFaJSKSj6OhXDdDyXw9Kxrv3xaiEXjB6XwL9mCfH4562KmB8+a1pN1J4Nk2YNBayQW9KLYAmc4lSL+VCVUJPsQH+JT8TwQPPIlnopXnVhlLYJY7yE97JPGT+gMfjgNqnzqJe5TTuJD18HuzrAc4bBfBcHLAkNwwMYC7V+EryK6q822qD8Nc6Kmj4UENLPkOArqQkh/6/mDAfgDQ8A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB6951.eurprd04.prod.outlook.com (2603:10a6:20b:10f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26; Fri, 8 Mar
 2024 09:33:55 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda%5]) with mapi id 15.20.7339.033; Fri, 8 Mar 2024
 09:33:53 +0000
Message-ID: <43d84aa9-ce0f-406e-82ac-2a691264ee23@theobroma-systems.com>
Date: Fri, 8 Mar 2024 10:33:51 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable internal pull-up for
 Q7_THRM# on RK3399 Puma
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Iskander Amara <iskander.amara@theobroma-systems.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 vahe.grigoryan@theobroma-systems.com,
 angelogioacchino.delregno@collabora.com, dsimic@manjaro.org,
 alexander.stein@ew.tq-group.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
 <ffc940bf-b9df-4731-a34d-f725a6d6d7f1@theobroma-systems.com>
 <24965019.EfDdHjke4D@diego>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <24965019.EfDdHjke4D@diego>
X-ClientProxiedBy: FR3P281CA0094.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::9) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB6951:EE_
X-MS-Office365-Filtering-Correlation-Id: 39206822-6515-4cf3-4fdc-08dc3f52de82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F0afdUEAM4HXe+s2Uqi/ge/gkwL5fX0hYAGHZhtCIv7Z94WDj49qo8RNTTUbRHK67xX3UmiqdJkxLQi04YmL5wgMkcNYyBfXfAUpichwQ0pG/34MSBURPjoaB8f05LTai3w7e4eO5NiW/drF7HvK3b72EMVm5g9UJfATs6s4N6IomIkX1hXcbc90VC63T6fDYaRk0GCndqkCFti0voOtKdpl3VkWowdksL1r6OKOmIMqTgsyVe7JKUk4OQUqNbCywSRoVwCufGlovL4v21VKFBwANMhDmJlVFNPD63o7w2O18182Z+oPwCAbZdE/OenSba98ITkr/KuUoZVV+ERe1GYhrlb7l+jl3NxIsN3BaoHV525RSZUCnGbqtBngo2kxDytcF3g+9AOVIN8eL6HliISeZM2F2q9IvmRhE6D/azvhXNgvX+ap5+Rh09Zquuots0TMBmgRoo0HGnDR/rmTu2CJLzsv4PAKNFOF+UfpCXQfFaMKA/LAI2lvNh/mu/WTfKUiQYnR9tvJjnixw0fOKtYxwYXPlB1hzo3/6vprHHfwI942Ktm9g/Sonx5NZHPucs1eZMml8rgBOlZFqVHQrwNl4H6gXK8o8ejwcZNyExuShz+PTq6NUZ/9kGwdiXxSIvhIk5kZEnqZX69Qt02fdKw7/34Le8tcNpHPxWDyF6zDRjiuMucFofSZ2g0039gcUSFytrBGVj0hNADPWgf8kQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(921011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wlo3NldQUHFIMkJQUExjVmZBRlMzd1pIZDFNdFl6MmdrbTBIZWYxWHBDYlE4?=
 =?utf-8?B?a1NkSHo1VTZtUW82YktVRVZKK2c3d1IvMzU3L0JVaW8vNEFBaDFwVWNKRGg5?=
 =?utf-8?B?dldweER6Y2RwMlhpVHhQVFU1OE9HRzJSL3FrZWpzcVdmNXhoKzgrdHdHTFBZ?=
 =?utf-8?B?MkJDcjJtMFY0UWRZRFZvRHFyV1IzOVJ1SGlBWGljZytZYXluZWFnbWo1cVJy?=
 =?utf-8?B?RlQ5QTAxRTRKK1NoOVpXWmRCc21KczhHSFFBZXBFYXVkdnIwNWh2YVY2eHdP?=
 =?utf-8?B?SlR0Sysva3dBdWhFK0xjNnI4YjV5WmF0aFhrSW5sdVNXclVMNjJicE9CUW1J?=
 =?utf-8?B?K3Z0R2o0T0NqTjlFV0tHMWxZaVNZUTJEOUlDcHkrRE9TczgwMTJ4OUJiREU3?=
 =?utf-8?B?eTdCUno0Y1EwWGQ1L1F0RVZ1aXk4UkcwZUFEeU9UeUsvT3VhSWY3eTg4dXha?=
 =?utf-8?B?SkcwUllYYWxmTE9TVSs2WEM3SEtLNEZOSERja1N6dUpoWGEyaUluNGdEOWJz?=
 =?utf-8?B?eTc4OXlKeElJeW91ZEhzdW1VZ3NtUkhmSldaTTZYdXRDNGVTT0huc1VnUVVZ?=
 =?utf-8?B?ZU9qNnhRaExZSTYxS2NMTUZSNmZmSzlOZWZBWnlHU2JBWUY1eHdGbEVVQjl0?=
 =?utf-8?B?d0o4Skx2Z3pubWw4dmZTUmpIbHdkSDRPYWRjRjNJcU5KUzlyRHhubERBVU9Q?=
 =?utf-8?B?TS94ano5YVpHUERSRXdpNSt3ak1rT3pzaXAwMUQxb0xZY3VTeEE5cnlBZCt5?=
 =?utf-8?B?M3U4S3BTa1ZtZnUrc1VSbHpPa0RNTXFmUHhTaEwyb1JhZVdtaXk2ZHdpOUdY?=
 =?utf-8?B?S3d2V0VCbXBzRXRXQWNUYkNzTzRpdk9FN3hRZCtPMGJBQmJFbW5QM2pHanJP?=
 =?utf-8?B?Q0txMXBnNEF1S1RYQ1h0ZXZEUjRZUmZNRjNwNWs1dXFPVlhWYzV1TDJFQit2?=
 =?utf-8?B?N3NwbnBmaEtkYnlCZyt1MVFURHNSMXV6aGlDTmxzWkhMbFF5QjFTOE9ncEVz?=
 =?utf-8?B?SWVLTjAwSlV0UEpMQ1FrcXJtTlZScFlJVmZCaDFRUStqQzVTM3pVWi9PK2sz?=
 =?utf-8?B?RGJuNW5lNkhXTEVqemNIOUJRaERnbnFaQndEVGFMTFRlaTJrK1VHMUovNmdW?=
 =?utf-8?B?WCtlak85eEczQytvei9yRkFTRUNZM1poakxpSkhadEdTc0hHUEdybWxHcDZs?=
 =?utf-8?B?WWx4dmY0S2wzRWxISk05dUNKampvTnhiN0w5bFRINUNHU0VIZWhZbXVwVG9a?=
 =?utf-8?B?dE43SzEvV3RkRE5OSFA0MVFtSkZkQktPNkF5WDN4QkFrbGhPdlFTVU5qQldx?=
 =?utf-8?B?R1Ard2ZLeHZQU2VrZGN4T0p6STVGaGU3bW4yUnNvR3Q4MlRwTXY5TEtLVnJN?=
 =?utf-8?B?NncrbnJHbUgrRlhaNzh2K1J0RWtmM04raElXYWdNYlZLUENZQnR1S3FhWldG?=
 =?utf-8?B?RVF5c1J0bFVVZXpERGhndEtQMVZZV3hSd1k4bUcyUndnUGdBRjhYZGxUcjlT?=
 =?utf-8?B?REJDV2VpaGFpNFFIdnZTZ2FUQkNSeVpzb3NzR1pvNVpFeGlFeFBlZHBPa1BH?=
 =?utf-8?B?SFlmRmtmMXM3MmR1b0xLSEMvaXRLMlpkUmpyekFIcCtialNZRUFCLy9aY0xO?=
 =?utf-8?B?NHpBKzFPeFBsTVVoMHRNNVhzdmVqb1laaWtMZCs1VGIyNVJTZjk2VHg2NGtD?=
 =?utf-8?B?cDFBYmU5QWRqYVAyd3IzZEE0TlZxaGdmYVhXTnZOOVZheW94MS92bWZ2UEFn?=
 =?utf-8?B?YzlGdnIxYkVFQ0V3c1ZoMnplTTkycVQ4Q3huSzNQWWc5eUhrdW55N0theTN3?=
 =?utf-8?B?ZWhvcWp3UE9LTDBrWU5BL241Lzh5STdSMU9BTkhUVHJnUEJhbHh6cDV1a1dD?=
 =?utf-8?B?Mk1sVHBQSmFaTEM1bW5BOW9KZkJjaEI3bzh4UGpJUVd1ZUdnZllTTDVZc2t5?=
 =?utf-8?B?Z21jL3B0N2VNTGcrMmdRbzdJczR1ajk1RDIwTS81a1RoRVAxTjlqRUtPRU03?=
 =?utf-8?B?UTFVOVBYOVM5S3k2cmNSTVFpUDRsaG1VWHAwN1VybXBhR1phMVpPS3RMQXFt?=
 =?utf-8?B?MGpYWVhEUW42aHIza2lOMFhXeG5MUTNHcHp2RmxtTktmMFhRaWJIVHEzZDl5?=
 =?utf-8?B?YWpPNWFIcmRBSllMd1BhUWxGZVZSdE5KOGI0L2lBdmNManNyNjRDNXQvcHBK?=
 =?utf-8?Q?aP2cvF8DBjY0zzpJj4H+SxM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39206822-6515-4cf3-4fdc-08dc3f52de82
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 09:33:53.4560
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SVO7ws8qfr0OYy65VfkCoiJQD2bDhgVTyQO9j7D/tJUvo+kUX99AglL+9MsR5gv3rpQV+yrtbOiRba/4u/44/CupoxVwOcffDgGkATGFBhBeWVp809y8PCODeT0PfeXs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_013402_691734_9C12BC55 
X-CRM114-Status: GOOD (  10.50  )
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

SGkgSGVpa28sCgpPbiAzLzgvMjQgMTA6MjksIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIEZy
ZWl0YWcsIDguIE3DpHJ6IDIwMjQsIDEwOjI1OjQzIENFVCBzY2hyaWViIFF1ZW50aW4gU2NodWx6
Ogo+PiBIaSBJc2thbmRlciwKPj4KPj4gT24gMy84LzI0IDA5OjUyLCBJc2thbmRlciBBbWFyYSB3
cm90ZToKPj4+IFE3X1RIUk0jIHBpbiBpcyBjb25uZWN0ZWQgdG8gYSBkaW9kZSBvbiB0aGUgbW9k
dWxlIHdoaWNoIGlzIHVzZWQKPj4+IGFzIGEgbGV2ZWwgc2hpZnRlciwgYW5kIHRoZSBwaW4gaGF2
ZSBhIHB1bGwtZG93biBlbmFibGVkIGJ5Cj4+PiBkZWZhdWx0LiBXZSBuZWVkIHRvIGNvbmZpZ3Vy
ZSBpdCB0byBpbnRlcm5hbCBwdWxsLXVwLCBvdGhlci0KPj4+IHdpc2Ugd2hlbmV2ZXIgdGhlIHBp
biBpcyBjb25maWd1cmVkIGFzIElOUFVUIGFuZCB3ZSB0cnkgdG8KPj4+IGNvbnRyb2wgaXQgZXh0
ZXJuYWxseSB0aGUgdmFsdWUgd2lsbCBhbHdheXMgcmVtYWluIHplcm8uCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogSXNrYW5kZXIgQW1hcmEgPGlza2FuZGVyLmFtYXJhQHRoZW9icm9tYS1zeXN0ZW1z
LmNvbT4KPj4KPj4gRm9yIHRoZSB3aG9sZSBzZXJpZXM6Cj4+Cj4+IFJldmlld2VkLWJ5OiBRdWVu
dGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+Pgo+PiBA
SGVpa28gSSB0aGluayB0aGlzIG1heSBtYXRjaCB0aGUgY3JpdGVyaWEgZm9yIHN0YWJsZSBiYWNr
cG9ydHM/Cj4gCj4gYXQgbGVhc3QgcGF0Y2gxIGRvZXMgLi4uIGl0IGRlZmluaXRseSBzaG91bGQg
aGF2ZSBhIEZpeGVzIHRhZyB0aG91Z2guCj4gCj4gCgpGaXhlczogMmM2NmZjMzRlOTQ1ICgiYXJt
NjQ6IGR0czogcm9ja2NoaXA6IGFkZCBSSzMzOTktUTcgKFB1bWEpIFNvTSIpCgpJIGFzc3VtZSwg
c2luY2UgdGhpcyBpc3N1ZSBleGlzdGVkIHNpbmNlIHRoZSBpbnRyb2R1Y2luZyBjb21taXQuCgpD
aGVlcnMsClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
