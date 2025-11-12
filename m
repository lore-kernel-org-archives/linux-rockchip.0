Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B37CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 10:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Aux3YWQu1qCi+sbib9/3bvQfHxNv9lbQioI9hT/c10I=; b=F92Rf9VRYG8sGPODxgZl1Moq0u
	65AjMsSRUr61RIaKQ9SNeKcYWebkdILa6CGOzy0kQyPctljJ3q9r4zuSKoZhJYVNNBZBZUoASWzWA
	yPl7i5KwTBCjBuPh/qlRqjgxlD/iYAfUzSrkwVSDfV/eYjssApXfYGzofBSmJRXItIo3Qjz8Ol0bz
	WvK6gtKszHPsOQdIOSPTlbQDJcDQo/DAuKYSFZEOynVRsbo6abU+rVELhb1U06sQ0STyLkIP57gFw
	Pn1kQPv103xB35jtyHBXPO1PPJDwUNlaXU6xjTDF1BiepK29OLIfdvWmaUdbTxjzZ0vjKysfqBW1l
	SMnUYhfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ8C5-00000008aeR-172E;
	Wed, 12 Nov 2025 10:35:17 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ8Bz-00000008adg-0laW
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 10:35:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DEp7kJpN5ksWmEkBqWu1g+Y6j3SpZRBGxk5/3tN55FSjKY6q4ZpY2b2HAFEG41pNRppG77UzmZ7gD3rShC+qIbP0UHQX/5kVtkdGAGqSPu0B+77RM4IE8pKU3S58tbr9LKSp0MGXcc+xy0SQtKZA0bG5WEbDPYrojlw1vgicmA3jrLOx3rqGuRwQLw9yD1jYnBHdwtRwFBQ6TEkHQaHndTvfDaebSPRT0Gn28AcHalbfS0vPWmLOTGPSO1rm8M6Ryt+Qh7P/+SIkpUZgbkJuqwXV+nZEA+8E6laq6B3nhdZUmNmWIiGDuM52XpCgva6bedOVlpHEY4vA+I+JmfHD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2lw7NzGyGCSd8wz2Msi3Eh+UQwjvTTHxfqUt4DXFh0=;
 b=Opj0Vyuhxl9LEnZ8IA5iP6eH679j2MNlwOSymkVB3QmFghToicqN8f9VUcP9qVnAoXcSA2vgIfJgurPUjRMgpeRSYMj8CQYItjBBzVudQqcWjrKZswDVUFuJNWhl5KKV9gEqKc6hT8/Lr8O3NSiWOaf/otx4z2ntB+4AGiyWrQAoP+aSuc7jpclKG6Ppu9oKI0il2GCC9nEpE/junxJgeTOrHLCG+VVSxhWKZeEIE0J+U8BOZrpTjBpQqL668Ta4L9ndd6xcvuSWwHFEgahog/BxUsOAedKIJAEpfXk1EFLUUK3PnXzp5+Tw5z/U/w8fKQ+CTre8Cnica3rk3BEuIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v2lw7NzGyGCSd8wz2Msi3Eh+UQwjvTTHxfqUt4DXFh0=;
 b=CirY+Lx8LtESH5C1QxATx8kmywz5MoiVi9dZpHAfrPCNCY2lWZTDOP2o+v7HuQwB/1cke8+/MJqI3kEfAzUjbi01bwCQqqNID48gav3772ceBFpi9zpYhNR5wt0w/2csSzQ2hMIwwlikk3+bWi9ReOq4a7HrU74Glu5GagsclPY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PAXPR04MB8080.eurprd04.prod.outlook.com (2603:10a6:102:1c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 10:34:41 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9298.012; Wed, 12 Nov 2025
 10:34:41 +0000
Message-ID: <1459ebad-c087-49ac-a316-14436fac4bc6@cherry.de>
Date: Wed, 12 Nov 2025 11:34:39 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: Diederik de Haas <diederik@cknow-tech.com>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com,
 jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
 nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org,
 detlev.casanova@collabora.com, stephen@radxa.com,
 sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
 andy.yan@rock-chips.com, damon.ding@rock-chips.com,
 kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
 <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
 <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
 <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
 <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
 <DE6M84A93WTV.O5IW3BG8TZRW@cknow-tech.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <DE6M84A93WTV.O5IW3BG8TZRW@cknow-tech.com>
X-ClientProxiedBy: WA2P291CA0029.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::29) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PAXPR04MB8080:EE_
X-MS-Office365-Filtering-Correlation-Id: c224e484-c737-493f-f67e-08de21d71671
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OW51OVAwaUdLMWlqNU55TDdjSCtqT1JHT2VwVHgycGo5bS9IWnZUeW1tQ3Zt?=
 =?utf-8?B?TTdoT1UxNlhKS2tRWHRyM3BYZ00vdkVKUmMrMUk1eGJWSy9uZVhEck95UVY0?=
 =?utf-8?B?dVU5eGp0aFZyVGE1NmNhc0lXL2VhMzVIYWd0ditXclRqdTZOcWRQblhiRzZ1?=
 =?utf-8?B?SlpXUklWSmNxWTNUckdYR0tsb0tUTVZTSkd2eUpFYnBZZ1M4R3gzMW0xdmls?=
 =?utf-8?B?VmdmVW5TZU5xVjVqZjJ2VEcvSTMzVjBGTUkzQWZFWFh3cEx3M21FS2pCclVu?=
 =?utf-8?B?RTI0WG5oSGx3VGprMExDMGtoLzgvYjJuSU41RFpKQTJYTUFrcTR2Sm1GVTdH?=
 =?utf-8?B?OXVoVTJCL1orQ0ZlRW9wZjFXSmM2MDZVaTM0WWZrZ2ZzMTBySldnbCtVT3Za?=
 =?utf-8?B?K3o3ZFl3V2J3UGhJbjVvZUVUenZDZzRWZU5yUDRER1N2UGdnbzJVSXEyOEQ3?=
 =?utf-8?B?Y1Jjc1BYOU5ZNFFBYmhSb2s3Ky9KdnIxenVaYXl0REhSbjUwRHZvNVV4ZTZ4?=
 =?utf-8?B?WTR6MXU3YjJ5WEx5bUhwTFBTZU94YjdzaFN6MURIc2V4VzMvOFNMYW5SSHVB?=
 =?utf-8?B?Z09sL0JCeUhpM3llcDNDbmpTRUNHeFhLRHprVFlrakNYaHBvT1JXc0J0cWZj?=
 =?utf-8?B?ZUdNSFFKUjhldVpUVThLL3BWVFFycHkvaWlud0FYZXRGNHdrVGUwV0FZWDJl?=
 =?utf-8?B?UUZXcGIzN0RESE1rREFCK2U0K21hZEgySFJoZWpVS2NXWEpNU1RkbHVBWHFq?=
 =?utf-8?B?RUpLam8rUDJXbFYwOVkvOFd3R1BDcWFLT1BCalZ6WWJBZWtWa2xwV3YwTkZJ?=
 =?utf-8?B?VWVKa2pkS1NxTzA4aEJwanlBKzE3TVI0WUhrT2R2OXVuSjFoOVF3T0VINFRu?=
 =?utf-8?B?SFFNVGpZZFFmZlFqSFBxR0Rab0c3Q2EwNGVRR0IxRXpTQUFYOHpFS0VIVG5j?=
 =?utf-8?B?NEJlVE1yVmxMRzc1aTR6enhWZFhHeW9sb0hRUXk4TE1QZnZzekdiU2lxMWY1?=
 =?utf-8?B?dk1EeS8wa1QzeVNVUjNPQjhJZEVXbCs4SXV2NWJ0TXhsQXd6SkdUN3E2N1p6?=
 =?utf-8?B?S3U2WXpPTklMTFJYaVhoWGpYL3dZNERSYXAveVdtK2gvSWVtb0ZFYnd0UmF2?=
 =?utf-8?B?em1FTDRoYmlJdkd0bHVnUG5BeUJPb1hHZUtwMndDcVNPU2ZwanAwbHQvYjFF?=
 =?utf-8?B?d29XUklsdG53NEwvSTlxeUdNOXF2RTdWem5OYlBjTng2bmdMZTBUYzVkUTJE?=
 =?utf-8?B?VDkwYXUzOENTYjJMYTVvTHVuOWNZS0F4MHJpMGFNVTExQ05lZzAxbzdZWDl2?=
 =?utf-8?B?NkRPaVM3bFRmL0FRR2pUb244Sm8rZDFQMFFwMGdsMU9JanVuNTlCQWJxUWVk?=
 =?utf-8?B?a0l1T1c1aFMzYzlCL3l1WGtXNmcwTHZ0cE1UN0RpSDJhYlphVHorZWpIUlZG?=
 =?utf-8?B?RTE0ZnZCcjdzVWl4RHQyNDBUYXFBYUZaOTd2V1JIbkdoSGFGNkVraTFSRDlH?=
 =?utf-8?B?SCtjbUR4dWhVdFhQdDRpL1BvZ3lZa2JVRjhQQmFwenVsQTN4eGV0OElzaHNC?=
 =?utf-8?B?V3k2K1Vuek9nYWIwRDNmbGs2ZlBBTXhFeVo0NEs2aFZYTGswNzdIeTlPM0h6?=
 =?utf-8?B?RHJ3MXpJVmhKTFNWWlJ1Y1ZhaEpra3habTZ5YWl4RUVjT1BlS0VDcjZRRGxF?=
 =?utf-8?B?VE1QM1gvOHB4YjJCRzl6UCtzU1AyRXhiVjBmaU9zRkRmWlNJTWc1WGdtQTNV?=
 =?utf-8?B?SlpRanFrU0VqYzJUbkJuOWtJd1Y1Y1ltLzVoVFhFTHJrK05GMG8ydkJFUEtK?=
 =?utf-8?B?THVjY1hQZllqclFGUVV3bzlIK1NXRjdaRHd4amRGRTVwVFNNZ1gzTVd1NWZO?=
 =?utf-8?B?MjBMYlVtaU9GWU5nQXNYY0lDakFnTXZKMEpwbCtzSWNpSEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmZySEhkbzA0dGpqalVGR1Q3REhucEIwdSs3VlpqTkJyWGEvRkxEdnNac3Rr?=
 =?utf-8?B?TTBxNmQzNzM1TVBoT2tmYjd1SDRFLzVSOVMvenJZVXJwYmI1bi91WGJhY1VM?=
 =?utf-8?B?Wm9XL21WK0FBdVppL1hvcHpSeCs4aHA3b3ZCUm8wb3JmRUtZWllNdkRoV3Q4?=
 =?utf-8?B?dGd1UVJXV2YvQk9TdWNkVHV3dnhvQ2lidjJBSWRkZXkwRzMyeVlOb0pLMHZ6?=
 =?utf-8?B?VENMbVJaeWhVaXFRalNyeGJNZmllYmx5d0pvNHdqbDkvZnpPcEZGbFhHZUNp?=
 =?utf-8?B?V3lweFdGVXdWZkNleEswMkdOcjQyRk9VTFkzcXYxaGJXUVA4Y29BSUx1akFp?=
 =?utf-8?B?YXlNdlNJTU0zajJoa2krK3UwTzV0aWw4aXRjTXpNa0FybVpzM3Z1aWFTZWtX?=
 =?utf-8?B?aVF5bys4K2EwdzArNDNYODNheUY2RFlMWTZKMkdYREc0VFRvVHoyN3lNRnEr?=
 =?utf-8?B?ZE1QN1JlVnZ6ZHlrbEtEaWFJdWJ2aDVaK1V1STlrZndseTNnUnJDOFBRaHhw?=
 =?utf-8?B?Y2I1cWphcW1ackQraStOU3BQUHVYbytBcUh4VjBFOGsvRE5XSkdvOEJ5elN5?=
 =?utf-8?B?d3lYaDJMNHNpWVdDeHUzS0dZbEh4eWV2ZU91cno3dGh4N01FZ0JhclNCMkpn?=
 =?utf-8?B?U3pqejZaRWJqbjFhY05VakFLcVpNYkxIWVBNaDVpMEZ3Q3dUcG5HQlpZUVlM?=
 =?utf-8?B?TTZhSzd2UENGMWMyTVJlT0lLMHF0MEtyMExvL2ZnbHFqV3I5NVFJTEtZalRv?=
 =?utf-8?B?M1hOV29KWWl2QzFpenAzRlRRSTBvZEVUUFAvMVFmd1hCc3NyeW1SZmxGWUFG?=
 =?utf-8?B?emFFeExYUk82MDhyaE85L3A2MjRLdVB1RjNnVVp6NFppWXdPbXd2cHJwaVVK?=
 =?utf-8?B?eCs3b1k3M3hVYUNVK0JKME15c1hyWGZCZkdDV1AydkFZNUVRcUtvRWtDOUR6?=
 =?utf-8?B?U05aMjZ0T1pFMjNJYzVCc0N0RjBvNUNLQkFiQkNYTE5DK2VNTVFzUWtXMzZW?=
 =?utf-8?B?Wk81SlJNWGpObTRDQ3YwN2p0azM0WEZCRzBCbmdCY1YyVGVLRHFXblBGMWZZ?=
 =?utf-8?B?SEs0Q24rSVd6TlA3MjM2RGROVVRqZ0U3Vk1pTnAxODB5dHZxSHVTRGk2Rkg5?=
 =?utf-8?B?VnVWZmk2V01HNktlRm1jaVpWMzBwNnVvUzVJRjN3ZWVyQlROdlprWk9WN0gw?=
 =?utf-8?B?ZEFCdGlqWFlMZ2ZyTjR2UkVBMWQza1MzV2hVdDRPNWw0blIwbUt1UjF6WjlP?=
 =?utf-8?B?QTNWMG13TUczZGxTT2NXVGR2dnRnN3lFMitLWC9kaVJHWUZIZmRzV3ZBRUFm?=
 =?utf-8?B?K0FaZ0ZyUXFORWFmbjh4K0p6aGl0SksrZm1xM2d0aTBrT0lqWGFmdkwxamFn?=
 =?utf-8?B?aWIxRlNmMHJnNzNZTWZXaVZaelRBbnNYbzNveXJhZUpqcDJIRGE3RjZiRXc2?=
 =?utf-8?B?SUFDSStaWlZBZ3ppNFBvNUpzZ0t2SytlZ3h4SzVtRThBS0RiUzBDRkI4RXRD?=
 =?utf-8?B?TzJxclNTMlJHbXQyUE8ydG5EM3EwQkorbUdBRnVnTkhoekI3M3JHOXlkY2wv?=
 =?utf-8?B?WUViZTdNT0RkOG13WlZ2QUhTRm5TMDJGSE93TGtmQ3JlcVd1T2wwMDQrUUV1?=
 =?utf-8?B?R2YwVFRDcXdTU01KN0VadVhla24zcWpUVXdIOWtyaVBZdU52RTM2dVJmSy9v?=
 =?utf-8?B?UzFFb1RaSGFLSyttY3gvUWovb21JMklucUZGYkxlRjd5dDMySGY2Y0VDV2pY?=
 =?utf-8?B?aDNwQmU3UENtQzNkcXFBa1BwNDVKTTVlRjRxaExuN3dEZnNlWTU5ZHNaeks3?=
 =?utf-8?B?MXhIaVZXYVp3NGp4aXVJMjdidW96YzlHT3Mvc2ttVGdkNTVPL01UdG9XbEpn?=
 =?utf-8?B?ZFUwYmZQbFowaE5DRit1d2JXdUI5NEEwdHBXcFAzWHB5VVlDK29xY1p3aEt2?=
 =?utf-8?B?TzJEeXdyOWY2VWMyTWhyOEdYNmZ6M0tkQ3VQdFJEa1JVQ3UwdjF5bHhTemxn?=
 =?utf-8?B?MEpYZDN3NFJiYk4yZkRCbDdRRTNFM09RMUxzSDVQV3IwbUExdElNS0FPQXhv?=
 =?utf-8?B?RTVFNVJRaDYvYkNVT2NyRWRWWHdXcEhmZko4UXI4T1RzaWMwcitwZTdic3Rs?=
 =?utf-8?B?VXZFZEhrcndTaEFSM29xeE5TZ3hoa1JReVpuaWxiVTZPTEN6VzhTaklmdnJU?=
 =?utf-8?B?TUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c224e484-c737-493f-f67e-08de21d71671
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 10:34:41.5749
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9FRDJCOTCNDgcxwKOHm9uHQqbRp4dPmkCgfMwlL1Sc+aj6iaVm2IQQPYtrQMSHVJ561l7suZ/cjA3nST6nfYojGcdQeWt+RwXB+YPkzqiXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_023514_359041_B0CA0B8B 
X-CRM114-Status: GOOD (  26.66  )
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

