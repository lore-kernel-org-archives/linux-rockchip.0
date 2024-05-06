Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56383C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 12:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0RYWNjRs+w3rRk+omn5+NGlDMt/yggN0ahc2lmtUMwI=; b=tKgyLN8/E89n4z90TdpiDhn+sV
	K3eWcXmbNFMI3hiqDU2fk9XEg8/kxrKMdaTnvbByTXZdrbUtf98Q+HBGpdI6pIMo1B5OpPPN1J2h4
	NXvBQxl1K8ZMxBZu5NMvBaT7oc8Q4LUm9r91WgMkDNoAX18H1n3okKl0oz/aSAVCAfe0D9xcgRX0E
	ckFFmjYMW8kLP0vOU42hBzajJ5O1L4C6axJK5Cz9n0GgmghL8PvRA163JLOXwC3yQT/UwEVR3Oz2w
	Y7nIbsSMsGcHiA2K33xSBMlBr0b0GLGH+ditXgwJS0zNdS3BhzWNAPJ3UHO4H7DA0Sf8OO6Zdofly
	tLofxbrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xOX-00000007GHS-3e7P;
	Mon, 06 May 2024 12:24:37 +0000
Received: from mail-he1eur01on072d.outbound.protection.outlook.com ([2a01:111:f400:fe1e::72d] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xOQ-00000007GAK-0qLT;
	Mon, 06 May 2024 12:24:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZX3l38xP0MwcbjQaR4jB4Gbl6VHKwgtD6tGyhjJgASmzkW1zvd3kIfH1mJhTzwzzuBh+dc9KcOrxNXyk2M9o3xfErTXkvgP6/Fu3WGRI342ZDzjmCwtS+iqCmnbErFNi6rBoKY446wDcZDBZI6iDes1WxHlNV4NdHg/vYvztYu7N2+AENYhmPz9n4h34Y3Mm5D6z0/TmC3wjFeArLwagvuNBAe/eVPPZpSLF0dg6sCO3MI9/W2JLN9q3KxFqPM9LTegx0eY5+29aa3DyNOZ9DzoiHQDI8qk1RNNJsWALeMu+8j6El5cMqbQC7eBSRg/J+XVo6QlkeuhDFMxH5nah6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=flFaBaooq3Gfn4fLB5Qqk2nhJsqmOaFf3eZyVRSG/To=;
 b=E7WuCJzWI8hUB852SlsmEmdM5KygSqecd/sMEoapn6afQE7KRLie9LiXXpUhGP7JhJQNUHFBLwsTufWJQkbV+41c6eSpHgDlaWG6KiRggnrOA9wrB1enGKkTEP381f5LjVvjGHL3sFKKAB89i+CWbEaUnLT2rKRAEb+USO4CBINGVfGwst3ToI1p1YsTdcKL+ktuDBUL4qdnWff9xwDEdBdp9iNFOZJrKTgRC7c2e04wSRyq/bbgxydl26higgo4LVsaFUVsTLSazqltaA/T5ytnNU8PL0uuamq50keif9XjYIVu6VdBQf4N+RYq10Csn/dRnDMUmgQai8KaZTBfKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=flFaBaooq3Gfn4fLB5Qqk2nhJsqmOaFf3eZyVRSG/To=;
 b=HS/+fdMX7zZ/WnpszGvPWfOtRlFgH24Hi1oMga/l6vj8VR1mnwu1VTGrz5W9BuMKbvOa2iEpneY0p6VErksUnwz6TGXj3buWK6ythSjoKwIM4t62vrAjBjDcSRfD5py0UnsD+tMNJDPlHzAkOszFUwYL+20emfouPg45dfzSdL8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by AS8PR04MB9512.eurprd04.prod.outlook.com (2603:10a6:20b:40f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 12:24:19 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936%4]) with mapi id 15.20.7544.029; Mon, 6 May 2024
 12:24:19 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Mon, 06 May 2024 13:37:53 +0200
Subject: [PATCH v2 2/7] dt-bindings: i2c: mux: mule: add dt-bindings for
 mule i2c multiplexer
