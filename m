Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD951C5472D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OUXBu0WMVtRMTyw9MSSfEQ3p9oWIkDzrNobDzAPVKnI=; b=T7wrfWxWA8olEqOsiI8sbj6ujO
	9643XKD5oxtgaxiVmvM6GLTjcppMLh42noE9ezr68laqnwAVy3F3fBzEHqKyq9YL1T4w4gfwGhaOI
	c2uYwv3FffY4rpVBBkBmcF+QYGAfP1Uiht3xaLUJQaA5WH5k4UfRz1e+vfC1VxfKbq3CD5xC4xixH
	osyuBiQKWOs+2T7NTCHvlSjkZjMuGwty57GfA1jRXMGAdads8Ee6LcgicKu4R4tK66UoCdpnXnge7
	35rW9gyP/tC0aGzOXMNStgh9hqnFQ1G5dq+Sv044nlEmqBsrzlPeVnr/qmIfVP8iDJrKhiWJqGvSj
	x2E5o52A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDvW-0000000EVou-09cn;
	Wed, 28 Aug 2024 08:21:14 +0000
Received: from mail-sgaapc01on2072d.outbound.protection.outlook.com ([2a01:111:f400:feab::72d] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDue-0000000EVdd-2y7R;
	Wed, 28 Aug 2024 08:20:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iOYPCSPO80xN9tOgypq3yUeW2/FXwamcYYBRrDwn8iIEAEgGFb1S80t8LFCTdINd6kEsS1mv8FhorANYR5XpxaUHZZtuLuZ+COoDXyH9Umrd9ejCOq8a0VNrWJ//BEVihdBltVT/hOlvugJrtPYFp1Wunl5feXPjnX+avg9AQ208JDoYfeQWVSbEvIw6BAIbPOtKKBkwndtq+y9Hwj0Ypdd3iXEQWyBE4z7WiSKG0oDhB3VPDeO0/msPnIVsXensGFfyFCfa1MqODoCLpbxNC9MB/njm6Y4+meRQhgktd9+L7Ut27tZcAByD7ySR2IjQaH5KRViE7oS+8tIP6VN0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFoMQB1BInVeq/9F9c9L7csWl1IR1FsB6fDQdqkS6t8=;
 b=I9Qs1oH2eBQHdJpI1yn/AxIxYZ/b6kkQh/bBvZjy4Z4Xnn9SFKhei/waTShWHzeDfou1W3oNxJX1gSWGVWRf6MbH2IPSCVd2502iCeFI5xRbYZpqdsN7WtCNkUoppPZOUZ6YySKBZpWlMzcUb1So2ys0bLS92YXT4MSmjdt1WRa1M5yiAO/g/5Jy9JSauF8M1KydTJFEOG9BY7Pg1rUJrUC9PsDuIxLMjGpGGCzXnPWdCbIVgSW6F6LCnYbEUoaDMfF40ZwDCl5AnykEJL4ncQPwX3Wx1YTH7LkmGfLHQTsgHcrr/bLqh7IsvvMmPqMfvdjG/jMFqi7wRdYBIom0qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TYZPR03MB7772.apcprd03.prod.outlook.com (2603:1096:400:428::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Wed, 28 Aug
 2024 08:20:12 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%4]) with mapi id 15.20.7875.019; Wed, 28 Aug 2024
 08:20:12 +0000
Message-ID: <661258ad-48bc-4463-a151-c6b09de40a2c@wesion.com>
Date: Wed, 28 Aug 2024 16:20:08 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 0/2] (no cover subject)
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, Muhammed Efe Cetin <efectn@protonmail.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20240828-dts-v12-0-80b6f240f67f@wesion.com>
 <2106034.K71DO8KEF6@diego>
