Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87ECBC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 16:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uQTDuJ91uRKYx2xR3ymB+R+425wJgg1VUKRMT0xLU5E=; b=4xL4ZkawKxa8t3yebWePnOPih3
	V9D0453oi98FuRYS2hVAqQyoQUdS4nfM/yohhtZVMt2F6RKD406GYXbtk6CkPZXSSfWpzlrYlq5sP
	Yq90NYRGRahgmBNCc5B8OFPwpmnV3WGW+r3Ba4zauRI6mn9UdxXk6tR9xPIDl7zHSSjAdPT7Fv/XR
	+RR9zKgHBHU4pG2pkpPQ8mB1exdLyzz4mD2bWLmGs9vrqNDNEevc/M0GtIjo05eR8QrHL+eeMuL9E
	qY12LEsb2Dh82KycVpFTLxGbB6hQMHVKbekCOFec2qdbvWGNQBlQEopDuYVLmez7mSAnDnAhjw4CD
	22JkCdOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0OnM-0000000DKH8-26bQ;
	Fri, 26 Apr 2024 16:51:32 +0000
Received: from mail-db3eur04on072a.outbound.protection.outlook.com ([2a01:111:f400:fe0c::72a] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0Omc-0000000DJdc-0waG;
	Fri, 26 Apr 2024 16:50:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eIaY3MlzYvxRteoLJeLDCQeKDodR1V5XovAdHvZXfLnY1MpRXvj03rdJFHOjK5L8NdP+ciJezI8uo5lhdG8O2xWtJNd7bP+X+Cz3WiX9Cus7MUCarhGPh86IL7QvxAiAlsCKadvPdRv7DHBPrkBodojIOsytTUbF6ZkJoTWPxgbCReH1H1yieceRllVqKBTx8NtK+WhD6j7LY3OnPxKMqAK1DQ3E6ffYUAqkLPumQ7lDNYjWgO1tGXE4C/dh/tJmAwFXvrgT3uiq21x+S4Di1QP7fMijb4PIh8qTK/PDpACgw3sg3RokDNDsOootTGRdiAcjVvX4e8tjjaJoPPwZNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+tqej12iMLgAtLjL8uwuk5pk924kUdFrETt8Sox3po=;
 b=TbcEN9HJL30P2izlpv0+bSHaoct/tDzt4GA83SSvucBjTaUpE+hJooVKxL05akn0mWnvQMYm5CwH/KYnmx0oQFgbo3tTYM7qacj4XrpPyvJw5wzACcWDjYIBq5woYEsAejAiIdRjUYTdPAaSuV2abVTZh7Wl+xckdtdsmQt7PSz7v/awjmFYnOwbJiawHObx/DQzoir0VgoEYa0jnNh6tO6Wj98fACqeAAf3RdHmf6pIargopgiKz2yJOBi6zuiQLckv0/lRKGpmk6MChtkvp2vMobOxiYHxAu2OTs/jBPiChL7CdPFJVivF6YTUrCb+jyxQ7LJTT35MqoasEJAVFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+tqej12iMLgAtLjL8uwuk5pk924kUdFrETt8Sox3po=;
 b=cObI1hfnV790bAxSqR+tUcyLrSg0d3pjShQEK8I35KlZSR8QJ2CMe7kRG+QVv6dWyIGpYkoH1wIgYtMeQ+azS33UZz8ej16AjRYNK5bFFLwNodbHb4zU9DEkcr82E0ACHrSoLUq6nf4UTIv5cDw8lH1TyZdJaGnEknjprR5Kfpp35CNoB2ADMk20yxozpIPkUjr505WT/0nKcF17xQ/W7GRwAVNW1OyChr1sS/i89O/LCdWsXKmMLNUjHuz7lTKSvOE60F15YICj73RoFBFHbU8KIG/LHHo2oTbT4MH5TaDlKJQrZV1EINOrjk0LX10yuj/QnnGmsfALea0tC95ckw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by VI0PR04MB10230.eurprd04.prod.outlook.com (2603:10a6:800:240::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Fri, 26 Apr
 2024 16:50:32 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::59d9:878d:65f0:3936%4]) with mapi id 15.20.7472.044; Fri, 26 Apr 2024
 16:50:32 +0000
From: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Date: Fri, 26 Apr 2024 18:49:38 +0200
Subject: [PATCH 7/7] arm64: dts: rockchip: add mule i2c mux (0x18) on
 rk3588-jaguar