Hi all,

On 11/12/25 10:40 AM, Diederik de Haas wrote:
> [You don't often get email from diederik@cknow-tech.com. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Hi Naoki,
> 
> On Wed Nov 12, 2025 at 12:42 AM CET, FUKAUMI Naoki wrote:
>> On 11/12/25 03:32, Quentin Schulz wrote:
>>> On 11/11/25 5:14 PM, Dragan Simic wrote:
>>>> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki
>>>> <naoki@radxa.com> wrote:
>>>>> On 11/11/25 23:46, Dragan Simic wrote:
>>>>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas"
>>>>>> <diederik@cknow-tech.com> wrote:
>>>>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards
>>>>>>>> don't have `default-state` property in Linux kernel tree but
>>>>>>>> have it in U-Boot tree instead[1].
>>>>>>>>
>>>>>>>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
>>>>>>>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
>>>>>>>> WAN LEDs on E20C/E52C).
>>>>>>>
>>>>>>> I'm missing the *why* these changes would be an improvement.
>>>>>>>
>>>>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
>>>>>>> be off by default and once it gets a 'heartbeat' or a 'netdev'
>>>>>>> trigger, THEN I want the LED to be on/blinking.
>>>>>>
>>>>>> That's a good question for Naoki.  My own preference would also
>>>>>> be to have the device's power LED turned on by U-Boot as quickly
>>>>>> as possible after supplying power to the board or turning it on
>>>>>> by pressing the power button.  I'm actually not a big fan of
>>>>>> having all the LEDs shining for a couple of seconds or so, which
>>>>>> may actually look like some error condition to me.
>>>>>>
>>>>>> Having all that in mind, I may suggest that just the U-Boot's
>>>>>> behavior is changed to turn the power LEDs on only.
>>>>>
>>>>> I can't quite explain it, but...
>>>>>
>>>>> - 1st (Power) LED
>>>>>
>>>>> The 1st (power) LED turns on automatically/immediately without software
>>>>> intervention. (On some boards, this LED cannot be controlled by software
>>>>> at all.)
>>>>>
>>>>> In DTS, this should be described using `default-state = "on"`. The use
>>>>> of the Linux-specific property `linux,default-trigger = "default-on"` is
>>>>> unsuitable for non-Linux environments.
>>>>>