Content-Language: en-US
From: Jacobe Zang <jacobe.zang@wesion.com>
In-Reply-To: <2106034.K71DO8KEF6@diego>
X-ClientProxiedBy: TYCP286CA0242.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:456::9) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|TYZPR03MB7772:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cc2f027-a8d5-4a5e-9c25-08dcc73a3cb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVVINWdoU0tMZmxtRlBSZnVxWkRKVnFJYzEwMldaMWU1TE5wN01ZQ2IxU2Ji?=
 =?utf-8?B?dk11UHZwS0c3UDFoYWtFVWR1VDJrTmpmQk5WT05mLzc2ejVYd2FYYnp1SWtu?=
 =?utf-8?B?b3UyRHhZQkFSa3VsbDM2NVRQOXkxYmtaOEg4aUJIYVJyNFZrL1lFM1BWNFRN?=
 =?utf-8?B?Tk8wNzV6cG51ZXFLTGZ5UjZlQmRtUVJ5M0E2S2NHMXFkdW05ZzFmRUlubTQ0?=
 =?utf-8?B?L0RKbHgwcDhOWThpb21QQzZ2MnJ3UnBUMUt0TGdDeVdFTmRqdVlkeU9Ib1Bq?=
 =?utf-8?B?ZS9LM2NyR25zL0lyNTFLMlFwNVhGQ3ppY0ZZcXJKamxEYjAxVlV4QkhneEZa?=
 =?utf-8?B?WlJpaEV4Tmp1RkxpTjZtSEFBR3o0QndNck9mdnZEakVlYnpZQmQwREpVVjAr?=
 =?utf-8?B?V0tSeHBWUjVYMWM4Sm1jZFN2OS84dUJlRitFdU02UE1uZVdKK2x1c0w3ZVA3?=
 =?utf-8?B?T0gxeE83K3A1MDdVRGI1aEFLTWlWSUJaK3ViSjh3Qnp2VGVXUW12V0RveTht?=
 =?utf-8?B?cjRGenRITzk1MkJlaFZXSFIwNFdPYlVOa2tOemo4OVExME9LSGxjbmpBSVBR?=
 =?utf-8?B?ZUtSbksvSFg5bWw0bnZzUDZ0bmg5RW4wbXRGVlpNMFU2ZW1KQURtcHJqU2Nx?=
 =?utf-8?B?djZNQUdYYTM2MVNKd2hXRHZWYkJidlNwaUxsRHRDSkVsUHpTUWxFOFZ2RVRh?=
 =?utf-8?B?NXo0Z3MwN29ha2dLNUN3Q0VVbHkzdmxscWtHS0dINU81VzVVMjBzU25iQkRM?=
 =?utf-8?B?eXZKemdGQ1BVZnVqdjBtcFZuam5PSjFpZFZLK2FnY3VvZjhLSkJCcXBYSFo5?=
 =?utf-8?B?Nnczc1JIMGU4cFRTd3Mva212SkV6T0VOa2RaaFFBZ2xOTm5wUFhQR1N2elB5?=
 =?utf-8?B?bkdmdDd4SitaSExCdGJCb1NhbUhOQjNEMFVXbVN2SDVBeCtPbDROY3owcE8r?=
 =?utf-8?B?cUNyMmZ4SnVPQ2pnM3ByaGdiZ01ieUFwYjMwUlgxKzc2RElXenNKUmhlVXoy?=
 =?utf-8?B?d29zR0xaMUdUZll5bHZyZUJ2VUt4Y0M1N2U0bDVSV2ZkN1dLSUlDM2ZwQ255?=
 =?utf-8?B?WjcxWkZQaDl4UTZhUVlEZEx6d2w4RmoySFJxTFU3bVhSbmpkc3VTWTFpVzJL?=
 =?utf-8?B?MjRyeXZnK29Ca1NxZkhMa3hyRWhNUXVtazh2Z2l6VTBnN2R3YU9TQmpEOUZN?=
 =?utf-8?B?YVJWM3NFNlR5MTdqWU9tUlJKWE5pQmo3Z2JKRnBRRHdBTnR0MEo1eGVJZExE?=
 =?utf-8?B?d2xBc1dkSEZwVDBMRXMwOFo2VWpCN0tySUpZL0lqeDNzOGVFZzh1L29INUcz?=
 =?utf-8?B?YzQ4ZEVCYklXSHlCK3BzSFZ2V0kxVmRSanlvMWQzUkpldmZSSzR3OTJRTWV1?=
 =?utf-8?B?bGZ1amVuOU5OTEpjUUxFUVVjVzdiQjF0ZHZaVjVLZ2srcUtJYXlOa25JdU1N?=
 =?utf-8?B?azNyZTJGWkI0V3d1RG82WDluSG9RckoyL1hMZENLYzBkTWNlaHZmMWNod1NZ?=
 =?utf-8?B?Y2VWeEN0VmVFRzVNZ2F4QjZ2eHRnUXVsWmlPTnZsOG5KajVrK0w1L1dOMWpB?=
 =?utf-8?B?em9aSVB3WTVkRW5pZnVtbzJhWVBYeEVFcFJ6akFjUTJDY0pPbkVOVTRZVXZy?=
 =?utf-8?B?Zmx4S0xuL0tCRHRDemxBWjhxSjUrNzZiMVorVm01MThPNkNhMS82S1BJZVM2?=
 =?utf-8?B?Q1pNd0tXK2NlOXVsT3FlcUVNUWF0cUNOcm9PeVlnaGYwYzQyKy9qSUtqVHA4?=
 =?utf-8?B?VjhXTHc2VW5QNzdGdzlzdVZnWWNYN0dPaDUwWExpSkhNd1ZIUkhud3M1YWdh?=
 =?utf-8?Q?DJtaugSPjixvrScQoVRIL8zM3cAR06Yh6gqjk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUZONStzMUx4aUx3R3FHeWIzU3EyUVRSL0duT09QM09CRmFEN0FoSDc0U3h0?=
 =?utf-8?B?MmJSZ1ZEY2kvN2JBZDZzSUJpM0UxTndWMExaUXQ3b0htRnpqZnVQbHlQbWRZ?=
 =?utf-8?B?bTEySG9HL2djT3I5TWIvUTl2QjRTdVpyeVlmZ3FJQ3BZR1lGbVJvQi9qSkJZ?=
 =?utf-8?B?bi9IQW9oVk0yZVFXQkVVS2doMkpIbzBtM1dYU0pxM2tzK2ZEZXpJdnU3VmZ6?=
 =?utf-8?B?YkxxRFZMUW5lTFVBOFhFWjRjVDNiRHlRdWZxNWpNaExOejg1MzVLMTY4MmRZ?=
 =?utf-8?B?MWhYbE1XcVEvT1oxMllaU1Fsdm4yUE5GNTRVd1RwNVlycXpuVUtHOWMxWmpH?=
 =?utf-8?B?anRkTzVXNmlTVE9uWUYzQnI3MURhRzdKTE43TERnZjRDTjdYaFpmenVZYmJw?=
 =?utf-8?B?RC92WStuU2IvOFlDeDZqMlB3SS9qUHUxdkpVeXlYQzBoN0IzcGlaVjdzVmoy?=
 =?utf-8?B?a3BVRmVhZ3N5ZnRFNkRWOHBiV3lKbVZ1RVMrVGlrcTdPbFRSaEI3YnZBeDl1?=
 =?utf-8?B?WlpGREh5bmRqbGNOelZkblAwVTZubFBFbDRneTV2aEQyZUhlV280U3B2MmFq?=
 =?utf-8?B?cFRJOTF0T0crcVIvSWllWEZEbVFzMGRnWVUzZWp1MWMxMzAvbGpNMksrQ0xu?=
 =?utf-8?B?cVRjUHQxMEMzS1lLMTh6a3hWMlowUmVMSFFuZzFSa2ovc3VqTEliNUxQVjhu?=
 =?utf-8?B?R0RHcjlPYlhjYW40VXc0dGxlWDcyckRwZmFFMDBrSnUwcitiN1NYN2dXVTZ4?=
 =?utf-8?B?RUluYkdxVFhFRGx2THVaeHFGMlZ1NCt6eEgvbmdMYm83UnNQK0F5cXpUVUZL?=
 =?utf-8?B?a0Y4Zlc5bEtXam43Z3pzdy9xVEtxMTRWaVFXeUNpekxuYlBTSElONUR4L09n?=
 =?utf-8?B?dGJrOUZuVURxNXdWZnhuUnBJVnRkSEgyTDFkZHNRU1B0VFVvSFpZNUJEQ2JI?=
 =?utf-8?B?NXVHUDZybGJCWW00Q0hKK0hZOEZVSnV5YlRGczJpRVZjN3pCT21KRmNlS0VP?=
 =?utf-8?B?b0tlQVo1aWpldW4rZEloY0J1Tm9lMzR0ZERFQUdKWVZYazE1RTIyRnRWNnBS?=
 =?utf-8?B?KytobVNKUGNzVWlHV01JdEQzdXl4ZzlneXFMbkpzV0M5bGtDdnZnaVJMRjN0?=
 =?utf-8?B?RlcrdUhkVFplWHRJQXhpUTgrMXlLZ3FwU08yTXdjWEVqMXVFaWJVVVNWaDFq?=
 =?utf-8?B?a2RPM1VuQkVWZ3FXVE9VekxZdGFXdXVVTm1qc0RQVm9wa0hxTEFJOE15TGNh?=
 =?utf-8?B?SEk0UktENGc4d0tFTVBGVFlaS3h1VUdUL2lQTmU5TUlYTWhGNU5uT1ZhbHg0?=
 =?utf-8?B?REQ2dVNPeVNMSmQrNGVKYWxENGFYMHA5by9YWmVuL0Q3dFc4UnZLcnFKRVZJ?=
 =?utf-8?B?a1NVYXdueXRjN0tsdGhudGkyRnBWamUra0FFNG50SENXSzVPMFdiQ20zR2Zk?=
 =?utf-8?B?Q05PcEZiMldibUEyaXNWRGRPNStoMUsxbmRBVGlVc2RJQXpOUS9BMUJDcXYz?=
 =?utf-8?B?cFZZR2pvUkdoZkhSRnlXVjFUM3Q3bzRHeXI3MmZwR2V3cGtyTHJkMU1KMkNp?=
 =?utf-8?B?ZXZjUTF6SWRiUGVCTTQvT1BibTJxT2kyZmc2V0JkZDZ2azRvTW9WS1c1MkY4?=
 =?utf-8?B?Uk5uOVNNQmdCS1Fmay9NamdPd1ZHVFlOQllMQWM3WmJYVmx3VmZtS1NQbE9v?=
 =?utf-8?B?aCtnN29iQkkxU1BLRG5OUXpMNWVBRXZvVUVWTGc0WWo2OTlnTjlHUTY5eXJI?=
 =?utf-8?B?dWpxVVRVTjZXZitCcDRPY2xrbUhuWkl4MVMxcTNTV21Hd2FZeWVMMk50cWY1?=
 =?utf-8?B?VTAzb3FSWkxIL2UzYmNGanJSMlhGcHh6a0NtSmZLWVp6dkw1clRhd1VZWEJz?=
 =?utf-8?B?QWhqNGUxcENRY3Q1U3RmWnRiZUNuazBJK1NtN240ZzV3bCt6bnpSaTlKQk9Y?=
 =?utf-8?B?emdrcVFGRVVVZDFoaXVPdWRaTk84dHdJYVFKRVRpdm9OMms4dUtEbmNBbWsr?=
 =?utf-8?B?RkxNNlRJS2N2K1dxYTdjcnBUdTVqbnYyWFNDeTFyVkFuN1lWQ0E3TTVWem02?=
 =?utf-8?B?eFhrNEdsK21BN1UxdW44RTlGbjVTZi9pRlVLTkozVUUrV25zdSs2QXdZQmJK?=
 =?utf-8?Q?V80UhXtWQMfvVuusieUiRVFQt?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc2f027-a8d5-4a5e-9c25-08dcc73a3cb7
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 08:20:12.1441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rLGiXwDoFMuP0q8S370ssXnSLp7St2wUfKl8aaB7c9hy+FvZj8SNzwpAWsWv+CQK+nWteiAx4poFXZqHOsgOWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_012020_780355_EDD43A3D 
X-CRM114-Status: GOOD (  16.62  )
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