Message-Id: <20240426-dev-mule-i2c-mux-v1-7-045a482f6ffb@theobroma-systems.com>
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-ClientProxiedBy: VI1PR08CA0261.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::34) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|VI0PR04MB10230:EE_
X-MS-Office365-Filtering-Correlation-Id: b8513748-6e6a-4b56-fde7-08dc6610fc85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmlzT1psZXN6OFgwRkRJTU5reTFUZ3FqTEJRRno3TDA3ZVpPOGV0Q2NMb0o0?=
 =?utf-8?B?bHVUU3ZuNmltM2dxRlUxa1lVaXZxM054a2ZOcFZObHNaSVNEa0xmanoxcVlF?=
 =?utf-8?B?bFJxVGFuc3pBT2x4OUFycVV2dkNZcDJ3K2pnanZqM3pnNXJwTDNPTzBzRlZv?=
 =?utf-8?B?OTdBSlBzWFlPMUVzSzRRZDlEZFhMaTZuWXRJT210eDVER1RtdG94N3lFbGlE?=
 =?utf-8?B?MkRTMUJJNjNCNk5nMjlQZVM0cHNjcUVDNnN5Wk53aXlseG5CTkxObWhZd201?=
 =?utf-8?B?RGJrSzNZMGtZc2Z4RVlqM2VxM0pCM3NmMDRZcTRET1liUEpBUkJBcGNzb1JE?=
 =?utf-8?B?Z3NrMVAzbVg1ajN6MkljQy91SXlCTjVKbVorQjJzcS9zWnhZMVNlWUUxMnZZ?=
 =?utf-8?B?dWF4cUNQZW5WZlVCL1dablBKNzk1ME5FZ1VEOFM3cHp6bndQRjh4bjkvTk1Z?=
 =?utf-8?B?TzRKdFQwRG1JbmoxaGNTN0VUVi9Tcm11eUhFY1hXa2RGYk0xUDRmTnlNcnhk?=
 =?utf-8?B?WE9INXo3K0VDN05YczZMYVhXbmN4T1JsSG9iWTZlRzFuMUpwaEFXMWc3b241?=
 =?utf-8?B?bldhUEVYcFlCaHpmeXpvaFowc3RCUGxXZWJHVHNkOWtoS1pFbVEyTjVnNjV6?=
 =?utf-8?B?YW1WWHlhOWhLZk1yQ3ZzRVFCOGlpWDIyaHlsKzBLNWFQWUFGSWZxdEpjcHBR?=
 =?utf-8?B?MzJENUVobjRlazBMOXE4Q2lvaDJ2QWxPYnNWS0tkdEVlaFMzKytXMG53ZGlx?=
 =?utf-8?B?b0VDL0k3WHhsOHNhU0xqMFpPaXFtNTkzSCtaQXJIZkwzR0tGY2lQSlJoU1I1?=
 =?utf-8?B?b25pTnVYOHpNSFpOMHBoK3Bicmc0aHl0bVJTM0prZUdqNTNMME1IL3F4VGIw?=
 =?utf-8?B?aFlBejNKYk8zak9MYWMvUkpBVXVpRlk0dEVGcFZrNTFVZ1pTclNZbG5YbzBV?=
 =?utf-8?B?UHhxSVdTTitIZUlhYVNvSStCakxSNlk3WFl2cVRwcWMvL1VHUGRlc0xPeVFL?=
 =?utf-8?B?RUFMR1BvK2RJM2VCL01FQ2NodWJlaXcwbjIyclVBSTZZR2MrMUNCdVFBb3hv?=
 =?utf-8?B?T2hYa09SRGc0bnBvdERoclVXTGlHSEdmZFhUZjg1VXFiZ1RwNFRlak5Mblo1?=
 =?utf-8?B?NFkzeXFRVTMxdjcrWHdPdFlRWGhja1ZTV3FBczAxeHpMN1dudWgrVG43VGdk?=
 =?utf-8?B?QjFmdjN0bWRJN3E3d3hsTkczSmVqb1BLOEpMT3JQc3RPYnBwK1NBSDZVWUFZ?=
 =?utf-8?B?WFFqNEtuOG9BNVFwdGxIZHhweGlKcXJBb1B1U3NkSHVqc1ZoYnNwY2lrSUFQ?=
 =?utf-8?B?WjZ6aWM2eEludEp5UE82dUFBNlU1MlZ5TkZQVTdwZVRNbjF2L3pIZGF6Mjdn?=
 =?utf-8?B?aHFYTWFGMEpFaEFtdGJBNnIzNXRMakNhbWs5KzlsbGlSdkt6eFA4dEVSdFhm?=
 =?utf-8?B?UzlwNVFPeEpSS1NkNVRYb0VDMVNsTEEzSjFabWc1K3RIUEZ5SGxjMXdJNThj?=
 =?utf-8?B?UjNwZ1VPZnh0Tmg4dXRXeEpTU1psaWpLZnk2eVU0REhyZkZhcTBvclgvamIz?=
 =?utf-8?B?MFhkSzhrMVJNdmRzalBNWDdsT2ZCZ1o5QTFoKy91blNJcEw2SW54R3V6Vmtr?=
 =?utf-8?B?eXg2RWpZLzVmb0lReDJjNW1hcnY2SjlRMDBucDVKMzh5aW1yNzMyRGp0aWpY?=
 =?utf-8?B?M1N5bS8ydjhPaUEwVUhuSHl3TTdKSjRyWDVzbVhkUUFhYXZJU1o0c0o3Rmts?=
 =?utf-8?B?L2hIaWl6TTR0TmRTUkFuUjR3TG4xRGFrQ3BmVGtPcVR0OVRobWFXc3BnZUN1?=
 =?utf-8?B?MFEvU0JqVVI4eHdKRGh5dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(7416005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHBrMWV4UkpsY1Y2ZHI5cHJncXRxSzMyazljRkFmQ3Njb2hsUEtkclpYSjFO?=
 =?utf-8?B?OFdqOE56RVVsak1ramtwVGpRWnJLYlRaajR0bXhlN0gyYW43ZElmcTZkNmE5?=
 =?utf-8?B?L2hjQVd0SG9CVWFWVG9oUU1OMnNNdFUyNGgxUDJVOHpSRVRkakRlVnVKbnk2?=
 =?utf-8?B?aUNLWUNzbUY2WGZrS3o4cmEyVlpPWFEvYy9CZ1R5WEFoOWdmOHJYNHBnbXJR?=
 =?utf-8?B?YzNmZ1NxS3RxNzV5azFZc3Z2Q1RibE10a0lRNmJEQkZ3ekVreW83d1NTZno4?=
 =?utf-8?B?WTlKcVJweW53Tll0ZElhc2VIRFp3cG05Rmk1S2paQTlaNG55WU8rSEpISUpM?=
 =?utf-8?B?cnkwQVB1aHdlRFdPWFJ6VGtDMGt4MVVuamdtK3RlbzBINUhFWmpUOEJsTGZj?=
 =?utf-8?B?YmtZeWVsMkIweTRwenpTYUgwM2NKbGM4anVIMmdINmFiTGJKYkk0dHlyRnBW?=
 =?utf-8?B?Ly91bkVuQjZ6UC9zdnRhZ1hpSHZZdEtvQXFTTWkySW9LUGxrNGdCamV5MkU5?=
 =?utf-8?B?bVRkSUp1Z1VHSEZzak5Qelc2eWdEV0FDaEsvT2ludnpma3cyOFpBdXlRS2tI?=
 =?utf-8?B?dENKZURYVk1kcmVNTWNQeWVnZ0VDWWo5emVvYjZGQ1luaUM5d2h6cEZTbFlR?=
 =?utf-8?B?a3QxV3JCYUI5RHNnajB3eUt5YzdPdjJYQ1p0cm9ldVYwZkNCMXdsbzBYVFNn?=
 =?utf-8?B?NmlnS3h4ci9xU1MvSjJvczMwb0ZhMXNNVXBzbnVncklsaDBsNVhHcU5wNUFX?=
 =?utf-8?B?QlFJVVBWUnU0N2FxWjJURU5PS0ZHZVVrM1lnOUdrOWdNOUVYNkJCRjBJMnRs?=
 =?utf-8?B?UXVjRnNFSUd3YTYvVG1ndkFGTVczbzdreWE0U0g1WGFQN0l4MG9Qb0drZzVZ?=
 =?utf-8?B?VXV2bXRyTURxdU9UNFp0amdpdThuZ0NTTW5uMFNqeHhZaW1haEZnTERqRHR4?=
 =?utf-8?B?QTk4aE1IQzRnaDNqRElraHB6eTlSYUI4NXBwbysyY2xiM3A0MENLOVNjZ281?=
 =?utf-8?B?Vy9ObXh1cFN1U3l0RVBaMnZyWEVmMXZnYmtET0xWVThxU0VIOTVZdmF3TnY5?=
 =?utf-8?B?YWxmbHI5SkllOEZuamNyUE43N3lzK1gvMG4wUjJ3bjRzU0lMK2pEdmJhQi9Z?=
 =?utf-8?B?OWpCNmtVek1MNzJxYVFXQ2xpZUpzQWFrcVh2My9mdklCS0ZtQlMvMTVmOTlu?=
 =?utf-8?B?ZDV0RFM5aCtIY3daWmdIL1JEa0NnNFl5YjBQS2dSZm5WSWRiQi9qSHhqMFVO?=
 =?utf-8?B?Syt1dlUwclZmbzdrSnp5bnB4YXV0RkZHQ0UyRUN1R0NpMllDcUdoUTFVUzJO?=
 =?utf-8?B?eTJJSGJFcnk4d3cwa25iRjZncUU2LzFjTG5oV2p1MGE0ZVhKT3FrRWhmTGlv?=
 =?utf-8?B?bUxRNm9ob2VaNit5c0lhOG5vMGJCd04vZ1RQblFhMmdiMHJFN25tZFdMbWR4?=
 =?utf-8?B?ZFFhVW5yUzJMMVFsZ2k3TTBUY2ttUHJNOWR4OHI4RFV3M3ZPRW9jMTFtWnB3?=
 =?utf-8?B?RWtJc3V2d09SVTN0SEhIc3NGdGpzTVRHUmJIcysrZENucUdhcm1DdTdGOVMx?=
 =?utf-8?B?UFpDNEZjdXJsdFptcldwOU1Jd2ZWTlV5NGNJOE0xM0NyQngvUzlFQUdrM3Ny?=
 =?utf-8?B?ekFrOGduWkNYRGZya05HVVAyUGtRN2ovQTJyTzdjbnJiNnRLcWx5UFdlU1h5?=
 =?utf-8?B?TUo1aVRvQmdjWGpEQkVvUkJaSUlpY0dudXpCbmFXZVY4QUdwd2F0U0FwWUkz?=
 =?utf-8?B?K1NialVFU01sUkpWeDVEZkxxUXRLOGRzMG05aE5OVVB5QXVuNmFjcHh5Qk53?=
 =?utf-8?B?ajIzRG9SUlJrd3p6Q2ZCVmpzL2swVHhhbWlGRXVGTzJOeVFSSmVQVVBKMWMv?=
 =?utf-8?B?UGpQTnpHb1dGbmltYWIxOVJVSFE4NTF5WkZXTnpHNlFyMUNCQmpMdFN2U2xv?=
 =?utf-8?B?NDFleHBUbEFpdkxUK3UrNmRZTDFPeEpVSERwSVJRc1hhYmM1NW9iZHN1Mmlw?=
 =?utf-8?B?aXloOEtQN3N0clBFaWVuYXYwYzNsL05tVkVVUFhvSDJKM3N1UGx3TC9VZ0o2?=
 =?utf-8?B?cG0vM0R5NzBsQ3FBK3dGTys1eTkySXUveDByVlZpWkhxTnVrejgzemZUS1k5?=
 =?utf-8?B?MElBQ2VDZFZ6M2NFZDJMMlJDc24yU3ZaNEI3TlFxMzJidlY3WkZYWmhYRVVC?=
 =?utf-8?Q?zkgbcHf5F2DwRH0KAYvER38=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8513748-6e6a-4b56-fde7-08dc6610fc85
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2024 16:50:32.2888
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VlGWb623iCzuCMvWkEUcYLCz6jqnHsT2gCKroLsIHShQHHFyFVEsbawc2z6edXDIl0ZK1TLYRg6B7hdDrYC9amPphhDwhLSp/IuflN41/IXMJCaZ5Hcy0LppO0Dyfdvr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_095046_507938_F58EDD2E 
X-CRM114-Status: GOOD (  10.08  )
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

Mule emulates an i2c mux (address 0x18). The amc6821 is exposed behind
this bus.

Add the mux node and amc6821 as a default device.

Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 39d65002add1..14f1322c162f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -32,6 +32,7 @@ button-bios-disable {
 
 	aliases {
 		ethernet0 = &gmac0;
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		rtc0 = &rtc_twi;
@@ -249,9 +250,23 @@ &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	status = "okay";
 
-	fan@18 {
-		compatible = "ti,amc6821";
+	i2c-mux@18 {
+		compatible = "tsd,mule-i2c-mux";
 		reg = <0x18>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c10: i2c@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			fan: fan@18 {
+				compatible = "ti,amc6821";
+				reg = <0x18>;
+				#cooling-cells = <2>;
+			};
+		};
 	};
 
 	vdd_npu_s0: regulator@42 {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