I think the wording in the binding can be understood two ways.

The binding says the following about the default-state property:

"""
       The initial state of the LED. If the LED is already on or off and the
       default-state property is set the to same value, then no glitch 
should be
       produced where the LED momentarily turns off (or on). The "keep" 
setting
       will keep the LED at whatever its current state is, without 
producing a
       glitch.
"""

I think the issue here is around the meaning of "initial state". I 
believe Naoki is probably thinking about the **HW** initial state of the 
LED, which is whatever is the state of the LED without SW control. I 
think Diederik is thinking about this being the state of the LED right 
when the SW takes over and configures the LED before the trigger is setup.

In the first interpretation, there's no need for an "improvement" for 
the patches as they would just fix correctness of the DT wrt HW state at 
boot.

In the second interpretation, a change of this value must be justified 
as people will simply disagree forever and we could end up with people 
reverting other people's patches after each release. If it's just a 
matter of taste, I believe the typical answer is keeping the status quo.

We should find a way to make this binding not up to interpretation.

Additionally, if the LED cannot be controlled on some boards, I don't 
think it should be part of the DT.

>>>>> - 2nd (Heartbeat) LED
>>>>>
>>>>> The 2nd (heartbeat) LED can be controlled by software. It should be lit
>>>>> up as quickly as possible to indicate that the very first software
>>>>> (e.g., the bootloader) is running.
>>>>>

