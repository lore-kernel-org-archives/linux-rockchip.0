Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0175CC54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 09:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:To:Subject:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RckAm1PNPe9FlkllAddWLwamd1lEmGC7sue3CSBoZqM=; b=UB9HqiTFtBZuej57UpzxGJE689
	eFF7RIYRCgwEmDhCLQjf6JSya5Fi//5N61ejY005kl0ja1y2Jx6uFPferbrCa0zZVEEK2KxhtjQf/
	fJi8PFAQt3uO5OavDYXrwJS1ddzZgcpGH+BnYvsJTD8V2sXvjugVGMMa+YT00kFjVekAPcu22CU+8
	K+liSC6UKOMAhEWFnRGOMoy6LQSzWlmOQcpZc0/U3IYvqbEA30V5yjDkqyAFRr8DnRHs/Itf3UC4j
	SurkksebmKhpcxh06SY1A0h6SBWC23oo2R8AU19+9/vM0xUVTdPPstvV8u+yJkZcaFLVxkA7dkeFq
	cBVfjDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWUM-00000008Yy2-466M;
	Fri, 08 Mar 2024 09:26:02 +0000
Received: from mail-db3eur04on072c.outbound.protection.outlook.com ([2a01:111:f400:fe0c::72c] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWUI-00000008Yvn-3YOH;
	Fri, 08 Mar 2024 09:26:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeK0M241lTkXdfYUH6ACU4iwaDdTdtBMxTeD3K3W8LonHeCjC/vy+HwToB9WE48DhRuT9YG9vVqLBNEthwqaq85ESyWItULvRSdKfE8cb06/nKbv+fWkCnaXRbPuwR9pgRZ4cvixr3AdEaDrMrKj8TKzN2enxnJE1pb//s7a0pjkAP9D2IUWc7LlUg6vNunLxTso5E2xu2eTXTwoOe3OKLWKbo6LZuTgG7ezvEMroyfJxU58KgU5/QDsgGPa2lKtclCuBH5j4Pb7BweTQHiSlkWRbFmQzTgvldGHdpAH7EWfl2NMS7DN4p2zC4eA9voNS3bn9w2X7T7i8tI1shOF8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ydlWtFc00DkU8h32Pj12MkYaJl5LG3bLy5Vic4OXy+Y=;
 b=gOwHQWWiT8mDrLkFSoa2Ki2TGYwannB9E6h2oLpd4FU65/LZeWpGj8XYwrJkxSBJHnPNZx3Pmxo6qzDwn+UmPw/b7ykBah4uvCrVkvJbjimItYcuMFPwFnn9/439H3dCADkSJAtmEFv0rV7Dwc4bFIp9fyV2RZ+Gjr2hUpOnkd5bPwLKxWhnv+gKv/TJiRP1n8OzwbMGZO1kW6gIbXZWUUSmjMe4I6xorWH74NsL8i9WwoatQK8ow2RXptu25IYI/iDV1xFD/zFAYg+0EbD3DXfpsTlzwSoPMKlUGxf2jYy8tIJLCGqBoY0YETNiVjTyPGyEZmfgQoTkb8jAqjKh3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ydlWtFc00DkU8h32Pj12MkYaJl5LG3bLy5Vic4OXy+Y=;
 b=HcHq4GHFKaBYgL+StL9FzRGBH/9X8N+9f3602uOdDQ5MD+HCDbRfYtEKA2cJWFWCTzJuIQgivodpr4Fd0RV4p+PbxOMm6PLbMc7DS95gXvhLgXpYgg4y2enA6URGdSrvnnppYsBPBUeGRO9opHPIRH7bLHNbbHRM5ETjzBUM06VYsW2ZjREY7uKkcLKiHDVdT0D6XuukxHZiHRU2w3Z1kA0VuprPZpbUvwC58nU5VQHFTA89V02HArjAuvYbryJsp802NLxiEV/UoCtFR3YmsnktJ9ZxL8yA+QRLhjUe6XyToOMkqGMFIRKTPyTJ17hCNXkZOwKTpcmDoHfTMgUn0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9279.eurprd04.prod.outlook.com (2603:10a6:102:2b7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Fri, 8 Mar
 2024 09:25:46 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda%5]) with mapi id 15.20.7339.033; Fri, 8 Mar 2024
 09:25:45 +0000
Message-ID: <ffc940bf-b9df-4731-a34d-f725a6d6d7f1@theobroma-systems.com>
Date: Fri, 8 Mar 2024 10:25:43 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable internal pull-up for
 Q7_THRM# on RK3399 Puma
Content-Language: en-US
To: Iskander Amara <iskander.amara@theobroma-systems.com>,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, vahe.grigoryan@theobroma-systems.com,
 angelogioacchino.delregno@collabora.com, dsimic@manjaro.org,
 alexander.stein@ew.tq-group.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