CgpPbiAyMDI0LzgvMjggMTY6MTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpLAo+IAo+IEFt
IE1pdHR3b2NoLCAyOC4gQXVndXN0IDIwMjQsIDA5OjU4OjQ4IENFU1Qgc2NocmllYiBKYWNvYmUg
WmFuZzoKPj4gQWRkIGJhc2ljIFdpLUZpIHN1cHBvcnQgb24gS2hhZGFzIEVkZ2UyLiBXaXJlbGVz
cyBkcml2ZXIgbmVlZCB0byBjaGVjayAiYnJjbSxiY200MzI5LWZtYWMiCj4+IGNvbXBhdGlibGUg
c28gYWRkIGl0IHRvIEFwcGxlJ3MgZGV2aWNlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmFjb2Jl
IFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+Cj4+IC0tLQo+PiBDaGFuZ2VzIGluIHYxMjoK
PiAKPiBJIHRoaW5rIHRoYXQgZGlkIGdvIHdyb25nPwo+IFRoZSBlYXJsaWVyIHZlcnNpb24gd2Fz
IGFscmVhZHkgYSB2MTI/Cj4gCj4gV2FzIHRoaXMgc2VudCBhY2NpZGVudGlhbGx5Pwo+IAoKWWVw
ISBQbGVhc2UgaWdub3JlISBJdCBpcyBteSBmaXJzdCB0aW1lIHVzaW5nIGI0IHRvIHNlbmQgcGF0
Y2guIFNvIG1peGVkIAp1cCB0aGUgdmVyc2lvbnMuCgo+IAo+PiAgIC0gQWRkIGZhbGxiYWNrIGNv
bXBhdGlibGUgZm9yIEFwcGxlJ3MgZGV2aWNlcwo+Pgo+PiAgIC0gTGluayB0byB2MTE6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDgxNjAxNTIxNC4xMjcxMTYyLTEtamFjb2JlLnph
bmdAd2VzaW9uLmNvbS8KPj4KPj4gQ2hhbmdlcyBpbiB2MTE6Cj4+ICAgLSBTcGxpdCBEVFMgYW5k
IHN1Ym1pdCBzZXBhcmF0ZWx5Cj4+Cj4+ICAgLSBMaW5rIHRvIHYxMDogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjQwODEzMDgyMDA3LjI2MjU4NDEtMS1qYWNvYmUuemFuZ0B3ZXNpb24u
Y29tLwo+Pgo+PiBDaGFuZ2VzIGluIHYxMDoKPj4gICAtIFVzZSByZXQgaW5zdGVhZCB1bnVzZWQg
cHJvYmVfYXR0YWNoX3Jlc3VsdCBpbiBzZGlvLmMKPj4KPj4gICAtIExpbmsgdG8gdjk6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDgxMDAzNTE0MS40MzkwMjQtMS1qYWNvYmUuemFu
Z0B3ZXNpb24uY29tLwo+Pgo+PiBDaGFuZ2VzIGluIHY5Ogo+PiAgIC0gQWRkIHJldHVybiAtRU5P
REVWIGVycm9yIHBvaW50ZXIgZnJvbSBicmNtZl9zZGlvX3Byb2JlIGFzIHRoZSBkZWZhdWx0IGZv
ciB0aGUgZmFpbCBwYXRoCj4+ICAgLSBBZGQgaWYgc3RhdGVtZW50IGZvciBicmNtZl9vZl9wcm9i
ZSBpbiBjb21tb24uYwo+PiAgIC0gUmV0YWluIG1vZGlmaWNhdGlvbnMgdG8gb2YuYyBvdGhlciB0
aGFuIHRoZSByZXR1cm4gdmFsdWVzCj4+Cj4+ICAgLSBMaW5rIHRvIHY4OiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNDA4MDUwNzM0MjUuMzQ5MjA3OC0xLWphY29iZS56YW5nQHdlc2lv
bi5jb20vCj4+Cj4+IENoYW5nZXMgaW4gdjg6Cj4+ICAgLSBBZGQgYXBwcm9wcmlhdGUgZXJybm8n
cyBmb3IgcmV0dXJuIHZhbHVlcyB0aGF0IHdpbGwgYmUKPj4gICAgICBzZW5kIHRvIGJ1cyB3aGVu
IGVycm9yIG9jY3VycmVkLgo+PiAgIAo+PiAgIC0gTGluayB0byB2NzogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjQwODAyMDI1NzE1LjIzNjA0NTYtMS1qYWNvYmUuemFuZ0B3ZXNpb24u
Y29tLwo+Pgo+PiBDaGFuZ2VzIGluIHY3Ogo+PiAgIC0gQ2hhbmdlIGJyY21mX29mX3Byb2JlIHBy
b3RvdHlwZXMgZnJvbSB2b2lkIHRvIGludCwgYWRkIGFwcHJvcHJpYXRlIGVycm5vJ3MgZm9yIHJl
dHVybgo+PiAgICAgIHZhbHVlLCBtb3ZlIGNsb2NrIGNoZWNrIHRvIHRoZSBlbmQgb2YgYnJjbWZf
b2ZfcHJvYmUKPj4gICAtIEFkZCAiYnJjbSxiY200MzI5LWZtYWMiIGNvbXBhdGlibGUgZm9yIHdp
Zmkgbm9kZQo+Pgo+PiAgIC0gTGluayB0byB2NjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjQwNzMxMDYxMTMyLjcwMzM2OC0xLWphY29iZS56YW5nQHdlc2lvbi5jb20vCj4+Cj4+IENo
YW5nZXMgaW4gdjY6Cj4+ICAgLSBNb3ZlICJicmNtLGJjbTQzMjktZm1hYyIgY2hlY2sgdG8gdGhl
IHRvcCBvZiBicmNtZl9vZl9wcm9iZSBpbiBvZi5jCj4+ICAgLSBBZGQgcmV0dXJuIGlmIGNsayBk
aWRuJ3Qgc2V0IGluIERUUwo+Pgo+PiAgIC1MaW5rIHRvIHY1OiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNDA3MzAwMzMwNTMuNDA5MjEzMi0xLWphY29iZS56YW5nQHdlc2lvbi5jb20v
Cj4+Cj4+IENoYW5nZXMgaW4gdjU6Cj4+ICAgLSBBZGQgbW9yZSBjb21taXQgbWVzc2FnZSB0byB0
aGUgY2xvY2sgaW4gYmluZGluZ3MKPj4gICAtIFVzZSBJU19FUlJfT1JfTlVMTCBhcyBhIGp1ZGdt
ZW50IGNvbmRpdGlvbiBvZiBjbGsKPj4KPj4gICAtIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDI0MDcyOTA3MDEwMi4zNzcwMzE4LTEtamFjb2JlLnphbmdAd2VzaW9u
LmNvbS8KPj4KPj4gQ2hhbmdlcyBpbiB2NDoKPj4gICAtIENoYW5nZSBjbG9jayBkZXNjcmlwdGlv
biBpbiBkdC1iaW5kaW5ncwo+PiAgIC0gTW92ZSBlbmFibGUgY2xrIGZyb20gcGNpZS5jIHRvIG9m
LmMKPj4gICAtIEFkZCBjb21wYXRpYmxlIGZvciB3aWZpIG5vZGUgaW4gRFRTCj4+ICAgLSBBZGQg
cmFuZG9tIHNlZWQgZmxhZyBmb3IgZmlybXdhcmUgZG93bmxvYWQKPj4KPj4gICAtIExpbmsgdG8g
djM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDYzMDA3MzYwNS4yMTY0MzQ2LTEt
amFjb2JlLnphbmdAd2VzaW9uLmNvbS8KPj4KPj4gQ2hhbmdlcyBpbiB2MzoKPj4gICAtIERyb3Bw
ZWQgcmVkdW5kYW50IHBhcnRzIGluIGR0LWJpbmRpbmdzLgo+PiAgIC0gQ2hhbmdlIGRyaXZlciBw
YXRjaCB0aXRsZSBwcmVmaXggYXMgJ3dpZmk6IGJyY21mbWFjOicuCj4+ICAgLSBDaGFuZ2UgRFRT
IFdpLUZpIG5vZGUgY2xvY2stbmFtZSBhcyAnbHBvJy4KPj4gICAKPj4gICAtIExpbmsgdG8gdjI6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDYyNDA4MTkwNi4xMzk5NDQ3LTEtamFj
b2JlLnphbmdAd2VzaW9uLmNvbS8KPj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gICAtIEFkZCBTb0Ig
dGFncyBmb3Igb3JpZ2luYWwgZGV2ZWxvcGVyLgo+PiAgIC0gQWRkIGR0LWJpbmRpbmdzIGZvciBw
Y2kxNGU0LDQ0OWQgYW5kIGNsb2Nrcy4KPj4gICAtIFJlcGxhY2UgZGV2X2luZm8gdG8gYnJjbWZf
ZGJnIGluIHBjaWUuYwo+Pgo+PiAgIC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwNjIwMDIwMDE1LjQwMjE2OTYtMS1qYWNvYmUuemFuZ0B3ZXNpb24uY29tLwo+
Pgo+PiAtLS0KPj4gSmFjb2JlIFphbmcgKDIpOgo+PiAgICAgICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBBUDYyNzVQIHdpcmVsZXNzIHN1cHBvcnQgdG8gS2hhZGFzIEVkZ2UgMgo+PiAgICAg
ICAgYXJtNjQ6IGR0czogYXBwbGU6IGFkZCAiYnJjbSxiY200MzI5LWZtYWMiIGZhbGxiYWNrIGNv
bXBhdGlibGUKPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FwcGxlL3Q4MTAzLWp4eHguZHRz
aSAgICAgICAgICAgICB8ICAyICstCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9hcHBsZS90ODEx
Mi1qNDEzLmR0cyAgICAgICAgICAgICAgfCAgMiArLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YXBwbGUvdDgxMTItajQ5My5kdHMgICAgICAgICAgICAgIHwgIDIgKy0KPj4gICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cyB8IDE2ICsrKysrKysr
KysrKysrKysKPj4gICA0IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4+IC0tLQo+PiBiYXNlLWNvbW1pdDogZGFiY2ZkNWUxMTY4MDA0OTZlYjliZWMyYmE3
YzAxNWNhMjA0M2FhMAo+PiBjaGFuZ2UtaWQ6IDIwMjQwODI4LWR0cy0xYjE2MzM3NWM0OWMKPj4K
Ci0tIApCZXN0IFJlZ2FyZHMKSmFjb2JlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