My understanding is Naoki wants to use default-state = on, for the 
bootloader to turn it on as soon as it takes over control of the LEDs.

>>>>> On Linux, usually this is used as `linux,default-trigger = "heartbeat"`.
>>>>> It indicates that kernel is running (regardless of the `default-state`
>>>>> setting), and its behavior can be modified in user space.
>>>>
>>>> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
>>>> the best option would be to have the power LEDs turned on as quickly
>>>> upon powering on the board as possible, and to have U-Boot pulsate
>>>> the heartbeat LEDs using the LED_BOOT feature.  In such a scenario,
>>>> no other LEDs would be turned on early, and the LED-related DT parts
>>>> specific to U-Boot would be migrated to the kernel DTs.
>>>>
>>>> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;
>>>
>>> The LED_BOOT feature (guarded by the Kconfig symbol of the same name) in
>>> U-Boot only applies if /options/u-boot/boot-led property is set.
>>
>> For the default state of the heartbeat LED, I'm thinking of using
>> LED_BOOT (/options/u-boot/boot-led), but I'm concerned that this is
>> U-Boot-specific.
> 
> If U-Boot wants to use the heartbeat LED to signal the *bootloader* is
> running, I guess that's fine. And if you want to make it solid or
> blinking, that seems best discussed on the U-Boot ML.
> 

