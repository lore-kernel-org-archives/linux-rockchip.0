Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A9C2EB8FA5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 11:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vUqUk+BaAP7LP22/Ix0c4WkP+OQ5vLmD+rtv75AuP60=; b=kP3zg0/wZuqIykaREHn3/AKSBl
	4sHo5qwaQ6UELAjuuZCRJPAo/JMhQrRAxIYjWwD6RcEjYBiZwG0DZVCl45+SaXDEX0HTiqzK2DgCW
	MUY7VNCBIYIMBZmMhU7Pe0YZV8zMmmCE/fxyPJtFkrAhcVlwu2EUdmStRRfK/kilrsJcoowhi2BW5
	8+OAi2zpEzEgxIPONz/ImuGwtyJCh+emIj08MnTzgxkE55vIgGohDsFHz5QvTa44YRTV7bTwYNJSY
	/VvrvfRhKx8SRhDNlbYNvhcfSqlBsFq3xg19f4AV0PhELKCj3TXTi8nr5VCPhMFMMRcZa1gCE2rXj
	myVYY5QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdqkI-008luB-2O;
	Wed, 06 Sep 2023 11:30:55 +0000
Received: from mail-db5eur01on2077.outbound.protection.outlook.com ([40.107.15.77] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnmE-007gkg-2f;
	Wed, 06 Sep 2023 08:20:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwWPDsfYfCGFfI7b+MZ2rNI5ExHaYSifqEAryZmPOqKaqDVlVAOyQfIkjfAJ/bMURIk+UJC+nNlhXjvsWg08AT+veJ5VnsIBfI/l7Y6JAmDtGmLhtEwDFxSftE4rxFT5DS8XjXykBmjQxeNcBF+SFn+LzKKPu9lxHvIPEjaJ2catMP3AdU0sYNeSaoxoHSrSdvTLrS9SeRsBJIkN8KeR3FtK7QEbUi/iYHB/V+ZMy21in/vFx2snZk5v4gKg9d7VQbwobFsLS6HjgI1Y+paHPh+OxPF5uXNqQK6V1HpEso+ZZ4wincYTzSyxdPYa/smOS5HDaYJj/33bbJ91nrNG6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WW376MCurHW1qI39VCF/XEShUx/xRMVmmj6Ob2azx4c=;
 b=bxPxNAg0aKAXyzAEUHWfPtU+m1Wj6/7tQtrmCeG90Kf7Ztgzni1zOV1Cllvp0y5GEfZgWUzvoJ/d6mnplTJ8gZq8m6z1qOL9CWU/nY6Ol+TocvtD6La8mZ/7LL3i7iPLaC9s+wiaVCofrgzOCdlXQ4OCp4fR39pmsZf1eHTD3xYeNa//xtZmgulZPvNVPM/V6LlM3bKEo+rlTMPJkjnaq7CXuzTaA+ZLpPvkZ7Tx6FWip1CYzA5Kvyf0kgGu90+VJun3YAotnjUt2+A36xK4QAAGciNaixmfYA0XpbizmNrkaS2/ZuFQiiTAiXyp79qtboPpij8sRkRUeLYtdpBAWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WW376MCurHW1qI39VCF/XEShUx/xRMVmmj6Ob2azx4c=;
 b=ajL+tTxvebTgepLcYbVuHdiVE2QdOTK6RuF0agVknPi8dvLgtVXSg+qODfrzRLMvRRffTyf04826iAXpMpmXU2azoUU/WR2ej81nQ6p/EQ/77vQOg5blc3WolJf1wbgMRYdL27E0h9I2QGXFkyodIPLLcnw5jH8viJfzybLXp5S8j+lqdrHfr0coJgA3Nk27O4B48tAszlMAesuApFeIyeSkX88MW4NRm/mj0WD0GlLDjUQC7Qm40s7nAbXH6GrSKhUKm41C/UtF6hIK/pvx8AuLjjvS3oMlRhgah0VDJD+vurGbCIzOVYaBRJn4gBJWRGg4lbYNTi7637/XR7BuVQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9376.eurprd04.prod.outlook.com (2603:10a6:102:2b2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 08:20:29 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6%6]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 08:20:29 +0000
Message-ID: <5166ca75-5454-8f64-4f61-fcc0f7a4c235@theobroma-systems.com>
Date: Wed, 6 Sep 2023 10:20:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
 <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
X-ClientProxiedBy: FR2P281CA0147.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9376:EE_
X-MS-Office365-Filtering-Correlation-Id: 8facc75c-293d-4773-b037-08dbaeb2216e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9u2xZv/+HDFMNhnJBHvgJ6NSZ/ZX5lgkwzRpYWT0t8cn0KAE3VGfGXVEG804LxqbJYdHWf/7uPAu0cvqWCmEec8Gq67lwvqsMh9sXT5C7FeHs5/KTnHeUGMnGjxemYi6RrRwT8I+SlwDBUama26+mQZQ/boxSK3i6r/EZe9DsPoKi9YmXjfLMY1p8YA++5tjOqMReLgveVjAq/hmRbpf1uShvams81IL4eOiQzYnKC0k/PMnDP0ZPQ/cBRqdlAmiJBN5pZwGMDyTF3KG1YSwrfY1gqeZD50/A8JmEGlxbWLAOofNY4VY5D4tNIAerKX7P+ONh5atcqGtDtN3fkR0rVyU1+A5UbqMfE4vcdAQZurdMtnRfCFwRpOJHgbFDY5a5XErAHEfIn6ty6GvZ3s8q1qS95tTDWdfFt5mJekanQvLa0RC2he876jzC9m6G4k5mU8W5ZVqfEm3XGUa8NFiYXeht8DSS53ExJoKy0p79AS6tJNCnD+6HZKJVX7W6XRCIcGI1srvYh4WIKsVh/RDMD1isA0uc5FuxeqjKIFDTM1EVFNYU0X/Vy9Dyh4E0mH9i4N+lungEbAfqEki50IbszzShk4MI5N/TgwyXTOtD8qRMVcRCYsmiNmF9tk0Nf6m2M4v4IZKGyjQpzu8gNJkWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(366004)(376002)(346002)(136003)(451199024)(186009)(1800799009)(6486002)(6506007)(6666004)(53546011)(6512007)(966005)(478600001)(83380400001)(2616005)(26005)(2906002)(7416002)(44832011)(54906003)(66476007)(66556008)(66946007)(316002)(41300700001)(110136005)(5660300002)(4326008)(8676002)(8936002)(36756003)(31696002)(86362001)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVZHNi9vV21ZNDdrNHVJcE0vTjZOM0pWZnFyZW1RMWZNMmw3QWNjWU9wcENp?=
 =?utf-8?B?WWNneGRtZnRFMm8vbERvZkdvSVBvRUFoS1lmcGIwdWNheVovN0dBZzVKRUE3?=
 =?utf-8?B?ODVrditCdTE2aVR6TnQwK2RvU1JSZENHd25vTzZzZXlrWUNKWVhsNzl3Zml6?=
 =?utf-8?B?RXBRWWVVb0QxTGtxQXRFcngxaEVnaElQdS9uNEtxUjAvdTh4dGwwVE9iUDU0?=
 =?utf-8?B?aC92TFc2UHR5b21zQmIxcU5PQndpbkdhWmZhbFZORThoRThGWTV4WUJUNU9H?=
 =?utf-8?B?ZUgySUE2Q2NrZVJRblNOdllLR25oQ29KTGNPWjJsNi8rU1FRZGRpbVZhVTVx?=
 =?utf-8?B?bURDa3lFT0JBaXpCR3ZKeE9MdlFkYUtRSjhTQ0h6SnlLU1p6eFhwTE5VYTRJ?=
 =?utf-8?B?N3NoZ0pULzcvaC9wMWNTSU9vLzFRaGVuc0ZsRTZ0djNpODhLVmROakdIY3Nq?=
 =?utf-8?B?R29ZaTM0aDFpdDhKODRpczRtazMrSUlCaGxQWC9ZaERCSjBSdGR0b0RjMU9s?=
 =?utf-8?B?WVJCbU9Qa0VMVklHa09jWVZQYndpN2poYm9RVWNvZ2NxeWlEWmVVVEhoVzEy?=
 =?utf-8?B?SE9KaU81YnZaVGRBMno1aGxGOEw1WE5YY1RpOXhOdEY4RVErMVp4dFJNV1NK?=
 =?utf-8?B?Uk9WY3ljYTFMVVBPZTZITHNUNHd6ZTZ1Vm9PUXp4VTU0akJwVVhqTXN6SmdT?=
 =?utf-8?B?TWoxYnYzeXJETG94SFFad2JrWWtWRTJndmNQN0FVTmtSK0U0QmpuL1hFWCs1?=
 =?utf-8?B?MEVpS0Izd1BPTTVDdVF5WGVwY3M3ZnhvaEpDWGdSc1ZkaTJmZXE2YW13SVZh?=
 =?utf-8?B?RCs3clRjUUhuOFk3a0xpRjVOUnVGWnFqT2JyNE9wc1VKaU5qZWJ3MXkrRU85?=
 =?utf-8?B?aXBnNzBCY2xQTlhXKzJsTFVGKzdYSmNOWVNEUlEybmF5cFU1bHYxckkyd2Nt?=
 =?utf-8?B?WU8zbGhvTGJ0L04rcFRKQ21UZVpHL29HVTFYMk9zYnNHZnJ6OHdMN3pGeXlZ?=
 =?utf-8?B?ZkFjSGVma0lNTWpuV2hyNnZJUlNGcVlOQlJ3NjJJK0NTdzJJUmZzTVNWdWFx?=
 =?utf-8?B?K0FhTW9kZkhSWmh5VDBPU3o1TnkwZUFnYzNwMzFvL1R2RGtVMXZESUlNRWdn?=
 =?utf-8?B?VXpzcit3cEtJcjdPbStWbW1qKzhWNS9taSt5U09VU2txcUJ1RDNUb0dhMEFI?=
 =?utf-8?B?TUZCNHVyaktSdW9FWVd4MUM0b2NpWkJ4OHhnZXQ4MkxveTQ4TUNVMy8xaVBq?=
 =?utf-8?B?QXRrbUxVWGNMSDh4NDFDMGgrcUFUeDJ0Z0FKdFhMY1M3aWhOYXJHNzZFMUc2?=
 =?utf-8?B?VnJnUFJHaTN1VmNxL3BHRlh1a0FUVk5sS1JPOVNGZ0FMckpkWGpUV0ZibU5X?=
 =?utf-8?B?c2JGb1B3T1ROS21uY2xxa2RFZHRsZFd3em1KTEQybEtGUHZyenRwbmpXeTkw?=
 =?utf-8?B?QW1MeVIxbkZJZlhKNjdaS2hhN2lrakZUcVk4Mzd4L0ZuQk8zSjVFNWxoM1pE?=
 =?utf-8?B?NVZ6dTR2a2g2WFUvSGw4cnE1QVhlZUhzRzl0ZEhRbXE0dUh1UzVqNDVKenpB?=
 =?utf-8?B?ZEc1Z3BJTlp1dHM5UnhpYnZmK0R3dWZ5SXgydXp4Z1BXbFhZS21LZmIvNWIx?=
 =?utf-8?B?RXFwQUJQUGZTakEyV3Y5SVZTNTVFa3dtYWtmbXp3RWpqN08zemV6N0FNYVlB?=
 =?utf-8?B?NDVwajc2QjZBRUFySnB2Uy9KMituaE5pK0tDR01vVjRvQjl5dm5tS0t2aHIy?=
 =?utf-8?B?SlhwaE9mUDVNay9tRFJ5b0R5Z01SK1RVcFhIaDBmQ3FSMTNqbGRabXNMRE9T?=
 =?utf-8?B?dEs0aXVUamFLWjVzVm1uZUkyMFo1UXF6UmQvMEFBQ3o4cU5pRnNOQVc5UHJS?=
 =?utf-8?B?T1YxNmNrL2J4d1NwSEE5R2xzdmpZblk5MEhSWmhaT01rZ2NveThwTmVNdnR6?=
 =?utf-8?B?RFlDUngrYmNoS2RCblBUOCsybG42anJ0WkN3OUZ3U1RuWk1VM2RDekFXSVBs?=
 =?utf-8?B?SzNDUXh3ZE9mOFV4RS9TQVorUUdjZk04cWdpYTRNQ0pPc0E2cVBRNkUyRjBZ?=
 =?utf-8?B?cE5TR1lUeTRoTGV0MVpXdjRhdHBYbTNadHluL01xNkFmclcvOG5MRnZlaWxQ?=
 =?utf-8?B?MldncTBuTXFFLzJ0ZitGSGdDMGxjSmN6anYwSGJqVHZTdFBYVHhjblBLcFhB?=
 =?utf-8?Q?imzGnBPzpC41e/KOZjWlvmM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8facc75c-293d-4773-b037-08dbaeb2216e
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 08:20:29.5624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnMl7CCGrnLopdJA4d/mOrY83jLeTTGI5MlyIvGzOAesqd3lj6aZCgByxjI6EQ/G+obDZ0MvnwwfN/GWjY5UANdSBfjFWFEuenGGbL6ymPcibOICEjrSb8Ex8YdyGIkS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_012042_867942_B16CC46C 
X-CRM114-Status: GOOD (  41.05  )
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

U2FzY2hhLCBSb2JpbiwKCk9uIDkvNS8yMyAxMTowMywgUm9iaW4gTXVycGh5IHdyb3RlOgo+IFtZ
b3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZyb20gcm9iaW4ubXVycGh5QGFybS5jb20uIExlYXJu
IHdoeSB0aGlzIGlzIAo+IGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2Vu
ZGVySWRlbnRpZmljYXRpb24gXQo+IAo+IE9uIDIwMjMtMDktMDQgMTI6NTgsIFNhc2NoYSBIYXVl
ciB3cm90ZToKPj4gQWRkIHJvY2tjaGlwLGlvLWRvbWFpbnMgcHJvcGVydHkgdG8gdGhlIFJvY2tj
aGlwIHBpbmN0cmwgZHJpdmVyLiBUaGlzCj4+IGxpc3Qgb2YgcGhhbmRsZXMgcG9pbnRzIHRvIHRo
ZSBJTyBkb21haW4gZGV2aWNlKHMpIHRoZSBwaW5zIG9mIHRoZQo+PiBwaW5jdHJsIGRyaXZlciBh
cmUgc3VwcGxpZWQgZnJvbS4KPj4KPj4gQWxzbyBhIHJvY2tjaGlwLGlvLWRvbWFpbi1ib290LW9u
IHByb3BlcnR5IGlzIGFkZGVkIHRvIHBpbiBncm91cHMKPj4gd2hpY2ggY2FuIGJlIHVzZWQgZm9y
IHBpbiBncm91cHMgd2hpY2ggdGhlbXNlbHZlcyBhcmUgbmVlZGVkIHRvIGFjY2Vzcwo+PiB0aGUg
cmVndWxhdG9ycyBhbiBJTyBkb21haW4gaXMgZHJpdmVuIGZyb20uCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4gLS0tCj4+IMKgIC4u
Li9iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLHBpbmN0cmwueWFtbMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDEzICsrKysrKysrKysrKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCAKPj4gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwgCj4+IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAscGluY3RybC55
YW1sCj4+IGluZGV4IDEwYzMzNWVmZTYxOWUuLjkyMDc1NDE5ZDI5Y2YgMTAwNjQ0Cj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLHBpbmN0
cmwueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3Ry
bC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwKPj4gQEAgLTYyLDYgKzYyLDExIEBAIHByb3BlcnRpZXM6
Cj4+IMKgwqDCoMKgwqDCoMKgIFJlcXVpcmVkIGZvciBhdCBsZWFzdCByazMxODggYW5kIHJrMzI4
OC4gT24gdGhlIHJrMzM2OCB0aGlzIAo+PiBzaG91bGQKPj4gwqDCoMKgwqDCoMKgwqAgcG9pbnQg
dG8gdGhlIFBNVUdSRiBzeXNjb24uCj4+Cj4+ICvCoCByb2NrY2hpcCxpby1kb21haW5zOgo+PiAr
wqDCoMKgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJy
YXkKPj4gK8KgwqDCoCBkZXNjcmlwdGlvbjoKPj4gK8KgwqDCoMKgwqAgUGhhbmRsZXMgdG8gaW8g
ZG9tYWlucwo+PiArCj4+IMKgwqDCoCAiI2FkZHJlc3MtY2VsbHMiOgo+PiDCoMKgwqDCoMKgIGVu
dW06IFsxLCAyXQo+Pgo+PiBAQCAtMTM3LDcgKzE0MiwxMyBAQCBhZGRpdGlvbmFsUHJvcGVydGll
czoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjoKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUaGUgcGhhbmRsZSBvZiBhIG5vZGUgY29udGFp
bnMgdGhlIGdlbmVyaWMgcGluY29uZmlnIAo+PiBvcHRpb25zCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdG8gdXNlIGFzIGRlc2NyaWJlZCBpbiBwaW5jdHJsLWJpbmRpbmdz
LnR4dC4KPj4gLQo+PiArwqDCoMKgwqDCoCByb2NrY2hpcCxpby1kb21haW4tYm9vdC1vbjoKPiAK
PiBJIGRvbid0IHRoaW5rICJvbiIgaXMgYSBwYXJ0aWN1bGFybHkgZGVzY3JpcHRpdmUgb3IgdXNl
ZnVsIHByb3BlcnR5IG5hbWUKPiBmb3Igc29tZXRoaW5nIHRoYXQgaGFzIG5vICJvZmYiIHN0YXRl
LiBGdXJ0aGVybW9yZSBpdCdzIG5vIGhlbHAgYXQgYWxsCj4gaWYgdGhlIERUIGNvbnN1bWVyICpp
cyogdGhlIGJvb3Rsb2FkZXIgdGhhdCdzIGV4cGVjdGVkIHRvIGNvbmZpZ3VyZSB0aGlzCj4gaW4g
dGhlIGZpcnN0IHBsYWNlLiBJTU8gaXQgd291bGQgc2VlbSBhIGxvdCBtb3JlIHNlbnNpYmxlIHRv
IGhhdmUgYW4KPiBpbnRlZ2VyIChvciBlbnVtKSBwcm9wZXJ0eSB3aGljaCBkZXNjcmliZXMgdGhl
IGFjdHVhbCB2YWx1ZSBmb3IgdGhlCj4gaW5pdGlhbCBJL08gZG9tYWluIHNldHRpbmcuIFRoZW4g
TGludXggY2FuIGNob29zZSB0byBhc3N1bWUgdGhlIHByZXNlbmNlCj4gb2YgdGhlIHByb3BlcnR5
IGF0IGFsbCBpbXBsaWVzIHRoYXQgdGhlIGJvb3Rsb2FkZXIgc2hvdWxkIGhhdmUgc2V0IGl0IHVw
Cj4gYWxyZWFkeSwgYnV0IGFsc28gaGFzIHRoZSBvcHRpb24gb2YgYWN0aXZlbHkgZW5mb3JjaW5n
IGl0IGFzIHdlbGwgaWYgd2UKPiB3YW50IHRvLgo+IAoKVGhpcyBpcyBhY3R1YWxseSBoaWdobHkg
bWlzbGVhZGluZy4gV2hldGhlciB0aGUgYm9vdGxvYWRlciBoYW5kbGVzIElPIApkb21haW5zIGZv
ciBwaW5jdHJsIG9yIG5vdCBhYnNvbHV0ZWx5IGRvZXNuJ3QgbWF0dGVyIHRvIHRoZSBrZXJuZWwg
c2luY2UgCnRoZSBrZXJuZWwgaXMgcmVxdWlyZWQgdG8gaGFuZGxlIElPIGRvbWFpbiBmb3IgcGlu
Y3RybCBhcyB3ZWxsLiBUaGV5J3JlIApub3QgZXhjbHVzaXZlLCB0aGV5IGFyZSBub3QgY29tcGxl
bWVudGFyeS4KClRoZSBwb2ludCBpcyB0aGF0IHRoZSB2b2x0YWdlIG9mIHRoZSBJTyBkb21haW4g
KipjYW4qKiBjaGFuZ2UgYXQgCnJ1bnRpbWUsIGF0IGFueSBwb2ludCBpbiB0aW1lLiBXZSBjb3Vs
ZCB0aGVvcmV0aWNhbGx5IGhhdmUgdGhlIApib290bG9hZGVyIHJlcXVpcmUgdGhlIHJlZ3VsYXRv
ciB0byBiZSBydW5uaW5nIGF0IDEuOFYgYW5kIHRoZW4gdGhlIAprZXJuZWwgYXQgMy4zViwgYm90
aCBzaG91bGQgd29yayAoY2FuJ3QgdGhpbmsgb2YgYW55dGhpbmcgdGhhdCB3b3VsZCAKd29yayBs
aWtlIHRoYXQgYnV0IHdoeSBub3QsIHRoZSBrZXJuZWwgSU8gZG9tYWluIGRyaXZlciBpcyBzdXBw
b3NlZCB0byAKaGFuZGxlIHRoYXQgd2l0aGluIHRoZSBrZXJuZWwgcnVudGltZSBldmVuKS4KClRo
ZSBpc3N1ZSBoZXJlIGlzIHRoYXQgd2Ugd2FudCB0byBhdm9pZCBhIGN5Y2xpYyBkZXBlbmRlbmN5
LCB3aGVyZSB0aGUgCnBpbmN0cmwgaXMgbmVlZGVkIGZvciB0aGUgSU8gZG9tYWluIHJlZ3VsYXRv
ciB0aGF0IHdlJ3JlIHRyeWluZyB0byBhZGQgCmFzIGEgZGVwZW5kZW5jeSBvZiB0aGUgc2FtZSBw
aW5jdHJsLiBUaGVyZSBuZWVkcyB0byBiZSBlaXRoZXIgc29tZSBzbWFydCAKZGV0ZWN0aW9uIG9y
IGEgcHJvcGVydHkgdG8gc3BlY2lmeSB0aGF0IHRoZSBJTyBkb21haW4gZGVwZW5kZW5jeSBuZWVk
cyAKdG8gYmUgaWdub3JlZC4gVGhpcyBzZWVtcyB1bmZvcnR1bmF0ZWx5IHRvIGJlIGZvciB3b3Jr
aW5nIGFyb3VuZCBob3cgCkxpbnV4IGhhbmRsZXMgZGVwZW5kZW5jaWVzIGJldHdlZW4gZGV2aWNl
cyBhbmQgZG9lc24ndCBhbGxvdyBjeWNsaWMgCmRlcGVuZGVuY2llcy4gQXQgdGhlIHNhbWUgdGlt
ZSwgSSBkbyBub3Qga25vdyBpZiB0aGVyZSdzIGFueXdheSB0byBub3QgCndvcmsgYXJvdW5kIGl0
PwoKPj4gK8KgwqDCoMKgwqDCoMKgIHR5cGU6IGJvb2xlYW4KPj4gK8KgwqDCoMKgwqDCoMKgIGRl
c2NyaXB0aW9uOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgIElmIHRydWUgYXNzdW1lIHRoYXQgdGhl
IGlvIGRvbWFpbiBuZWVkZWQgZm9yIHRoaXMgcGluIGdyb3VwIAo+PiBoYXMgYmVlbgo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbmZpZ3VyZWQgY29ycmVjdGx5IGJ5IHRoZSBib290bG9hZGVyLiBU
aGlzIGlzIG5lZWRlZCB0byAKPj4gYnJlYWsgY3ljbGljCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAg
ZGVwZW5kZW5jaWVzIGludHJvZHVjZWQgd2hlbiBhIGlvIGRvbWFpbiBuZWVkcyBhIHJlZ3VsYXRv
ciAKPj4gdGhhdCBjYW4gYmUKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBhY2Nlc3NlZCB0aHJvdWdo
IHBpbnMgY29uZmlndXJlZCBoZXJlLgo+IAo+IFRoaXMgaXMgZGVzY3JpYmluZyBhIExpbnV4IGlt
cGxlbWVudGF0aW9uIGRldGFpbCwgbm90IHRoZSBiaW5kaW5nCj4gaXRzZWxmLiBUaGVyZSdzIG5v
IHRlY2huaWNhbCByZWFzb24gYSBEVCBjb25zdW1lciBjb3VsZG4ndCBhbHJlYWR5Cj4gZmlndXJl
IHRoaXMgbXVjaCBvdXQgZnJvbSB0aGUgZXhpc3RpbmcgdG9wb2xvZ3kgKGJ5IG9ic2VydmluZyB0
aGF0IHRoZQo+IHBpbmN0cmwgY29uc3VtZXIgaXMgYSBncmFuZHBhcmVudCBvZiB0aGUgSS9PIGRv
bWFpbidzIHN1cHBseSkuCj4gCgpJIGFtIGd1ZXNzaW5nIHlvdSdyZSBzdWdnZXN0aW5nIHRvIGhh
dmUgc29tZSBjb21wbGV4IGhhbmRsaW5nIGluIHRoZSAKZHJpdmVyIHRvIGRldGVjdCB0aG9zZSBj
eWNsaWMgZGVwZW5kZW5jaWVzIGFuZCBpZ25vcmUgdGhlIElPIGRvbWFpbiAKZGVwZW5kZW5jeSBm
b3IgdGhlIHBpbmN0cmwgcGlucyB3aGVyZSB0aGlzIGhhcHBlbnM/CgpUaGlzIGNhbiBhY3R1YWxs
eSBiZSBxdWl0ZSBkaWZmaWN1bHQgdG8gZGV0ZWN0IHJlbGlhYmx5OgpXZSBuZWVkIHRvIGdvIHRo
cm91Z2ggdGhlIHBoYW5kbGUgaW4gcGluY3RybCB0byB0aGUgSU8gZG9tYWluIERUIG5vZGUsIAp0
aGVuIGNoZWNrIGFsbCBwaGFuZGxlcyB0aGVyZSB0byBvdGhlciBEVCBub2RlIChsaWtlbHkgcmVn
dWxhdG9ycyksIHRoZW4gCndlIG5lZWQgdG8gbG9vayBpbnRvIHRoZSBwaW5jdHJsLTAgKGFjdHVh
bGx5LCB0aGUgb25lIGZvciAiZGVmYXVsdCIgCm1heWJlLCBidXQgd2hhdCBhYm91dCB0aGUgb3Ro
ZXIgc3RhdGVzIG9mIHBpbmN0cmw/KSBwaGFuZGxlcyBhbmQgdGhlbiAKcGFyc2UgdGhlIHBpbmN0
cnQgRFQgbm9kZXMgdG8gc2VlIGlmIHRoZXkncmUgcG9pbnRpbmcgdG8gdGhlIHNhbWUgRFQgCm5v
ZGUgYXMgdGhlIG9uZSB3ZSdyZSB0cnlpbmcgdG8gdXNlLiBIZXJlLCB3ZSBhbHNvIGRvIG5vdCBr
bm93IGlmIHRoZSAKcmVndWxhdG9yIERUIG5vZGUgaGFzIG90aGVyIGRlcGVuZGVuY2llcyB0aGF0
IG5lZWRzIHRvIGJlIGFjY291bnRlZCBmb3IuCgpJIGhhdmVuJ3QgcHV0IHRvbyBtdWNoIHRob3Vn
aHRzIGludG8gaXQgc28gbWF5YmUgaXQncyBlYXNpZXIvaGFyZGVyIHRoYW4gCndoYXQgSSdtIHNh
eWluZyBoZXJlIChvciBtYXliZSBJJ20gY29tcGxldGVseSBvZmYgdG9vLi4uKS4KCk9uZSBvZiB0
aGUgaXNzdWVzIHdlJ3JlIGhhdmluZyBoZXJlIHRvbyBpcyB0aGF0IHdlIGxvc2UgZ3JhbnVsYXJp
dHkuIApUaGVyZSBhcmUgbXVsdGlwbGUgZG9tYWlucyBpbnNpZGUgYW4gSU8gZG9tYWluIGRldmlj
ZSBhbmQgaGVyZSB3ZSBtYWtlIAp0aGUgd2hvbGUgcGluY3RybCBkZXZpY2UgZGVwZW5kIG9uIGFs
bCBkb21haW5zIGZyb20gb25lIElPIGRvbWFpbiBkZXZpY2UgCih0aGVyZSBjYW4gYmUgbXVsdGlw
bGUgb25lcykgd2hpbGUgaXQgaXMgZmFjdHVhbGx5IChvbiB0aGUgSFcgbGV2ZWwpIApvbmx5IGRl
cGVuZGVudCBvbiBvbmUgZG9tYWluLiBDb25zaWRlcmluZyAoaWYgSSByZW1lbWJlciBjb3JyZWN0
bHkpIApIZWlrbyBoaWdobHkgc3VnZ2VzdGVkIHdlIHRoaW5rIGFib3V0IGFkZGluZyBjaGlsZCBu
b2RlcyB0byB0aGUgSU8gCmRvbWFpbiBkZXZpY2VzIHRvIGhhdmUgYSBEVCBub2RlIHBlciBkb21h
aW4gaW4gdGhlIElPIGRvbWFpbiBkZXZpY2UsIGhvdyAKd291bGQgdGhpcyB3b3JrIHdpdGggdGhl
IHN1Z2dlc3RlZCBEVCBiaW5kaW5nPwoKQ2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
