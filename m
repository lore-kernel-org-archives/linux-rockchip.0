Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 352EBCF649D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 09:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k9BR547SZGzHr5Ul3zOkXTx+BskXX/ShOGXLsybMq6M=; b=wb0xd+780tzbn022p2iRGF7kbv
	mAjwOM+MJ75JojWDshjO5XlxMNRgC1O7dHs12o/hEBBtYRqgBsFO626jlIe/DLXpgykj6osgHjTSN
	NglVO3lKTRr94k+ABWQzfsaf729HJePWA+D514EMgrVVDFW577du80hFi9VCynaju6JvrcelwWjbQ
	vKLyxnQA19Xbpm2tp8q0Hrp75Gok/Sz7Yl211ocyqEvnItz1B/OggDswQQrpYYaSgsXBeWtNqi3Yy
	DC8IvG43Nv8tNV+xk5kSnY5ZIX4A2s5cmI0+VZmp24CT1iRlKuEVQQ4roWvs+VCx/lt35QGUs4GF7
	pKo9Ootg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svCT5-0000000GSMA-1t70;
	Mon, 30 Sep 2024 09:13:23 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svCRq-0000000GSCH-3aFy;
	Mon, 30 Sep 2024 09:12:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6OckKbbKSdwYFFTmdGk8N/tjuan+E69PJf0ul9lVxnEScI79t6wYOVO+durNI2LXAvU+Ixj0sSQ6tfawmpbST6zTDn2qRsamXFw8EyRNzsjNV42XWSN7aqJkGQ+xzP1wZnWoQ1dOxKMHWLWyWbrO8xdVOPCUlrSD9dwTDOBxokrSPIKE8J/jKC0Pat1OsW592Y4HdXzwNA3nRbC+dkMkl+ScnieghPA9/U6I9wjTfqh8CH9UZvp95gkNPMgETuPv0BP96jhbbG05uztGJf/EReX1QEZHE1ZwH44tSNMUbGCzrE9sHBD6WjkH1nXLa5nixqVcNNQNRabo5x2DaMv6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tMPT2yYkvNPnY8xpCPc7dZ5QdXmZMUazVJ+otZdYKU8=;
 b=mwFXyfm3q4svbc0wMFTa4ZU0im/X9r1xJUN7gLYTBTzldo+cLOM2KfRbJ3vEAA8RmtmFfXOtDMGjvxIF17WjXdaiAGBHjdS8gab2oZonMsaee9GrvC4vs+mTAdEGLTMnJyVYelWHZEmEHVnh3MsfTgupe17YlC75s8OYLQm27fTM3xlNXz1P4MJKidUHXp0XkdvXMSkGdDcSsedgB7UV/bFvt1sTKiCeSYP8MJ9BynA5I++T5g69zPrucwRE3RfW/l7UBOyF/gQDFz2Fyw1sulaCPnNVq3N0wrLcvVHSm1RG+5/nxI8AdGlQG+2hLsMmxXRF4VjnJubfVB9hPYvsIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMPT2yYkvNPnY8xpCPc7dZ5QdXmZMUazVJ+otZdYKU8=;
 b=RYFGaV3opggjidEOvuRdpIi/YA0gNzxxKBOxd/3Wn6ZT6V1sILFmsJxRfcJFO1UtJibE0EmBAuOENUOZ6y2v37LV5P1XWFh6jggGustwN8TjV4emYhgiYJFSDMYTRqih1W1ttxv2IMGDzuCgwsHNwbKu8qO8o/QXdRPb3aJvghY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by GV1PR04MB10920.eurprd04.prod.outlook.com (2603:10a6:150:208::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 09:11:57 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Mon, 30 Sep 2024
 09:11:57 +0000
Message-ID: <5f73e2cf-cb18-4b65-9e42-cf3192aee706@cherry.de>
Date: Mon, 30 Sep 2024 11:11:56 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dragan Simic <dsimic@manjaro.org>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240925072945.18757-1-dse@thaumatec.com>
 <54c49375-cb2a-40fe-abcd-fc56c04d0c53@cherry.de> <4620941.LvFx2qVVIh@diego>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <4620941.LvFx2qVVIh@diego>
X-ClientProxiedBy: FR3P281CA0185.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::18) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|GV1PR04MB10920:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fbc1f00-4805-49dc-287e-08dce12fef4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0lMZmxBMGgwdTduLzFHZHpYVklPSU5zUHROVFJ6RG01NEtFdnpVWjM5dEQ1?=
 =?utf-8?B?TWNNLzFjSm95TWhNMkJVSEtHUFlTWGVod1pQRUEvN3VWS1JPSHJyUVJmbnBw?=
 =?utf-8?B?a05kQVEyM2pxWTVCRkdmUXF2SlEzNHFqaWl0VTVrQTlxUVdVNVBPZElydzZi?=
 =?utf-8?B?d2ZIa1pZM2xKbmhxc25GMHVZdHRGSyszdURaNzFPeDJJbnFTaURUNmQvZG1p?=
 =?utf-8?B?WXdVdXVYU3YydHlHTDBtcXpHZGpRTWhDdHRHMlRnZU1Uc2NTaElDL1R2K2Fo?=
 =?utf-8?B?aDhYRVZ4UlYxcm5aQVlmN0tQUXpGMkZTUTZHS09PMkk4S0FrMGJUN3VRc1JG?=
 =?utf-8?B?V09INFhKWlV3bWJvcDEvVStYZStsQjJrV2VRbUQ2N0daWnBzcVNYazJ6c01q?=
 =?utf-8?B?cEtRODA5aHlrY25kYldsTVpmSForY2YydjFER3VpVDJXUHZTVG1oM1I4cjZ0?=
 =?utf-8?B?OE5oNDYvK1c5OURLUUx4ZGVBUURkMVVzM29QSDV3Q0h0c2RtekxTNEE2eEpu?=
 =?utf-8?B?UGxodjdRZUU2S2Vsbnh0R2xOc1pzamFOVjhqZXdvcjRZTytvZFd4UHBjZjRI?=
 =?utf-8?B?OXdoMVBncFQvUzRUNTN1UXpNQ3lqc3QwdStnUkNYaS9SM2hZWFJRMUxSS2xO?=
 =?utf-8?B?Qm9KNlJLNnZYZmc0Uzd3U0tLeFFOTEdpQUc5R2R3QVdOV1ZMMlNpUEd3NnJs?=
 =?utf-8?B?bG5uQ2ZqN0NqeS9HRmZYQkRISVJSanR5ME9XeTBQYlNNWWRVZk95TmZsRW9O?=
 =?utf-8?B?TjN2OWYwYkFtK1Q3RytNYUJFeENJd2lDSHV4bkxtSzdCdDhtaHlLRHZqelc5?=
 =?utf-8?B?Z2xWcUtkYkRVQm9oVVBNSGwwZDhCRmpvN2RSdDNQRG8zaWhub1JrOUErQWtO?=
 =?utf-8?B?ZWVZMG5CeHRvN2VWUHZlcWdIQkpuN1ZjQW1VamVpUW5mVFJ4YmNKYUU3MUlJ?=
 =?utf-8?B?L0lBaWRTcUxBVGU2aCs5NkdmZzRxb2hrZlJDdWNMUG1DYVo3bTJLWTExQnE5?=
 =?utf-8?B?YW9VdTk4cEpMYzZJZExGQjVrby8vNnFValBPTHB5Ym9LNFVjMFdGREFNZU5j?=
 =?utf-8?B?b2lLYWZ6TzB4a3hKVlpHOWZRNDZnMWxxRGh4cmxpMC9NeVVUR3ZXZzVuTk9s?=
 =?utf-8?B?NUxSUG15cVA1TVRLTGdMUW82UWlCYWJJOUYyZ01YekttL0pXSmdHeXVlUXVP?=
 =?utf-8?B?aEhST1lCOXY3cm92eWZiSnNid0dudldQWGVNeXhKM2txZVZMOU1VMkhvZXRi?=
 =?utf-8?B?bWFnUmRpYzB0Q3JLZ3JIZjllS3BEWmlkYWpaUlRsQy9RM2M2cDErU1VDZmh4?=
 =?utf-8?B?Tm1RbVFpODdERnRaUFJxN2dnYWFjb3BhRVFQSlp6MDBYSFJQbHpmNWRNS3RO?=
 =?utf-8?B?MjZLVnRHVitoZUgvWVYxUTdjRG9CeHh0dmtucEpZYU5ZTGJoZHo0U0h1cUhl?=
 =?utf-8?B?ckhDQ0dtNXBNRU0raTMyc05tUWFTUi8vc3d1Q3pVWm93d0ZjV1p1OFJ1d3RR?=
 =?utf-8?B?SEFiakt5NS9qczZHU2ZiUUN0R1Bic0R3Tk53alhtUnpwcmFWZXNGNUZPSytF?=
 =?utf-8?B?ekNzdEJhM0VIbkVRdjJWckM5Q3hVUjlrUEdjS3BtZXZpR1Y5SW5yNExRWGky?=
 =?utf-8?Q?avRxV+moevNK7IVrNhsgVPggj4RTweryNj+addjjU8ss=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cllhb2FoeHNwU054TUpyZGRsdFY0RndCVTZlcW5MdHVPUExBeG5SckJzenc0?=
 =?utf-8?B?WVVVeU9pZUpQY1NSM1hGKzVJTDFLR0lMMW9IbU5HcUZaMDk1dnJmb01QVnZq?=
 =?utf-8?B?S3ZuanhVSWtGZUlYdnpudjQyMTlKUWhZTG96bXg4YTRzQU9sNGw5c2tBcHd3?=
 =?utf-8?B?TWM2ZXM4QjV2Ui9xMUZLMzA1NHVXVjRodUp3SnYyM3dFeHRvUS9PaUFjcjhX?=
 =?utf-8?B?Z2NqcmtYd1ZPaWRIT2dGY3NoL0JOK0NWNTZtRkY4SXQrbXJZR25Ud1RwWGZF?=
 =?utf-8?B?T0FidE14c0dlMkJWMmo2YkNLKzMyVE1NOWIyR29xMnpaek9pMnlIVGdZZWNm?=
 =?utf-8?B?dmhCYjV1dUZMSStLTFg2VGFXZmJLbDJzTHdwZVNmazJBM1BRdW5kNEZtSDBC?=
 =?utf-8?B?a1BzY01PK1B3dk5BbkRLT1IrT1NOL1NmV09CSSszU2s4MngySmtubDRaRE5Y?=
 =?utf-8?B?ZkpaZGNsRzAwRkdTYTRUU2kwY3hmcnJKenhlYUlJTVd3N0MrSUVjNnBUWlF2?=
 =?utf-8?B?MStxSlZlRHUxRytSNTNlcEFINE5lTThVY05jSDdmZk5VSGt5aDJCVUtSN1B0?=
 =?utf-8?B?WHZRSDA2bUZTbjFUOTlXeU5Tb0J6Y3JKdmFqdzBGMjZiaDRlYWg5RXNxVU9R?=
 =?utf-8?B?VnBhV3hMendtSFFPVjNDQVd6cWN4UTMzTENTdnMzb0drS29ZdENKTThWWk0z?=
 =?utf-8?B?OSt6VHdWdkVNbzBYRXNaMjFDQjhSSDJraWZ4RHE5bEVyZWoxMGQwY2JyYjJh?=
 =?utf-8?B?MDlDNWFKMGVlTll3TDI4TytDVFBEMzNFS1VrWFRFL2hUSzNsd3QzcmZyQkxn?=
 =?utf-8?B?WkNZZFpML1FIdWFBeEFHTitjb1ZZZmZCMkdqeGJBdFRlMmM4ek90Z0hkcTBy?=
 =?utf-8?B?Z2UxblBBNm9TQ24wR29Jb1k1L0U5Z2Y0VTJwSHRpNTQydlFlQ2VRY210ZG9F?=
 =?utf-8?B?RVVlYlhMbTUyR0NqYjE1UWdiTE51djBJanZzb2NaL2cycDQ4ZmdGSzNnKzlU?=
 =?utf-8?B?ZExYaExEMUxBZXJPb1d4MmdNK1Z2OWFrTVhHU2VXRThtSkNDLzBhaElZWlVz?=
 =?utf-8?B?UWNxbTE5anMwQjVNSVRpNWx6WkF1QzZ2WEJoYWpndnd3NGxBOFdXTXNRTXcz?=
 =?utf-8?B?NWk1WVdiQ0Z3NkVQQXMzN1RleTcyMzZibVF6bWl5NTJ2MUtpVzE2RE5RV1R1?=
 =?utf-8?B?dGMxNnhOdWEzS0x1Nk04TC9ualRGdVlnUGlHdEJpRHFmRDNvT2NkL3cvTXZT?=
 =?utf-8?B?RE1SczhEQkQyUWpIeDdZbnpXckZ3eEFvT08yb2Z0OTBHNUZHM1dYUG0wT203?=
 =?utf-8?B?dEQwenY4RVI2bVpWRzF3U2tqRHpaTlAwMmlmK1NEc2pwWXV1VGlsV29KT0Fk?=
 =?utf-8?B?allMeUZvYVZ6K25FRlc2RXNqbGhkWm0xUEJuclk4NXJFZnpjTzBPdFNRN2Q5?=
 =?utf-8?B?U0VGbG5jTG5QeXlJdlpiTVRCZFlLUituTThvc3BYdXBYNFlVWXJjK3VYVUtE?=
 =?utf-8?B?QzN2aVFUVGpueldkNWJSam9xRXE2Q3JSS0FQK0RoejRjaXFvenpZWjJVMmpZ?=
 =?utf-8?B?akFmeGdEY1Bvci92cmQ4ZGlNZmFEczBkbFBsd2RJZTViZldlVEJ2SkZUSTdG?=
 =?utf-8?B?NkJQQjByL0k1Rng1UWxKcnlvY2o0eVVlczg2ZzlZYWdzK01WMThPOXlycEFj?=
 =?utf-8?B?WE9QNjFkTUhnQnU3NHlwcVBSc2VFcTlXUEpuekRQcW9jbzBaWk05V2VWMWVU?=
 =?utf-8?B?SCsrOWl4a3lwNDhVa2phMm1pa3ZKTjBFSXluUVRHWWRKUDcvcFdhRzFFMG1u?=
 =?utf-8?B?N1VmbEo3MHJFKzk5NmlnVUtZdmFQaXlrWXl3VEpjdUc4SDYyYlBoZC9ac2J5?=
 =?utf-8?B?WFlWRGFJRm9xR0ZlMUtrU2xtYmQ3b1VRS0t2OUN3UVBnOUwvSzh6MzI3Umg4?=
 =?utf-8?B?bDU3aVdPeFV2cXpQWURCb0d6cGxCTlpoTFJSZElZZmhCc211ay9tVWkzZTRN?=
 =?utf-8?B?WVNIQ3hJcFMzQVR3VSs2aDg0NFYrU1k0NGRGdzBGK0lFOUFicG1QT0FRblVz?=
 =?utf-8?B?SUp2RjhlNDdiejcwUUU5L1cxSFEyKy9iejlhZ0o1U1dzNW5UajgzNVNOSDV1?=
 =?utf-8?B?bkVFTVZiYXIxOWhBSi9vMUkzMFZWUTdxWDlYdzY5NWdEcUhZSFZtSjZRNjlt?=
 =?utf-8?B?WHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fbc1f00-4805-49dc-287e-08dce12fef4e
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 09:11:57.5724
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8G3IsDE0z65XbPCqZ76pj8IoTHuI0yLxqM1Y4EAhsmwKiIVo4VwnaGJnR1oTqMVHoMRy263lZdmbSCuLcZjVQH2aeCwdf2sVd/AtOih7nNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_021206_921095_02ED0C65 
X-CRM114-Status: GOOD (  26.86  )
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

