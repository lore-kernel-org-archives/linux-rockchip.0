Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE563CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 18:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z9rn3+49RpyYrRVhNjq8ktPUekbQE4Khk6V13mQkgFw=; b=zVGrB5hvWTJbBtYdb+69Gcw1u/
	JPKpMPGbJYhzsKkJkefbT8HtmfQ7lfTe0JJGJWnSwFpy+cK17+K25ZWp08GvxEkn1WZ57jvtWA8ex
	OwC8+e203QpJy5PSFmhq65C5y3rVBYUh/n34H6+HETZbApESrGecPsZ7owbcA8FEV5dqG9/O2zlE7
	TYtD7AML8kezt37Uu4S4nQita9CpeSkTRP3EiJ8ebugDOHmycoK9uCqhdbF4Hux+wwZ4L/O44Fz2R
	Qna4k75NlV58ATXQrnJ6spKjVOeGqy3HyYDblXr/EiaFTnUejO5wzMUvqOzrL0hLOTKFrhlGXRtFv
	wXlHCa7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vItAy-00000007cCn-31Z0;
	Tue, 11 Nov 2025 18:33:08 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vItAu-00000007cCJ-2pKA
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 18:33:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SyKPNbzd8mxYH6NqlxTUfN3hob/1zk7HZAw52/Oh/Vy0kq71WTkxvsWEYeUZJ1jlmDyxfpf6v6yDnzkqJ8sGXMM+4B/Zps+xwJEu+ZNH30Pd9iGeqTSjEP79/7FHLZFdwJ21kT8MshQra7mCBgB9VfMAUiVoj1uZi8xSHuigYlHW/WIPMCuv8uk0VKvaQdiJZORAMnZJ2u1Gp/THqV6wNafKAgQ2/RBGOxp68G7FVg5158aF+Z0y9BUs25zF+aUxod4l/G9yPEuC9blsQvdld2GIRp1RtnKCTqG+LjHKVg+C28U2YpnIy7uQW+h16G0QGw6xxj4oLF64KMkj9iyoeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cPg4y5W0EBErNPHCSj3jV0b9Qh8PXuL10NSMgij4uuY=;
 b=kz5WL0/wLnhGlrBKmUnR5/WuInTR88v/N1UvAUUFMTwrj3Vhe2HpU4C/1onFk1974L711Edu+uTZZuLM8FizItiJrMJrWYraFPGCfP4sfDaVZ5cZ8f2cmA4ZR0MwgArTE1wSWQIsJMojSNW+vmurVQZprQl707M61iHJcnUAo2wPJrdylX7t9BOweeFYZDetAcx3GD5/SUGJb4dSFtQWZEDNa1WPqlMd+yKMOiQGHvV1ZYsYWDwVkqAvsw4W+jR0vEYXkg+VqObThzZ/FBDR8b/UroM9a/UWftWQ1lkCewoOW7Iw89FZ6e/K5hVKbdQKMk5EGwBZZNsIkp3XKMKGdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cPg4y5W0EBErNPHCSj3jV0b9Qh8PXuL10NSMgij4uuY=;
 b=DZcPE8ebfXCvG6K6skcF8E9j5GBN2sZk4wqs1WQt95cPJ6QyasypQrVBcm/GPUBFo4Hu1LwsbQfSqkfQcVSR5ywLvjruxILLNG273cRopHjzgHrPgCWxnX9pHhexpv8qwlPC0PIQz0V4Ls1K8vRQQ2SkV1KTj1slYp9CQmAXx3w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by MRWPR04MB11997.eurprd04.prod.outlook.com (2603:10a6:501:9b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 18:32:57 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9298.012; Tue, 11 Nov 2025
 18:32:57 +0000
Message-ID: <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
Date: Tue, 11 Nov 2025 19:32:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com,
 pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
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
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
X-ClientProxiedBy: WA2P291CA0037.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::17) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|MRWPR04MB11997:EE_
X-MS-Office365-Filtering-Correlation-Id: 41c45fa3-82c3-403b-10bc-08de2150bc4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjNFS3Vyelk0Qm5SbFNiNHNQR2tmcVBCY2wxZzA4NUlUTUZ4eWxVaERnRmdD?=
 =?utf-8?B?clo3Zk9icU9VVFgxZnhJeTJjR214ZEd2UUJCbnhISHY3ZlNkMFVPc1JLOGpj?=
 =?utf-8?B?a3c0WkRaaEZjUVRYU0xDODZTRndMNDdYZmpQa1BFZkc0dzlzbStXTlZnWkky?=
 =?utf-8?B?TXkvMXdVZmpkZW9BRm91VXBKUnRkV09PYkZzK3M1dmRmOEg2MWNKbEZBNGRq?=
 =?utf-8?B?dFNqVTMvOFlva3lhdlBpUWlubHZ5ajJFaWt0a1V3Qmo1NXE2M1lnVXlzcHBv?=
 =?utf-8?B?US9QRUNhWGxzaEluQmsrakYySXEyajVEWFo4TUthWDNKRVZBU1YrS3NqNDdV?=
 =?utf-8?B?alhQbURvWHg5SWRXM1E0RUQ0emUrT3grWlRHaXc4ZkxiZll0MmNWTkN1em5q?=
 =?utf-8?B?MkFLZkwraEM2MWVBN2lnMk94R0Z0TXRmaTc5MnRUQ0E0c1lFZUpFZTREMVZp?=
 =?utf-8?B?QlByWE1WdUxCc2VMUDdLS0VocUs3dW9BdVJTMDB5QTNOWGpLcnpkZWRLUytR?=
 =?utf-8?B?N3Z2S1l5dGtEYWsrQWM0UUQvbzRVNWJHeGlNZ2xrdnRlYUdvdmRZVUVRRlZI?=
 =?utf-8?B?QU9RajBrRFVDZmcyYzJrbWtvUjB6Q2daLzNSQnRCOTM1R3Y5M1kvTHo3NUhJ?=
 =?utf-8?B?QnRDT09NU1ZBUWlDM29pRmw3S1g4dHk2cno0Uk9kTVVSWTFaQzEwOS9IbUYz?=
 =?utf-8?B?VjZyK2FyeU95czYrU2ljTUt2UmNBL25GYkZYbFVHZDE4MVhCVVRCbC82RUtp?=
 =?utf-8?B?cmN3Um9JS2dVOEZubURlSVh4cjRaVWhmYllrbDdJa2MwN295eUlHZ0s4RWJK?=
 =?utf-8?B?a25GTVowVi85V0JZME5uMHdIbldNajBCNmNESnRSOFgrWVFwbUdXL2NuTnRo?=
 =?utf-8?B?L1R3WlhOUWFsVExvYXJFdXNqQkdhYmpNZ0pHSE9GNFd2M0VxYU5ZR0RjYTdv?=
 =?utf-8?B?OC91azl2cWZ3cjQyYnJCL2JOOXRreTlwSjJ0OUVTakdEK3lKWUhmWURLZnY1?=
 =?utf-8?B?dmY2dXZ4Wnp2bWJKaHYvdXFsTXJ4RGdkWWpWYjVWaDB2Sm5tL2lWcERyaTZt?=
 =?utf-8?B?MjgycDNaWThIRW55MVArYnI0QlR6bjltT3JPSlRYNUk4d0NLTUk5OUhTY0s4?=
 =?utf-8?B?SDhYdHhrajEwMEtXdGJzZk1WaTlQZ2lia1I5YS9TNmQvR3lFTStwdldTdlJ6?=
 =?utf-8?B?cjRlM3I5SUF6UGJ6aStLZXdtUlBvRDBIWkJmbjR2d3FjQm9mQS9XNFo4VHZH?=
 =?utf-8?B?WlVLZklGdHgySHJxSjZiekxPSi9pcGtITSs0OFhDQWxlQWpkbUxSL0NMWHE5?=
 =?utf-8?B?aVRVU29Pang4ODRuWjZiVUpMWVRlSHg3MnFtZndLbmJRSmFYYjB6TnFJbE54?=
 =?utf-8?B?RmRRMnAzYXd2SzNoV3dGelkydUhCeXR1ZWJEOThJdnRvaW4rUytVcjFNc2po?=
 =?utf-8?B?UGd5V1cvaVZaTUJaeW83MnVZQzVBd0sxMDh2bE5ybUZSRW4yUWw5UFBIZG5R?=
 =?utf-8?B?M0VtR3dTd0UvcmRRS1hBcW1mMmRsN2Z5SFR5REJjbGpEb3RPVFRBT1VGNncw?=
 =?utf-8?B?dTUrOHpnYUdHei9tZzBPQ1JUUkdBVDN2QzJVNWZhU3E2clF0QldhKzRHbTFU?=
 =?utf-8?B?SXoySHNQYmh3dnRlZld5SDdXaUg5K3Z4U1ZHYW5Yck9IZXNPZ3dEckphRjdS?=
 =?utf-8?B?Nk5lVDR4TGhuM2locllrR3lqdDd5TXdHM3FMNnNYaFFSeEJWV0IwNkMrTHEw?=
 =?utf-8?B?OCtldXlUSFhHMkZlYmF1NVpzUm9waFY1MXZlS0l3WTBuM3A0MTZueTFrT2Nr?=
 =?utf-8?B?dGFPOVZ0RDVOY2NaWm5XN0JTbjdTcWFGd1BqZGUrMlo3WjNZelZVWDJWdlZk?=
 =?utf-8?B?SWpRVG8zVWlBaTZWMU83cU9UcmJXSnZDM005T3dHR3NWWlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHZhSVN4TXd1RkpYc2dYWkJxZi9oNDVTdGQrSTNzaURDbUhxVUIvVGwwSnpk?=
 =?utf-8?B?SGlRSGVYbGpKZU5sd1dNQlY0aE5xYUcxSDhWYk1SU1hvS2lKOU9WbnN0Qm9E?=
 =?utf-8?B?ekh4RnFzOUc0ajhKbUZsQWJqTkhBZ2owVXJqQlIvV1oyODFpV2s5U3BEbDc3?=
 =?utf-8?B?RUpCdysvRGdzNG56d0VjWDg5ZnFaZHRJdUFMTHRhT2JIeWhiMXJ5bm82TnV5?=
 =?utf-8?B?MUhtdWVodjQ0dVJkRlZhWDF1ckFDc0JISFV3dFpuV25CK1plY09kdFRGSUtv?=
 =?utf-8?B?SnZKaG5HMExTZUR1SXBHM0dnc2V2djFabjRMV09NOTcrSmN3K1NQQ0VuaE5P?=
 =?utf-8?B?ZWt3NHdBVkp4cldnajZFSUwzN0NxSmhqMjV2UDJLYkVMNkIzOXdETWd2ZkI0?=
 =?utf-8?B?dEh4cjg2WFlrTVhJMTNzbTVpYVZkOW5OOHZjeU5rNEtGSnBZS2wyU0xrN2pH?=
 =?utf-8?B?ZTZCS0VISUFXWHViTmxzaWNjU2pnMVpGazdsenJqc1EvdnhSaXJmTUt1SjQ4?=
 =?utf-8?B?NXZCaXZYUjRMVGJjdkxxSGFpRVVxY1c0TlN2Z09yUXA4Y1Uxazh5RUkrbEVL?=
 =?utf-8?B?MXRFZ21BaXdBNkRGTEo3cVpHTVlhWG9EK2xDM0xKN0toV25HVXJlT05sT3FS?=
 =?utf-8?B?TGYyMVpLUmlIZUpSSmpMckF1Q3pHdlE5a3g3Mmw1L0R3RksraWM0c3hoeXBk?=
 =?utf-8?B?UFF3b0JHVVJMQllURk02MlhPNkhIU2p3SjFGd0QydnlKVUxnZ2lhU2xRV0sw?=
 =?utf-8?B?WnZyODhKbmtocG1lWTYyaDNNNzZrZ082cnJuTDFxb3NqbjQrWVlKS2MzZFpQ?=
 =?utf-8?B?aGk0U0gzRFB6aEppdm9LNkRWb1FZQ3lYWGdFUTl2Qlh2Z0RrWnV2VEtnYWt2?=
 =?utf-8?B?UkFUa2xCUm5PWEdXb1lHN1ZuTHBkSkpSYk1HbTB2R2JITkhZRzFIS1IvSTJK?=
 =?utf-8?B?emFUV3FoQ3g2N1VGQXlIME0wa3FlVjl2c0NQUHFLQzRQc0k3L2F6Q1R2bnZP?=
 =?utf-8?B?TTVEK0E5MjZDbXlUWENJUk80MFFObVN1U2ZwRldZeTVhUnVFeWFsQzNObWN3?=
 =?utf-8?B?UDZhNURNUHRNRVJhY0tGV2xJeDJZTURWeHRSUS9WU2hPcVphdUd3Nm9DaVM2?=
 =?utf-8?B?OU5DcjJJUXFPcDI5aVhBSHBpSXI2NUhmdjQ2TkhhZ0pUK3d3OEhhenNXM1Rn?=
 =?utf-8?B?MGRTcm1sTFhpQnBuNDQ0eVhKSGlZK2tDOC9nYk5DdldsTlNnay9aNXAxQk13?=
 =?utf-8?B?d3VLK3BnWXdyU3BzSklKQTdxdFZjcFVjWEFnUFY3cWtwL0creWt4UW1TVGJv?=
 =?utf-8?B?TFhMaFZMYjJiU0JLT0Y4L25qVjFUT2tvWGVnclI5UENDU1FSZ1ZBTk1UdEd6?=
 =?utf-8?B?MDBVS1lJdlhmZG8zZndlYTZGcWNwenJQejBXMkdKTjh3SWpjYTNGVmQzU3lW?=
 =?utf-8?B?NFJIVmFyeSt3aFhsOG00SVBJUW81R3FYd3huVzIxUDRjZG9panhjMHpBcm9D?=
 =?utf-8?B?a1dMdVdTdkkzMEJKaVpDT0UzTlZGT0hnRDIxV1F5dURNMzkxa1NwQWltb2pl?=
 =?utf-8?B?VTdmVDZ6cGlWd1pyV1ArblU0YlpRUzdCOENHVDF5OTRGUzFNaVMxNHBEdm43?=
 =?utf-8?B?NGtjcUtjZDNuck1EK240dHE1NmlpdXR2V3RZYjF4TmN0bEhlSHhKVmdPWmlT?=
 =?utf-8?B?OFcwQnFYRXBobVk1WG9yVXRadTNHMjNiWnlOUnRMWXVrZk10dlcwbXk1anc5?=
 =?utf-8?B?T0drRm9LMW1na1VqTjZJSGdjQ2gyRWxzU3B1TmhJamlSdlFBcUJVUE9NQmtF?=
 =?utf-8?B?THNkR1k4L1pqTFUxeHJVeWQ4S3dnRTBFU3V3Y0U0ZGJjcG4yT0FaZGxtc1lZ?=
 =?utf-8?B?bTVxZ1R5M0haMWp3YjNJa1g5bGJTazFlS3BYTHpPQ3BIRFRCaldLQ1FubUxL?=
 =?utf-8?B?Sjc1MEJkRXVwb1ZFTllJNlM1SGVmV1c4Zm1Oc2hEWkFLRE1peGRhTCtsMm4r?=
 =?utf-8?B?OVlvOU1vak5SMFVHSGxLbTBiRVBrTUpqcGVCLzVLWjRNMUIrMTdwaDI5Mnpa?=
 =?utf-8?B?a0FwTXRVbkxqNVlkMmsyL3EzbnoxODI0elZFTWRjbHl4VnFWQzJJZ3I4MXd5?=
 =?utf-8?B?b2tRajNjb0QxbkowV2lMM3o2alhIN1FXUXFTb2FMRlBlaVBZd1gzS0xuekhB?=
 =?utf-8?B?aWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 41c45fa3-82c3-403b-10bc-08de2150bc4d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 18:32:57.5101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6NRpkpK0ZsZ24r0ib90Y+/Kh8oGwzsjGvuS7GDFMIE9JcuX6pMd3aT/oZ09ZAgkjCtdZIatBQrWqnWO5Ka7POfmiXZ4JMHR0wcPtLKF3New=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB11997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_103305_034161_BA1A659E 