X-ClientProxiedBy: FR2P281CA0016.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::26) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9279:EE_
X-MS-Office365-Filtering-Correlation-Id: eb3df95f-e8c6-4c88-5413-08dc3f51bbe1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O3eUfcOoA4+IB91B9Oru6XoZkxanUkP2C1xr1W+LjwwmlPN5TDcW3ko52Ecg/SN3avXvVaF74PIBxl4Lgv4D0E+uMuNkRn+js2eybBNVptGG0rxmuczjSfA8oLz7CRiC1iQNzxFj4LUv7p6aSl+XFsmVNHOlX3rp4/eBtJFq9a6OlmgrY1M/vYbKkJ5iknTu4E7img/yca0T/1HrsOwCz2OKPQFREEpUuqpFfH61U6GxXJ8Vb5mkio3tbo2+YvVzPCW6rWn94vc8B8wiA+l9etgz/PtnXqxpiCfhFGf9wRVGYFI5lAbGWIpm2CKM7skjE/jAJqjcCXLYTqs6IouWdTXi4MmC61cbEZs5AsN/TElZIz2Xv03OU5hWLBpELXF5hSkiyOoMH9+tAda1kPFckysYiQSL1MjJLu/hfJYKcZ1jjx7PKqnw4xmrRBCHckq3bRl+MTYiL1eTgNIVdcv9HMn0pe9cLkt7D7qs7IHL0+qSMp1DkbIZrIfUttw7J7x+S8kfWkEY4JKBJd8crLQluc/nmKUB1OCOKcHFA8C1x3AK+nSYYfGLGiCM3f1XgIv+N7eGT1p7CLYIiD+uyip3/UJLgC/TkahYyjk4LOrD6crG+wN6YV7fxI8CWvtiKJ9713J8BxGUkSycFpZS+QSa0Gu8DSu8zpRKEIw2cZIIdJi+5d+s+5dV4gflxR0SUXzCYbG94CdZgjpxoi2F9YZmZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(7416005)(921011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHVDc3Y3SVVvVEphbTFKTm1QcFp0UEwrWFlhelhvU2dHckJrSHlHQ3FhU29D?=
 =?utf-8?B?Z0dPY3V1Q2tJYk9SRjRvZ2phai9NYUVIM1JrVmRxMndTalpsRTZnSUpmZGN0?=
 =?utf-8?B?RVl5WStRUmMvVVlIM2crdVZvcG1Kblh2dUlaOE84Qm90NXM1N0cyelMxWmR2?=
 =?utf-8?B?UnB4VURSdGlhTHBvcDdSR3dVUGtYVXBIb3lObWdzMjkweWtldEl0OVhHM09U?=
 =?utf-8?B?QkUrQkh5MDB0Rk1Ib1dPUFFRQ3lEcjUxWVJzblNrM0Nkejh6cDVnRDlnNmo2?=
 =?utf-8?B?aWttM0pmOU13T0dFZm9KRW5BTWhwdlYyZkhCOXVDei85clA5NkhEZktGMzZN?=
 =?utf-8?B?K2daRWtvZlhlaUVTekV0YXB1Q1NuMDVmdkhlZ2NiVk5SL0tPeWVWQkVHeXg0?=
 =?utf-8?B?TUZkNVhndHhPZzVaMmQwR1pVNVc3TFFIL1d1M2xUSVo0cjF2cDl0am1RTjY0?=
 =?utf-8?B?Y3ZPeURkeDliM1dTKzRhWmVha1QvNUtISDllSlBkNmVYcTRScFlXUnV6OXUw?=
 =?utf-8?B?SjBJU3lEL1dqOHd5NUU0SzI2ci9qaWhHRFFBL2pqcXhmaE1uck9sTTB3U3pT?=
 =?utf-8?B?RFF0dEFWRHBIQUFJNnVmcFhVQ3oxcEVLLzZTVUZrWFNGcWVLaUZwRWp4OVdO?=
 =?utf-8?B?dXNyR21lcGJ5OGU3OG4xME80VEJtNGJEYnBLWGYxeE9NdjhxVDc3TE9UWnJh?=
 =?utf-8?B?a3hqQktNMmJUN2hySHRGbTliTlUwbzR2R2Q2N0pEVllML21EVDBmU3lUM1gx?=
 =?utf-8?B?T1lnMmV5WUoyaVg3c3U2VmplSVJFWlJaY0hXT25zdmVFak5MVzNUTFF5R0RU?=
 =?utf-8?B?bUVFUXFXUXJhYlhTV3ZDd1YxR1RPajlBaUdBQnU5NHRtNG1uOThLUEdneWcr?=
 =?utf-8?B?bkp6Y2VjVWhuQVI4ZnBCZ1M3V0kyMmNENzQveEVjRS9NZXNySFVSeUxRalY2?=
 =?utf-8?B?TmZlNXpVc0x2UU10OWRpQjJMWlJjOE4wVHU4TTlEWkphY3EwN1JMb2x2eG51?=
 =?utf-8?B?eDZqK29tSnk2dnl1M0JkdGo2L3J4TlJPeGQ2NlBsUnp4Um9Bb0lVL0R6TGUr?=
 =?utf-8?B?aHFZd2tGMFpjS2VSM0xEQXp3MEJGci90eHJnd2xDbnpjQUFFVVhtbyt3VzVC?=
 =?utf-8?B?YlNTMkNOazlyZ2R3NFhpZU12eUtNdVdqRmpkVU8rVHVCMDhReVlmM1NjdVlR?=
 =?utf-8?B?QkMxV0FSK0xwLzk2bEFXVmpPUFlsa1RMTnA0MDdEYzdaN2ZxM0hsSlNvOGpD?=
 =?utf-8?B?cW11UFZYaWorNEZJd2M2V2FrWFpMZklxNS9jM3RpN091UnFCRjlKZXlIdGUr?=
 =?utf-8?B?YWJZVHlUK0VQVXg2d2ZQZVYzd3c0L0w1L3dzaVZxV251VUdXdi8wUlJ4OWFR?=
 =?utf-8?B?cTczbFFReDhpaHF6MkFKSUF0bmlMSW9MMVM2ekN2YndwamJycHEwcnVyWHFY?=
 =?utf-8?B?VnU2UFlDR1ZWbzFUbmtJdjBhOWpHL2pPV1FOOXJxUjhoZFRic25BUmJaS1pv?=
 =?utf-8?B?Qi91L3VoRUZkMGsweDV0VWppUlZhWW5ub3R6aGx4enBZWDQwV0hmOW9RNkg1?=
 =?utf-8?B?bmNBa29GR3lmZG1aYWFBWmNENVpneWw1Wk9ueFlIeFRib0RIcEtWKytLWGpo?=
 =?utf-8?B?ZEg1NGx0eTMzbUFXdnlmUHZiaXk5VDlJWGU3d2tWeHl0SXlEc0NqOHVyYnRF?=
 =?utf-8?B?bmJSd1NTcHpOTWFLRk5qMlhHS0k0aERubC9TVjMwV3VjMXEzb3hJSXY1OHMr?=
 =?utf-8?B?T0NsYjJNUDhMUEZXYTY2SHlRWENjSXBnTWh0WHZUZkRUQkV0ZDNKdEc0T21E?=
 =?utf-8?B?Q3dqUkxIN3F2d3ovcHBaQ2dLQ09NOUYySko1dEdwSkxGbXl2SW4xNE5WVndz?=
 =?utf-8?B?azkxR0RFMUo0RmhoT0xucjNZby9ZdjJoa21ML01aRitUYm9GeW9NYUVFM01w?=
 =?utf-8?B?R1I1R2NTRWNEYkZyM3ZGY3FKeUlNNmE4Zm5XcVA3d0hOaG0zMDRmbnY4RVdX?=
 =?utf-8?B?bDlIcFFod2F1UmQvTGhEb09qeURoOEpMZENFRkpvWE9YWnF4OHUrOUpEMC9S?=
 =?utf-8?B?aitDN2ZlOVlRUUZMNlJzdS9UR0tRZklzbHJaMFdkQktNRHNNZlRxZGhITzds?=
 =?utf-8?B?VldzTUZqaUptV2E4OEFhK2ZnaUY5dE9waVgzdHBiUmRVcVZSTjJOakxJMm1K?=
 =?utf-8?Q?m4PI2HUjbZgOgf7/m/9I8d4=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb3df95f-e8c6-4c88-5413-08dc3f51bbe1
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 09:25:45.8285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/gbvv0778EGIfZxSPpNfRLVtFKxdcuYoAKP0x0S2QeeAojQrPW8XguKnTfGQ16kd5CHIhG9BV/I9IhiK9ZH8wekSpoVQxU+HFDMw8YKHeUBG0VFsy7p4vU1a9ED8jzq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_012558_912988_FBA5544D 
X-CRM114-Status: UNSURE (   9.11  )
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

Hi Iskander,

On 3/8/24 09:52, Iskander Amara wrote:
> Q7_THRM# pin is connected to a diode on the module which is used
> as a level shifter, and the pin have a pull-down enabled by
> default. We need to configure it to internal pull-up, other-
> wise whenever the pin is configured as INPUT and we try to
> control it externally the value will always remain zero.
> 
> Signed-off-by: Iskander Amara <iskander.amara@theobroma-systems.com>

For the whole series:

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

@Heiko I think this may match the criteria for stable backports?

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