SGkgSGVpa28sCgpPbiA5LzMwLzI0IDEwOjQ5IEFNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
ZXkgUXVlbnRpbiwgRGFuaWVsLAo+IAo+IEFtIERvbm5lcnN0YWcsIDI2LiBTZXB0ZW1iZXIgMjAy
NCwgMTQ6MzQ6MzAgQ0VTVCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+PiBPbiA5LzI1LzI0IDk6
MjggQU0sIERhbmllbCBTZW1rb3dpY3ogd3JvdGU6Cj4+PiBUaGVyZSBpcyBhIFBXUkJUTiMgaW5w
dXQgcGluIGV4cG9zZWQgb24gYSBRNyBjb25uZWN0b3IuIFRoZSBwaW4KPj4+IGlzIHJvdXRlZCB0
byBhIEdQSU8wX0ExIHRocm91Z2ggYSBkaW9kZS4gUTcgc3BlY2lmaWNhdGlvbiBkZXNjcmliZXMK
Pj4+IHRoZSBQV1JCVE4jIHBpbiBhcyBhIFBvd2VyIEJ1dHRvbiBzaWduYWwuCj4+PiBDb25maWd1
cmUgdGhlIHBpbiBhcyBLRVlfUE9XRVIsIHNvIGl0IGNhbiBmdW5jdGlvbiBhcyBwb3dlciBidXR0
b24gYW5kCj4+PiB0cmlnZ2VyIGRldmljZSBzaHV0ZG93bi4KPj4+IEFkZCB0aGUgcGluIGRlZmlu
aXRpb24gdG8gUkszMzk5IFB1bWEgZHRzLCBzbyBpdCBjYW4gYmUgcmV1c2VkCj4+PiBieSBkZXJp
dmVkIHBsYXRmb3JtcywgYnV0IGtlZXAgaXQgZGlzYWJsZWQgYnkgZGVmYXVsdC4KPj4+Cj4+PiBF
bmFibGUgdGhlIHBvd2VyIGJ1dHRvbiBpbnB1dCBvbiBIYWlrb3UgZGV2ZWxvcG1lbnQgYm9hcmQu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNlbWtvd2ljeiA8ZHNlQHRoYXVtYXRlYy5j
b20+Cj4+Cj4+IFRoaXMgd29ya3MsIHRoYW5rcy4KPj4KPj4gVGVzdGVkLWJ5OiBRdWVudGluIFNj
aHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+Pgo+PiBOb3cgSSBoYXZlIHNvbWUgcXVl
c3Rpb25zIEkgd2Fzbid0IGFibGUgdG8gYW5zd2VyIG15c2VsZiwgbWF5YmUgc29tZW9uZQo+PiBj
YW4gcHJvdmlkZSBzb21lIGZlZWRiYWNrIG9uIHRob3NlIDopCj4+Cj4+IFdlIGFscmVhZHkgaGF2
ZSBhIGdwaW8ta2V5cyBmb3IgYnV0dG9ucyBvbiBIYWlrb3UsIGMuZi4KPj4gaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXB1bWEtaGFpa291LmR0cyNMMjIuCj4+IFRob3NlIHNpZ25hbHMgYXJlIGRp
cmVjdGx5IHJvdXRlZCB0byB0aGUgU29NIGFuZCBmb2xsb3cgdGhlIFFzZXZlbiBzdGFuZGFyZC4K
Pj4KPj4gVGhlIHNhbWUgYXBwbGllcyB0byBQV1JCVE4jIHNpZ25hbC4KPj4KPj4gSG93ZXZlciwg
aGVyZSB3ZSBoYXZlIG9uZSBncGlvLWtleXMgZm9yIFBXUkJUTiMgaW4gUHVtYSBEVFNJIGFuZCBv
bmUKPj4gZ3Bpby1rZXlzIGZvciB0aGUgYnV0dG9ucyBhbmQgc2xpZGVycyBvbiBIYWlrb3UgZGV2
a2l0IGluIEhhaWtvdSBEVFMuCj4+Cj4+IEknbSBhIGJpdCB1bmRlY2lkZWQgb24gd2hlcmUgdGhp
cyBzaG91bGQgZ28uCj4+Cj4+IEhhdmluZyBhbGwgYnV0dG9uL3NsaWRlciBzaWduYWxzIGZvbGxv
d2luZyB0aGUgUXNldmVuIHN0YW5kYXJkIGluIFB1bWEKPj4gRFRTSSBhbmQgZW5hYmxlIHRoZSBn
cGlvLWtleXMgb25seSBpbiB0aGUgZGV2a2l0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gbWUsCj4+IHNv
IHRoYXQgb3RoZXIgYmFzZWJvYXJkcyBjb3VsZCBlYXNpbHkgbWFrZSB1c2Ugb2YgaXQuIEhvd2V2
ZXIsIHRoaW5ncwo+PiBnZXQgY29tcGxpY2F0ZWQgaWYgdGhlIGJhc2Vib2FyZCBtYW51ZmFjdHVy
ZXIgZGVjaWRlcyB0byBvbmx5IGltcGxlbWVudAo+PiAqKnNvbWUqKiBvZiB0aGUgc2lnbmFscywg
Zm9yIHdoaWNoIHdlIHRoZW4gbmVlZCB0byByZW1vdmUgc29tZSBub2Rlcwo+PiBmcm9tIGdwaW8t
a2V5cyAoYW5kIHBpbmN0cmwgZW50cmllcykgc2luY2UgZ3Bpby1rZXlzIGRvZXNuJ3QgY2hlY2sg
dGhlCj4+ICJzdGF0dXMiIHByb3BlcnR5IGluIGl0cyBjaGlsZCBub2RlcyAodGhvdWdoIHRoYXQg
Y291bGQgYmUgZml4ZWQpLiBBdAo+PiB3aGljaCBwb2ludCwgaXQncyBub3QgZW50aXJlbHkgY2xl
YXIgaWYgaGF2aW5nIGl0IGluIFB1bWEgRFRTSSBpcwo+PiBhY3R1YWxseSBiZW5lZmljaWFsLgo+
Pgo+PiBTb21lb25lIGhhcyBhbiBvcGluaW9uL3JlY29tbWVuZGF0aW9uIG9uIHRoYXQ/Cj4gCj4g
SSBndWVzcyBmcm9tIGEgcGxhdGZvcm0gcGVyc3BlY3RpdmUgbm9ib2R5IHJlYWxseSBjYXJlcywg
c28gYXMgdGhhdCBpcwo+ICJ5b3VyIiBib2FyZCwgaXQgY29tZXMgZG93biB0byBhIHBvbGljeSBk
ZWNpc2lvbiBvbiB5b3VyIHBhcnQgOy0pIC4KPiAKPiBXaGlsZSBwaW5zIGZvbGxvdyB0aGUgcTcg
c3RhbmRhcmQsIHRoZXJlIG1heSB2ZXJ5IHdlbGwgYmUgc29tZSBsYXgKPiBoYW5kbGluZyBvZiB0
aGF0IHN0YW5kYXJkIGluIHNvbWUgcGxhY2VzLCBhbmQgSSBndWVzcyBncGlvIGxpbmVzIGNvdWxk
Cj4gYmUgcmUtdXNlZCBmb3Igc29tZXRoaW5nIGVsc2UgaWYgbmVlZGVkLCBhcyBzb21ldGhpbmcg
bGlrZSB0aGUgbGlkLXN3aXRjaAo+IGlzIHByb2JhYmx5IG5vbi1lc3NlbnRpYWwuCj4gCj4gQWxz
byBhIGdwaW8ta2V5IGlucHV0IGRvZXMgbm90IGNyZWF0ZSB0aGF0IG11Y2ggY29kZS1vdmVyaGVh
ZCBpZgo+IHJlcGxpY2F0ZWQsIHNvIHBlcnNvbmFsbHkgSSdkIGp1c3Qgc3RpY2sgdGhlIHBvd2Vy
LWJ1dHRvbiB3aXRoIHRoZSBvdGhlcgo+IGJ1dHRvbnMgaW4gdGhlIGhhaWtvdSBkdHMuCj4gCj4g
V2hpY2ggaXMgYWxzbyBhIHdheSBiZXR0ZXIgdGhpbmcgdGhhbiBoYXZpbmcgbXVsdGlwbGUgZ3Bp
by1rZXlzIGluc3RhbmNlcwo+IHRoYXQgdXNlcnNwYWNlIHRoZW4gaGFzIHRvIGhhbmRsZS4KPiAK
ClllcywgYnV0IHRoaXMgYWxzbyBtZWFucyAiY29kZSIgZHVwbGljYXRpb24gZm9yIHdob2V2ZXIg
bmVlZHMgdGhpcyBmb3IgCnRoZWlyIGJhc2Vib2FyZCwgaW5zdGVhZCBvZiBqdXN0IGhhdmluZyB0
byBhZGQgYSAmZ3Bpb19rZXlzIHsgc3RhdHVzID0gCiJva2F5IjsgfS4KCkkgZG9uJ3QgdGhpbmsg
dGhlcmUncyBhIGdvb2Qgc29sdXRpb24gaGVyZSwgc28gSSB3b3VsZCBzdWdnZXN0IHdlIGdvIAp3
aXRoIGV2ZXJ5dGhpbmcgaW4gSGFpa291J3MgZ3Bpby1rZXlzIGFzIEhlaWtvIHN1Z2dlc3RlZCB0
aGVuLCBARGFuaWVsIAppZiB5b3UgYWdyZWUgY2FuIHlvdSBzZW5kIGEgdjIgZm9yIHRoYXQ/CgpU
aGFua3MhClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