The solution may still involve configuring the Device Tree, and we're 
trying to have U-Boot-specific changes to the Device Tree in U-Boot 
source tree to a minimum.

> I still consider the bootloader and the kernel stages separate.

They do however share most of their Device Tree (for Rockchip at least) 
and the least (ideally no) changes we can have in U-Boot the better.

> And I haven't seen an argument why I should change *my* opinion on the
> heartbeat and netdev triggers (default-state) wrt the kernel.
> 

Device Tree is not kernel specific as you said already.

> I don't think that what U-Boot does or doesn't do, should determine what
> the Linux kernel does or doesn't do.

It shouldn't, but (most of) the Device Tree is shared, so you cannot 
just dismiss U-Boot behavior when talking about Linux behavior based on 
Device Tree interpretation. We may have a need for a bootloader-specific 
property. We have a Linux-specific one after all 
(linux,default-trigger). Though... that does seem to be on the edge of 
what the DT is made for (description of the HW, not logic/policy).

> I have no plans to use another bootloader then U-Boot, but it's possible
> that people do, so what the Linux kernel does should be independent from
> what the/a specific bootloader does.
> 

Barebox also uses upstream DT as far as I know and supports some Radxa 
products (Rock 5B/5T/..., CM3, Rock (RK3188), Rock 3A from the 
arch/arm/boards/radxa-* directories). Zephyr has support for RK3568, 
RK3588, and other SoCs, and uses upstream DT as well.

