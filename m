Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1210C36005
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 10:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lvzqCIBZc1eCdfw9fnG2rU6+Q3VBUAL9HOOeQrmy6jA=; b=1pTzcOTiDH1p6pk1mkN3hr6Gf3
	orc5RElKsaRUT4sUPXUhNMu2tYZzx8U3ZujQptWyQz8qZtc27sfo6wwQaX0MZCBhpTy+hrhhrUDOX
	d+5KBi6CKnRLlCT85QT3n0lws7Ac+8WnRUOMJxSYpxBlqZfKDoUBgFOtSnvH4ng1hgYY+JHZeqdqe
	GCsZnHbolrjh7WT5HAopkg62fh69zRtH8GfkJ7LY2gzdl9Hu6Ix0GG2UKNyIL2kRGeMr52yAc7nR3
	y/G/hnXCgW5/XwrhhVGlhrs64PZD3pMt9FNi4vER16ZEfl/Q/SEN9E8DFdDP1tT+cAS+0h+GuEI6S
	7n2nbN5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twevS-00000002nmk-3f0h;
	Mon, 24 Mar 2025 10:20:58 +0000
Received: from mail-db8eur05on20628.outbound.protection.outlook.com ([2a01:111:f403:2614::628] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twevQ-00000002nm9-2NAA;
	Mon, 24 Mar 2025 10:20:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kG9pCOhQx+2Mp2RL5z0uIeapMiw/1XYLDrbLk2DuTHcLf+G5Jsc7/NlVs9l3B5jk0IwsitErGe5Orvm5dseaPxHmjtbhXxqXN/er0QYMtUWN4Rk+/giAQmIOnFBhb/PdZzEWE3ZDbyyMkeUrEHjq8TX8yEK+E95LHw/8puljmGSBI8mKL35wBIgOUyH6MZk485pjUL5l6aYRRRTvlw7mnmFx4Wkkm9RFtYUaD7f/uMqjRccslLhGPTyN01O6fYiJIgdGiNIJCx79GqKJlqBP9IpWRwTQKX3qlzBFAIqu2cqZsd0ySf1+F6d4VH9P3u/nUT5SJi/sCWLbA/ZI8kIzuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mTqDmKhZ6pe/kMRbk+zOFErkLtR9GlyTKq/9FlJ2/4=;
 b=QXz/uFOKLk76YmOhmfWTwlkC2PyVdXXgif9+MPST3z+i1JTj3DmtnPJSzqGVX4AumLwbpGGGExAs5/SugTziYQkaq+70ik+mfyul+GbwfjLdgX6RmWx70snOk5vz+oDE2Bf5+EZcyuxWRR48A2XvQlHbhj9TqWrr1+jukAxp62hDKKV8NYHjPeoaGKzl2/dKP5YSLXvzuU6D/akM2FIhA3TRjGDqZN7+EqlP3Sj2jY8UDh+pUK+B1TBsn3FyAO3/6LVxMgW5ZAtjgWplRWiVY6W1LvsaGdmA7doVc6X69S7aFkaPR1je5ZoWyA+lZ+h6zVmH1EDITR5VyacTCSgx/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mTqDmKhZ6pe/kMRbk+zOFErkLtR9GlyTKq/9FlJ2/4=;
 b=O2G4LJhfemGEbnr4grR3LQ12jLBS6Pj0/NJ4jLv4hymFH2XB/xGbLfFhLRXWd4pPcVMZ54CErVHR3v/AA2V6g6CaNulxCEXPQsUVWLdPSKOLGgnC0LgC+g9e2pPCTT5aKFdFh/LdaLRivnxDwk7/+ZUyTq9HuAkbJ9IA3y3o1IU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS8PR04MB7574.eurprd04.prod.outlook.com (2603:10a6:20b:299::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 10:20:47 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 10:20:47 +0000
Message-ID: <170e4d8d-33ca-4c53-9ae7-ca9d674540a9@cherry.de>
Date: Mon, 24 Mar 2025 11:20:46 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Remove overdrive-mode OPPs from
 RK3588J SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org,
 Alexey Charkov <alchark@gmail.com>
References: <f929da061de35925ea591c969f985430e23c4a7e.1742526811.git.dsimic@manjaro.org>
 <71b7c81b-6a4e-442b-a661-04d63639962a@cherry.de>
 <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
 <2ece5cca-50ea-4ec9-927e-e757c9c10c18@cherry.de>
 <4d25c9af4380598b35a0d55e7c77ac3d@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <4d25c9af4380598b35a0d55e7c77ac3d@manjaro.org>
X-ClientProxiedBy: FR0P281CA0151.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::19) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS8PR04MB7574:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d3f2654-2de2-4dcf-99a2-08dd6abd8b2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L216UEZ3Q2JtL0pySG9MSEwrSlBYMVZuUkdnT1lsOHZpUlljZklLbzNxcXNi?=
 =?utf-8?B?aFJ5WnR4dDRFSENnRW1ZWUYzRG9lWmZLeHA3ckFlMXlOcDBid1JvN09jY0pz?=
 =?utf-8?B?VGprSGpxeHAzN1ZqMUR1RHJlK2RwTzNiTFc2ejVkdlVQYU44ZTVnaXhVYWRE?=
 =?utf-8?B?MU5ZVnFVUnozeWVTbFR1TndwMWw4ZElXZ3BoU05YR2hkQnpxaEtpQzBIanI4?=
 =?utf-8?B?RmQ1NFNWZXlMUUZEd1Q1a3ZiblhBa2RDaE9KNzU2NzgrWnUxWjVXem9sY0hC?=
 =?utf-8?B?bUV6djVZbW5nZjVyazlBNDFTRmJMZXM4SFhXdUJlMHdBZ1JGVHQxRWtKeEVo?=
 =?utf-8?B?ayswdXJCZUdqaXk2MkVYOUZiZ3hqSkxPcnBQaWVaSCttcUhvZVdNMEd4T2hF?=
 =?utf-8?B?TTdsZitTeWU0SXdKVkhqY0tsTnhRUUZ6MFY1L0NiSHNIUWNza2Zza0VMMVVt?=
 =?utf-8?B?QVZWWWVVemJhL0ZDUXZsUjh4L284MWMzN3ZXMi9QN3d2VVQ3Ylc5Ni85eUx1?=
 =?utf-8?B?Z3N2QUQ5TXMyQ1FIZkFORW1aRjAyWGlrN2dGdTAvUUZKZTJ2dHloK2hHeUI0?=
 =?utf-8?B?K1BJa2JnSnhUR1E2UDFlYXN6SURSV3EvdExOdkZBTjhCemVvZ1RGQlJ4QTF5?=
 =?utf-8?B?blNiRDdKNjdXWnhXbkl2cVdVZ2FJWHFTRnJ5bUxqTCtlTVp1ekw5eWs3Um0w?=
 =?utf-8?B?Ym1mM2YxbmlNbjN0TmpiOW40NGhvZXdKT1dZVzlXeFkvVDRvbFRnZFZtY3Vo?=
 =?utf-8?B?WUFXbHN5WGJtV0h4SzJEV0VHSDVpSzAvT09mdEVpdkhYbnBDeWltOFdxb1dO?=
 =?utf-8?B?QUx0b0ZtN25RTlJOSGdTanR2bnEvck1lajVFU1NwTlJHTVA0WTRrUFVFOHkv?=
 =?utf-8?B?WmdGM0lsUWNQTXFCN1BmbDRiMUpQbFliM3pOSkYvZFQxcFhUekhOcGVCRzl0?=
 =?utf-8?B?anp4c0JIdVUxb0tXcjlaY1Q3dlNiaStrdFZ3dEEvR0JUUjlvamZYU2piU0dB?=
 =?utf-8?B?VTZjdWhFTXk1RkQxV25OSUZWMTBNSnFkREdiVE5wemNpRmlFTmg1Nk1EaWY2?=
 =?utf-8?B?c3kyWm1wYVV6Vy9WVGdIekRNbkY5YWhBcTU5aUVPeldpUm5Hd2kzdXBqM2VU?=
 =?utf-8?B?a1BDMDc2c21VTUlFdi9PY09sRkswUVVEVnRaYmNIZWczYTl0NEtRTERTOXg0?=
 =?utf-8?B?d0lud0t6a0I3YXNpWG1haXg5V21EakU3SHlYWWdLQmtCblZSZkxHQW1VUU9p?=
 =?utf-8?B?aGUvaE8ybVV6Z09iODQ2cDMrVWNOU04vRXRndHVPRUhQUVNkdjlVQTlYSk55?=
 =?utf-8?B?VWx0bHgxTUM0YktlOUkzeDlFNEJuZUs3SDI3Vy9oLzZJbGRlMmxvZjc4M052?=
 =?utf-8?B?N3p0dUpvNGx5VkZvODRlZUVWSXZtZ29hSStZNGNXbVlCcVZsRzh2ZDlsVDEx?=
 =?utf-8?B?OHRYODdsTGJKQUNMMzU5ZDU5TjFaYVZYNE1hTmZTZVlDM2JxdmJxbmNVOW03?=
 =?utf-8?B?ME9SQUNKZE5MYlFGNFJ3OW9zTGJraWE4N0NWdjIwZnh4alZBVktCY2YrU1BV?=
 =?utf-8?B?L1ZNZWdFSFRvSTkxVkVndm84bHZ6czF1RFFHa2xzZXlVOWxIdDdSNGVtbVJJ?=
 =?utf-8?B?MVlHYXZrcklHQ1YvUWZMd2pxNkEwQUNBOUpWeWc0L3NCdHNrZmMwOUdjNE9B?=
 =?utf-8?B?Z1c4NjlGR3llRWhMRTJhQkhONlVXMUlzaFRiaVg2WnJuUXZKZWsrZ0YvdWQ3?=
 =?utf-8?Q?nUp0fhJPIh2wU2Tk833M26Od50sHYQCh0p0QOp0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE1NSEFQUVFDQ1hzTGVZYzFWTVhTenl5LzVLQUVNK05MS0hFZ2NyVDNMQkNn?=
 =?utf-8?B?TUVMWGZuSmxkLzEzR2o2aHo1R29uY1Y2S25FY1VLeFIrT2hiTVNUT0ZIQktw?=
 =?utf-8?B?RVZDWjQwbFp5ajU5eE93ZlNINzdKZUgwRUJsMi81SnVaUVJCMzJqaE9Fd0tN?=
 =?utf-8?B?ZGJWUkQrRnprM01lSFNIbkp0Q245Q3ducmhEdnRxdUZ0SmhHZi9UMlRaZ1pC?=
 =?utf-8?B?bHBSWms4d0xqK2ZFY0IwdmtTOEZENDEzVXhTcmh2elJJSnJYaDJiOS9sV3FO?=
 =?utf-8?B?ZkM3KzZmSS9HY0lMRUg0UEdqTUpiRW8rMkdSUzRtN3kwNWd6UmE5Njk5ci9Z?=
 =?utf-8?B?M3FjWGVvQXcwMlpES3AzNWxIWEE0VDJwd1dmTE1CWXRBVVl2Rk53QzB0a1RM?=
 =?utf-8?B?bGtVL0NRcUwvTk13YktUQWszRE00RitGR2JUbnNwWWsxdUVXOW9VMndXcndQ?=
 =?utf-8?B?U2dYR2JadEw3dmQ0Tm5XT1UxL1k5MVJyN2xESFdaVVJuZ0xaU1V4cnp1ek8y?=
 =?utf-8?B?Z2djb3BMTGxadCtIdTk1aWZKak9JSWZweVRzbzJqb0N1ZjdZa2p0dndVK3o5?=
 =?utf-8?B?VU9lSmpiM0FodUgydEFJczlCS29HUFQ3aUsyRXROcGFOdzU5ZURPMXorbjRt?=
 =?utf-8?B?aS83aHJOdm9RUnhPd0ozOGlSQjE5c1JpYVpMTVNTNXFURG5Zc1RnSHRqUWox?=
 =?utf-8?B?bXVpYUFXcmFuM2J1SWxnNlBWVEgvZVluQjFyc0pkNzEwc3NuK2pEbHp3c2Jn?=
 =?utf-8?B?UlV5UFNGTm1CRURUYjRaR1Q3MW9NUWV0TWluS2dQUloxeFhLVHZSSW5oVG9C?=
 =?utf-8?B?WGpkMEJXMXArVjZYTnRIYVFITi9jM3czenkvZDVHaUlhNnlTVlN1Y2l5ZXhQ?=
 =?utf-8?B?NSt4ZGNYa05abjJiMGRpWFB5T1lpMHphOXJBaENhS0FqbXJBL29NS0RBTXhT?=
 =?utf-8?B?RlI3dUhRcjhvTlQwWW40SDI2UDNETGh1VjVNRDg4SWowVEloSzBrUkZ2ejhD?=
 =?utf-8?B?YTBqTVlNQnNhTjBvVWk4WHVVSmgxbzQyK2daSUNtTDBMUTZGWWFCNU5ROFFu?=
 =?utf-8?B?ZEFLTFBrbUozNDhUV1RWdHFkaWZiVTYzS1NKUGhJQWVUOTBPcktUSDVJajgr?=
 =?utf-8?B?U3pDMDBXRkxwc0MxSFAvYTQxZjFWNE4yTU9xdzY0dnN0em1Xa29yYVBZNzlr?=
 =?utf-8?B?MCtCcHBuUU5sVWNkZ3hrR255cS83U0NWY0lsTzZhWVUwOUx1ZGtrbW9uSmhp?=
 =?utf-8?B?S3ZGaTZ3UFErRjBTT3hPS1FMc2RpMkpCZGVqMVcvQ1VWaEtBY292S2ZreHgy?=
 =?utf-8?B?QmttLzU5azd0L3BOanQwWU9KZTg2eThOMTVadTd5YmZzQVJXd0NjVnpsbW9H?=
 =?utf-8?B?Vk12Nm80a3JLMk5zZjFEck5IV3V4S2h1TFlRQndjb01TNTQ1UGlsMkVkUGFL?=
 =?utf-8?B?RzAvQlJwNTYvT1YvRnorMXZoMGt0R1A3RkRTQmsrbUR2S2JLU2ZaQURDM0FT?=
 =?utf-8?B?bDJCNVJSZjgzTEd5MUJYTEFwYVRwcldON1dkTDVXVmg3RXJkVng1Nk9UTUlt?=
 =?utf-8?B?MHdqaEJIU3RCanpRSm1UNy9WeTBnbmp0SW1EL08rUVRha2NHQjNZSEtWVzdQ?=
 =?utf-8?B?VytKMUdXNVR3Ui95L1pQRCtNdEZMeHV5eHFRZ0lvb2c0YnBaSVRCbzhQd21H?=
 =?utf-8?B?ZlpoeEl6R3VDcE9KRlVoMERnVlZFcVlhc25pbWt5dG1MSXprM3dKTWhKNEtE?=
 =?utf-8?B?WTJkRlg0RWRGMUpHNEkxMWVoL0JiWXI2aEttNkdaT1hzR2hyK0xwcjVHcXNl?=
 =?utf-8?B?QlpPbFlJZlk1OXhaVWI2SVJWUDFnaTRycDJTNWd6OGd2OGVnbDNReG01YlhD?=
 =?utf-8?B?NVE5MmkyOFJsUE5SZEVCZU9QcWdjT2JSM0FaZGk3RU5oREJTYlE0bm5odFZH?=
 =?utf-8?B?MTUralFSQ3ljLzJpb3pKRGYzNzQ1NVpwcm5tTG42MnFCTzk1WG9DbFYvOVBH?=
 =?utf-8?B?aU1oZ2RZZ2pyT3JmRG5zcEdReHd5M3ZESjA2TkovVVI4SE1GU0IzUU9uNUxN?=
 =?utf-8?B?REc0U1hxS0VubUVTQTJkL2lsaXdIM3MyZVZlQzViLzhYRDB0UkxhUmNGd0JD?=
 =?utf-8?B?NU1XaXdqa25GcEZsd2ZGV0gxL2tLYVAyL0xLTjR2QXdTNTBTOVVYdTVjU3BL?=
 =?utf-8?B?S0E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3f2654-2de2-4dcf-99a2-08dd6abd8b2e
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 10:20:47.6424
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KhXeWX7t3UPGk20h9UOz5fNu8NIB6V309i6Vtyi2Kxu4MB3U5rU2CzdCb7A39/cO7PN1aNvVMmCVeI1zs5zxaFnnOZSraChxc8t26mBDnBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_032056_608488_A26BE436 
X-CRM114-Status: GOOD (  12.04  )
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

SGkgRHJhZ2FuLAoKT24gMy8yNC8yNSAxMDo1MyBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIFF1ZW50aW4sCj4gCj4gT24gMjAyNS0wMy0yNCAxMDoyMywgUXVlbnRpbiBTY2h1bHogd3Jv
dGU6Cj4+IE9uIDMvMjMvMjUgMTE6MTkgQU0sIERyYWdhbiBTaW1pYyB3cm90ZToKPj4+IE9uIDIw
MjUtMDMtMjEgMTA6NTMsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+Pj4+IE9uIDMvMjEvMjUgNDoy
OCBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4+PiBUaGUgZGlmZmVyZW5jZXMgaW4gdGhlIHZl
bmRvci1hcHByb3ZlZCBDUFUgYW5kIEdQVSBPUFBzIGZvciB0aGUgCj4+Pj4+IHN0YW5kYXJkCj4+
Pj4+IFJvY2tjaGlwIFJLMzU4OCB2YXJpYW50IFsxXSBhbmQgdGhlIGluZHVzdHJpYWwgUm9ja2No
aXAgUkszNTg4SiAKPj4+Pj4gdmFyaWFudCBbMl0KPj4+Pj4gY29tZSBmcm9tIHRoZSBsYXR0ZXIs
IHByZXN1bWFibHksIHN1cHBvcnRpbmcgYW4gZXh0ZW5kZWQgCj4+Pj4+IHRlbXBlcmF0dXJlIHJh
bmdlCj4+Pj4+IHRoYXQncyB1c3VhbGx5IGFzc29jaWF0ZWQgd2l0aCBpbmR1c3RyaWFsIGFwcGxp
Y2F0aW9ucywgZGVzcGl0ZSB0aGUgCj4+Pj4+IHR3byBTb0MKPj4+Pj4gdmFyaWFudCBkYXRhc2hl
ZXRzIHNwZWNpZnlpbmcgdGhlIHNhbWUgdXBwZXIgbGltaXQgZm9yIHRoZSBhbGxvd2VkIAo+Pj4+
PiBhbWJpZW50Cj4+Pj4+IHRlbXBlcmF0dXJlIGZvciBib3RoIHZhcmlhbnRzLsKgIEhvd2V2ZXIs
IHRoZSBsb3dlciB0ZW1wZXJhdHVyZSAKPj4+Pj4gbGltaXQgaXMKPj4+Pgo+Pj4+IFJLMzU4OCBp
cyByYXRlZCBmb3IgMC04MMKwQywgUkszNTg4SiBmb3IgLTQwLTg1wrBDLCBjLmYuIFJlY29tbWVu
ZGVkCj4+Pj4gT3BlcmF0aW5nIENvbmRpdGlvbnMsIFRhYmxlIDMtMiwgQW1iaWVudCBPcGVyYXRp
bmcgVGVtcGVyYXR1cmUuCj4+Pgo+Pj4gSW5kZWVkLCB3aGljaCBpcyB3aHkgSSBzcGVjaWZpY2Fs
bHkgd3JvdGUgInNwZWNpZnlpbmcgdGhlIHNhbWUgdXBwZXIKPj4+IGxpbWl0IiwgYmVjYXVzZSBo
YXZpbmcgYSBsb3dlciBuZWdhdGl2ZSB0ZW1wZXJhdHVyZSBsaW1pdCBjb3VsZCBoYXJkbHkKPj4+
IHB1dCB0aGUgUkszNTg4SiBpbiBkYW5nZXIgb2Ygb3ZlcmhlYXRpbmcgb3IgcnVubmluZyBob3R0
ZXIuIDopCj4+Cj4+ICIiIgo+PiBkZXNwaXRlIHRoZSB0d28gU29DIHZhcmlhbnQgZGF0YXNoZWV0
cyBzcGVjaWZ5aW5nIHRoZSBzYW1lIHVwcGVyIGxpbWl0Cj4+IGZvciB0aGUgYWxsb3dlZCB0ZW1w
ZXJhdHVyZSBmb3IgYm90aCB2YXJpYW50cwo+PiAiIiIKPj4KPj4gaXMgaW5jb3JyZWN0LiBUaGUg
d2hvbGUgcmFuZ2UgaXMgZGlmZmVyZW50LCB5ZXMgaXQncyBvbmx5IGEgNcKwQwo+PiBkaWZmZXJl
bmNlIGZvciB0aGUgdXBwZXIgbGltaXQsIGJ1dCB0aGV5IHN0aWxsIGFyZSBkaWZmZXJlbnQuCj4g
Cj4gSSBqdXN0IGNvbW1lbnRlZCBvbiB0aGlzIHNlcGFyYXRlbHksIHdpdGggYSBjb3VwbGUgb2Yg
ZGF0YXNoZWV0Cj4gc2NyZWVuc2hvdHMsIGJlZm9yZSBJIHNhdyB5b3VyIGxhdGVzdCByZXNwb25z
ZS7CoCBQbGVhc2UsIGhhdmUKPiBhIGxvb2sgYXQgdGhhdCBtZXNzYWdlLgo+IAoKSSBzZWUsIEkg
aGFkIGEgdjEuMyBkYXRhc2hlZXQgb3BlbmVkOgoKaHR0cHM6Ly9naXRodWIuY29tL0ZhblgtVGVr
L3JrMzU4OC1UUk0tYW5kLURhdGFzaGVldC9ibG9iL21hc3Rlci9Sb2NrY2hpcF9SSzM1ODhfRGF0
YXNoZWV0X1YxLjMtMjAyMjAzMjgucGRmCgpJbnRlcmVzdGluZ2x5LCBpdCBzZWVtcyB0aGUgUksz
NTg4UyAoc3RpbGw/KSBoYXMgYSBzbWFsbGVyIG9wZXJhdGluZyByYW5nZToKCmh0dHBzOi8vd3d3
LmFybWJvYXJkLmNuL2Rvd25sb2FkL1JvY2tjaGlwX1JLMzU4OFNfRGF0YXNoZWV0X1YxLjYtMjAy
NDA4MjEucGRmCgpDaGVlcnMsClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