Message-Id: <20240506-dev-mule-i2c-mux-v2-2-a91c954f65d7@cherry.de>
References: <20240506-dev-mule-i2c-mux-v2-0-a91c954f65d7@cherry.de>
In-Reply-To: <20240506-dev-mule-i2c-mux-v2-0-a91c954f65d7@cherry.de>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-ClientProxiedBy: VI1PR0102CA0103.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::44) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|AS8PR04MB9512:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d23d7aa-f01f-4efe-64eb-08dc6dc771dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|7416005|1800799015|52116005|376005|921011|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alZVNU1pN2hKKzhkY1k0SXZyMVVFMWlRUk4wTlRnRmYyakNXeVRiRjQ2bUNE?=
 =?utf-8?B?TWxrMXRLUjFxYUQyR09LazVBMlhKZkZjUk4rVENqN1R6RFZyUVZMazJKcGd1?=
 =?utf-8?B?K1QvNXB5V0lKR1hYRUhpTkVnYlRKcTY5cWpBbUg3Z25YaTJhK1l4WU5GTEJE?=
 =?utf-8?B?NGdoTktZN0x1U2paNWFPWUFacjhac2JpaVV1NkpSWStQZmhvcWU3VUVHaVY1?=
 =?utf-8?B?ZHZmOElhZzJwTmlwcmZrOC9tdzRzTVorRHNKUGlSeHhwQ3J6RkJvRDlKZmxS?=
 =?utf-8?B?UHlVRktJcWpENGhtMlVoVGt6d1hUR2txNEFWS3ZYbS9kR3ZSbjJvNGFLMGNX?=
 =?utf-8?B?cWVUMGpjd2FNSGZyZURuYTJnNXVGR2FkN2lmd2QzN1QvVmlLNWdwMWJDa3pj?=
 =?utf-8?B?emFJNEdXMWhXc2ZSSWtYK2E5aUlFdGpZUkxSRzVVeDVCUmNnK3k4WTY1cHkz?=
 =?utf-8?B?OU5xcHNybFBVU2hFVXBCTVlMd0NQZk1lVWlQczNMbUUyemFEbjFkcFgwWDZG?=
 =?utf-8?B?anJvRVR4YWFwM1JEeFVjWlpFQVl0ek9EaVEvTmtvbkVoN3ZySC9Xd0FFbFdq?=
 =?utf-8?B?SXdpZ1I3N1Y3djlLc1hpbWlESnhmWCtrRThleXdCbk5COWJhS3V0NGxUUGVz?=
 =?utf-8?B?QUN3UFQydHhhWHY0eXZ5MDVpd2NCYjFDRDk2QWtDYUZpNTBxWDRUVEFFMUVI?=
 =?utf-8?B?dFJiSkkxcmFoOVl3eUMyY2JZU0gxUXJ3RmZybm5WejFSaDVCSm0vOUl2M2lv?=
 =?utf-8?B?T1ZUQlQrQ0NIWkdQMGNEeXlzaWd5YThLSjV5aVNHNEpYWXluSmh1bjJ1SFVn?=
 =?utf-8?B?K2pDbmVlMXpMU0tZZ29jUUxnNUN3TTJRaFhzNTlKNVUyc29FQ1JJaXcyMFpk?=
 =?utf-8?B?RDNPNnNwRlpmOG02K3ZwTXNRTGM2cXRQb0pVQ3VWamNqdkg2MHVhT0FHbVYz?=
 =?utf-8?B?ZHJsL3BGc2RwblozekhYNzNSekozbHFPNTZBclhCNHpoSW9CUWlQWUJvTUsy?=
 =?utf-8?B?NzcyVFd3YUxxczlPZXVlMzMxYlgwK1BEWXdZM3FBSDZCUmRDOCszZTlSYUVR?=
 =?utf-8?B?STZMc2QySjVrd0VGN1hRdDh4RGZFNGpFa2VKUkN5SkswMlc4dTN6N1VkeDUx?=
 =?utf-8?B?VkxoYUczSW1FaENZY0wrWE1ON2RaQmVEcVNDOGFNaURRNVpNcXVMUEk5VStW?=
 =?utf-8?B?OC91MUhnUkhVNnRjM0FaWTIxWFRvQ3ZJRzF3dGRYYVZXbmY1UE84a1lpRTgw?=
 =?utf-8?B?MGZyWVVyWDVxNFRJSzd4MlFYSEFicFl6M3lFb2xhRVk0eVIyZ1lnMWIwdW92?=
 =?utf-8?B?UzJySU14dWRXTVZiRTNhQks5Y2ZxZmxMYU03d2Z1MkZPanhjSEJNY2FqWmxu?=
 =?utf-8?B?ZUhkaEQ3aDhueDRycDN6c2F0VFdZMitvalRDT1hzTVR4UHc3ZlkyYVAvMkJ1?=
 =?utf-8?B?NG9yYWNHVWFKdFV4dnI3T29jTUlHSkt5a2FWNVVqSlA1TDJpUVdzcmFTN1pO?=
 =?utf-8?B?dEpPQ21PSkpXbUhJY0tPbm1wOTJTRUV3VUFmUitERDlHaUVzdWZLWWNWVmxv?=
 =?utf-8?B?UklQU1pDVTU5dTQ1MzNjczg5bkpPcXNqeWNtc0xJRS9BLzJBcjhEc0swRXNR?=
 =?utf-8?B?Wmp0V2JmTGRBbVpGUWlXQ043TUR3ZUs4VGJ4dklWV3BRYlRlNTF6bGdpSG5q?=
 =?utf-8?B?b0pIeitNaWhBT05ycTY0Q01IeXFXOUl6eWhJeDF3SklaOHVUa2dyamlzdW5s?=
 =?utf-8?Q?vEMIQie8UFIgZ5EKG4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(52116005)(376005)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUVWOGpkUyttVHdQbjc3ZkpDQ1lUQ3ZVWTJaYVgrUHIwWEdQUmU2Nmk3aFNS?=
 =?utf-8?B?QXZyVTBvOWx3NXhibEtvVzRIL0l3c2tqUnlZVjB5cEpSaU9LQVNQYUpNVlc4?=
 =?utf-8?B?ZXJWOEo2eGdBa2UwOURjRUZja0taRVFSUEpDZFN1aDlSVXIwblU1QklGQnc2?=
 =?utf-8?B?eUdDUEVrU2ZhTVFrNkNIR1pKMko3eXhzU2d5YWtoQUhYenR5alRYVUlqVjNB?=
 =?utf-8?B?Q3lDRktMQjBXYXphNDhjN3JJNG5oZG1mUkorYStNbERQcGtIVy82di9GMTRi?=
 =?utf-8?B?YTAzOEZTOC9LcUZtbTVjaUhxTGg5R2lab2hrdTQyTXpCZ3hqVEVsT2t0ZkNC?=
 =?utf-8?B?OXY2TC8vT21WUWFrTzBacGlndEMrY0pkZDZVSjJabW1ERDl3YnVuS0UzS1cr?=
 =?utf-8?B?Wk5XQzNoeDZFMk1zc2xKVVRPbmFld3lMT0Y4cVlFSFh0WXo1VHlBNU82NXJk?=
 =?utf-8?B?SWM3UkFDY1o5aUtIczQ0OEN3MzlheWpnclA3RzVkT0oyNlMzSEFRayt4YVJZ?=
 =?utf-8?B?d01xYjFVemJqTkxPa2FRVTlRWTBhUVdFMUFNWjZVcE1TdDJwYmFMRmJxQkgz?=
 =?utf-8?B?VXlpam44NktTMXppMHF3VjQwenNKMVRzQ2o4MUlmdEEwS0pTejNpZDdVTkJw?=
 =?utf-8?B?N3Q4ZmFMallUbncxSE1scmwwUjZwR0dtNmlKOHZZR2JCeTlnKzJLZDFqSjN1?=
 =?utf-8?B?NFRGY2drVmZha2FKaXVaVFZnR0ozNGhYT1Jzd0NMcFZTUURYRGVGenJibWph?=
 =?utf-8?B?dko2SzhkLzVGR1VTT3hJdExWdmNoVVl0Y2ZXSnpIcjlVcXA4T2EwQlhGMU5w?=
 =?utf-8?B?RW5DVmc3Q3luSGd1UHdEVUZFd0dnd25RSEVWSHJ5NmpUT0Q3K1JVb29rRDlr?=
 =?utf-8?B?enFtWHBIUGRBZHhqS1pPbE4zbVlEUkNNeXNaTVhoMWkxbFlqTWJMVURvc045?=
 =?utf-8?B?U0U3MktmYm45OVVmYzJmc1hsbmV1L2dheHJpVDdxSThzOEdTOWZWdnhDRm96?=
 =?utf-8?B?UWxtQXRHdVRCWUpNQmRBL0Rnb1BtZW42bTVyekd0Rk54ZEF1Z01ib0p0bUx0?=
 =?utf-8?B?MFBYRkFZTHBYdDNCR2czcW4zaWh1ZVhCeWZPbXZrWVhqQ3o0dlE2djlhcUc5?=
 =?utf-8?B?M3pvTmR3V1k4QXQ1ek42K3k2RWRpNWttOFE3WFpCRThlZUpPQkdXZllIRGsr?=
 =?utf-8?B?NlNObXNpYTB1QUw0WmZORk5tOUhQL0Q2b3E5cHY4dFBsMm9pUkNQQzBhaXNR?=
 =?utf-8?B?cVpjWUh2UVVPSlhoMjZZbnorQXZHV3R2M1R0TmpST0pIMnE0MFVzZU5DZytI?=
 =?utf-8?B?dnE1YVN1SXFVVGNUT2pXQVhjYzVxUVV0NTcrMVYwWVB1ZzIza3BxM1NaVHNU?=
 =?utf-8?B?OTNBZ3JHWmJtcm11UkJhdWZFMlRXc2U1bjJyRG9SYWtOcTFtM0NoSXMzS1Ew?=
 =?utf-8?B?ZFdIT2h3eFB3UHJQaEtpUCtNOWd1WXBZZVZiVUsyZDBnM0NwTGljWUgwbVdw?=
 =?utf-8?B?a1FMRlIyazFOZVRZc1dmUUJmdGRVTWl4TWJlb2UvUnV5Nkx5STJ4WExjcFgw?=
 =?utf-8?B?OUhLYnVmREVGZHNqeW9OVjA3aUpvTVN4REYwOTFwSndQbUpVVTMyTUdRYU8r?=
 =?utf-8?B?bXJvMUJXbm9Beng2STMyaE4rZ2JGK2FsbGY5TDhnbkkwejdQNEhhK0p4NGJB?=
 =?utf-8?B?NFZZRVpsMW1Xd2NqajJyZ1ZEYjZ2anhTMDFDU0NQY0RncHFLUHd4cjE2dExs?=
 =?utf-8?B?cW0rOTR2VnhubkhtVGlEU1JLbEc3SWJHR21LY285ejJwTDJZNWRmbDA4V3A0?=
 =?utf-8?B?dEFJblB3K0VtN3Rnd01qZW4yR1lleWRNTzRHVS80SU42T3llUFRMQUpXTnR4?=
 =?utf-8?B?OW9QZSt4bXZER3YrM1htUldyQnl0bzBYdno5UHNlVkswUHJZYlU3UWUrbGlM?=
 =?utf-8?B?bVNMQWV5SDZIdDFIVmE0a3B0UVZSNWhYdmN6bXJaNkxlY0VmZmxRNDNxd2M3?=
 =?utf-8?B?WGZWdWZGSUlmVlpsSnArQ3dRV05jQnhSendwVmNMR0R4dFJtWW9kbHJQakR6?=
 =?utf-8?B?VVluWitpWVl6b3gzOGMyRWVFWDVyUDI1NVN3a0RYaGQ4RFFlLzJXeXZIZ2tG?=
 =?utf-8?B?d0lVTjJBS2xmMWJNenVBYXdrcVpCcXpmK2Y3YmUzMjhsQUdrVkg2NU4ydEhP?=
 =?utf-8?B?UVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d23d7aa-f01f-4efe-64eb-08dc6dc771dd
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 12:24:15.7098
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BReddaunuBFEohIcHeUWPojG1psSVlkcEF/6Tc8i45jYGrB33HqA/wYdgLUi1m6IsLlh9ccVZz8MmF5oO2dtkncc3NYz0DhH9s9yiLeKfmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_052430_313908_0E076D7C 
X-CRM114-Status: GOOD (  11.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Mule is an MCU that emulates a set of i2c devices which are reachable
through an i2c-mux.

The emulated devices share a single i2c address with the mux core itself
where the requested register is what determines which logic is executed
(mux logic or device logic).

Add support for the Mule I2C multiplexer bindings.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml b/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml
new file mode 100644
index 000000000000..50915183bd43
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/tsd,mule-i2c-mux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mule I2C multiplexer
+
+maintainers:
+  - Farouk Bouabid <farouk.bouabid@cherry.de>
+  - Quentin Schulz <quentin.schulz@cherry.de>
+
+description: |
+  Mule is an MCU that emulates a set of i2c devices which are reachable
+  through an i2c-mux.
+
+  The emulated devices share a single i2c address with the mux core itself
+  where the requested register is what determines which logic is executed
+  (mux logic or device logic)
+
+      +--------------------------------------------------+
+      | Mule                                             |
+      |    +---------------+                             |
+  ------+->|Config register|----+                        |
+      | |  +---------------+    |                        |
+      | |                       V_                       |
+      | |                      |  \          +--------+  |
+      | |                      |   \-------->| dev #0 |  |
+      | |                      |   |         +--------+  |
+      | |                      | M |-------->| dev #1 |  |
+      | +--------------------->| U |         +--------+  |
+      |                        | X |-------->| dev #2 |  |
+      |                        |   |         +--------+  |
+      |                        |   /-------->| dev #3 |  |
+      |                        |__/          +--------+  |
+      +--------------------------------------------------+
+
+
+allOf:
+  - $ref: /schemas/i2c/i2c-mux.yaml#
+
+properties:
+  compatible:
+    const: tsd,mule-i2c-mux
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        i2c-mux@18 {
+            compatible = "tsd,mule-i2c-mux";
+            reg = <0x18>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            i2c@0 {
+                reg = <0x0>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                fan: fan@18 {
+                  compatible = "ti,amc6821";
+                  reg = <0x18>;
+                  #cooling-cells = <2>;
+                };
+            };
+        };
+    };
+...

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