Again, we're talking about modifications of the Device Tree here, so 
typically I would expect all consumers of that DT to be interpreting the 
properties the same way, except if you have OS-specific properties/nodes 
(think u-boot,config-compatible nodes, linux, prefixed properties, 
bootph- properties, ...).

> And as I said before, *I* want LEDs with netdev and heartbeat triggers,
> to be off (at the start, which is indeed the default value).
> I use the heartbeat trigger to:
> 1) See the kernel has started (and has gotten to the point the heartbeat
>     'infrastructure' has been set up
> 2) Wait for the blinking to slow down as that (generally) means it's
>     pretty much done with the boot process and the SSH server should
>     probably be running then, so I can login
> 3) When the heartbeat LED is solid, that means the system has crashed
>     (f.e. due to overheating ...)
> 

If the *HW* default state of the LED is off and the default-state 
property is off, then you won't be able to tell apart a completely 
bricked board and one that is stuck somewhere between U-Boot proper and 
the Linux kernel taking over that LED.

> And also, if you're going to change/override other people's choices, a
> motivation as to why would be 'nice'.
> 
>>> <more discussion about LED functionality in U-Boot ...>
>>
>> As you know, default "default-state" is "off".
>>    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/leds/common.yaml?h=v6.17#n74
>>
>> As far as I understand, there should not be any workarounds for specific
>> implementations.
>>    https://lore.kernel.org/linux-rockchip/3389401.44csPzL39Z@phil/
>>
>> So removing `default-state = "off"` is acceptable, right?
> 
> I don't see/understand the connection with 'workarounds for specific
> implementations' with removing ``default-state = "off"``.
> 
> IMO it's perfectly fine to remove ``default-state = "off"``, although
> having it explicitly may be useful, especially if the commit that set
> that property specified *why* it should be "off".
> 

The status property defaults to okay, and we do not want them to be 
listed explicitly. Not sure if there's consensus on applying this to all 
properties which have defaults, across all subsystems.

> Relatedly, when a node does not have the 'default-state' property, I
> would _assume_ the author wanted/intended it to be "off". Ideally it
> would be described in the commit message, but that is optional.

The lack of a property doesn't necessarily mean it was forgotten, agreed.

> But if that is changed, then it should be motivated *why*.
> 

Agreed.

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