X-CRM114-Status: GOOD (  31.65  )
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

On 11/11/25 5:14 PM, Dragan Simic wrote:
> Hello all,
> 
> (+ Quentin)
> 
> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/11/25 23:46, Dragan Simic wrote:
>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
>>>>> have `default-state` property in Linux kernel tree but have it in
>>>>> U-Boot tree instead[1].
>>>>>
>>>>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
>>>>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
>>>>> WAN LEDs on E20C/E52C).
>>>>
>>>> I'm missing the *why* these changes would be an improvement.
>>>>
>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
>>>> be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
>>>> THEN I want the LED to be on/blinking.
>>>
>>> That's a good question for Naoki.  My own preference would also
>>> be to have the device's power LED turned on by U-Boot as quickly
>>> as possible after supplying power to the board or turning it on
>>> by pressing the power button.  I'm actually not a big fan of
>>> having all the LEDs shining for a couple of seconds or so, which
>>> may actually look like some error condition to me.
>>>
>>> Having all that in mind, I may suggest that just the U-Boot's
>>> behavior is changed to turn the power LEDs on only.
>>
>> I can't quite explain it, but...
>>
>> - 1st (Power) LED
>>
>> The 1st (power) LED turns on automatically/immediately without software
>> intervention. (On some boards, this LED cannot be controlled by software
>> at all.)
>>
>> In DTS, this should be described using `default-state = "on"`. The use
>> of the Linux-specific property `linux,default-trigger = "default-on"` is
>> unsuitable for non-Linux environments.
>>
>> - 2nd (Heartbeat) LED
>>
>> The 2nd (heartbeat) LED can be controlled by software. It should be lit
>> up as quickly as possible to indicate that the very first software
>> (e.g., the bootloader) is running.
>>
>> On Linux, usually this is used as `linux,default-trigger = "heartbeat"`.
>> It indicates that kernel is running (regardless of the `default-state`
>> setting), and its behavior can be modified in user space.
> 
> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
> the best option would be to have the power LEDs turned on as quickly
> upon powering on the board as possible, and to have U-Boot pulsate
> the heartbeat LEDs using the LED_BOOT feature.  In such a scenario,
> no other LEDs would be turned on early, and the LED-related DT parts
> specific to U-Boot would be migrated to the kernel DTs.
> 
> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;
> 

The LED_BOOT feature (guarded by the Kconfig symbol of the same name) in 
U-Boot only applies if /options/u-boot/boot-led property is set.

If the driver for the LED (typically a GPIO LED controller I guess, so 
LED_GPIO symbol) is compiled in, then, as far as I could tell, the Boot 
LED will be turned on right before entering the main loop of U-Boot.

If LED_BLINK (if HW blinking is supported) or LED_SW_BLINK is enabled, 
the Boot LED will be blinking some time after relocation but still 
turned on soon after (if it reaches that part of the code). This means 
it'll be on before the kernel starts.

I'm not sure there's a way to hook something *after* we've entered 
U-Boot main-loop (read "call led_boot_blink() from some board file"), 
aside from calling `led <led-name> blink <period>` from U-Boot CLI.

I'm a bit bummed by this behavior, I would have preferred the ability to 
have the Boot LED blink until the kernel starts. I could then have a 
different period for U-Boot (50% duty cycle at 250ms period by default) 
and for the kernel. Of course, if it's SW blinking, once exiting U-Boot 
it won't blink anymore until the kernel takes over, but that's also a 
nice information to have. Anyway, I'm not sure this is actually possible 
with the LED_BOOT feature though one should be able to do this by 
specifying the label of an LED node to fetch from DT and then calling 
led_set_period(dev, period_ms); followed by led_set_state(dev, 
LEDST_BLINK); in a board file, but this is also not so nice as it then 
also requires some C board-specific code in U-Boot.

In U-Boot, only LEDs which have a "default-state" properties will be 
auto-configured, otherwise one needs to control them manually (e.g. via 
the `led` CLI command).

If one wants to detect via an LED the current boot stage (U-Boot 
reached, kernel started), then we need to NOT use LED_BOOT feature and 
have U-Boot set the "boot" LED the opposite state than the default HW 
state, i.e. if the LED is on without any running SW (power applied to 
the device, empty boot media), then U-Boot should set it to off. Then 
the kernel simply needs to start the heartbeat mode whenever ready. If 
the default HW state is off, then U-Boot should set it on. I haven't 
looked into the kernel side of things, but there could be a window 
during which default-state property is applied before the heartbeat is 
actually started.

The logic exposed in the previous paragraph should provide visual cues 
on the current boot stage.

Note that LEDs with linux,default-trigger = "pattern" (with 
default-state property) will be blinking once auto-configured in U-Boot 
as well according to my reading of the led-uclass.c.

Hope this helps.

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
