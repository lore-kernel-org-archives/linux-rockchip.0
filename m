Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED29ACD98E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 16:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MGiOOdbScGztMqqhdMvlSHi0+9y6xEFtPjNNyHMRELo=; b=peoz2/huWV4umu3Ipkfut8ZdnL
	eyNx8CvQ7Z1NQgTCA9+Eb5h40BEYrv1D3OrT5vSxMUacAfGhvQjfsYtBZlS+zFAV6bN+WiGb2cSUq
	TXaByhgeF/07XxGzJAzAZSbXUYsEa9pkKynu2WIn7WNAe7hPbelmZJYRriGZ0r7H9jXdKVCMqkxgW
	O/dEdfHy6+RA2Q+JqOQ4VeucU1eEoVRNTcUdtZlvB1e6luVe3vEcn8ZhdipZ3ySF7YKqWz941TGGI
	Jcn87MNRBgri/X3w6H16HucHrbEoGwVlb5QDrcD8bnohkkrl7AUgA3lxwe5Z2Z2bHcRK0Ebx6jeWG
	5aS74RpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZt0B-000000002D5-3cAh;
	Wed, 17 Jun 2026 16:20:31 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZt09-000000002C0-0Gzo;
	Wed, 17 Jun 2026 16:20:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SPg9n9/Nnad71QB3OeP4KW/C5kBF0dU5TVSIjwMu3XTJz3Tqwx+yuNqMt0ptk7l40KrpVy8h/GPghSqrqJ5mN+Ird4KbhXlY6+hcQBcKnYjT2LSPiqIolFRVblDpZML94UcXT+WKI6U0GK8LVM1e1rpigSm5B4v0Mk7ooSNOA+ax7r9v2j+DJX4F4Z6l+9qZeMDGhxR5NiDwLlW/ygB8dYEHMuX9/23ziffRgIEmrcnwkzFxbOelvNStD0EphPINT0IWB5/VtiK1Bw+mnS52E0pOilpdQF+abskXNe+akKwL3iI4AKlI6P7d8HzYtDX7MtFb5KoiDbizaYkV9yZoPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oncd5AKdpggnAPxxh4VFHdLCR4iA8DGRcyLR55yh0uA=;
 b=zI/JoAbuRm6ZRs9CV08le7cnU9VZdabOPdBDSFBqULJlYcwYOFUEoSiedCuyHAVOPv+MAB99PHJ5HUWtJVT455UEtIvFPsYi9ZPVSWtprWWeQ1IEb0Uf1nP+2XG8Xg33HV5D1/V9X46Xy0uB3zYgL2PF+GM6rDXJ4RxdjxCvNFOobg1Tl+KlTCjstxf+Qp9m85tv/15444swLsKywyelxadlXM/qJm3HhEPAH4DolklZ1gpt7b8a8laGzAKT3Q4FAqgN2pPOQJO8flMjQCS8Hrzy/H+6gDqUM1ETBPe0wYs7WxCs5gksO0PZ9i45tZ93gFy9riTu0/XGVHG5jQ19Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oncd5AKdpggnAPxxh4VFHdLCR4iA8DGRcyLR55yh0uA=;
 b=ah9OUxbvTxwLRRpbUEo1SKuhnKzm7zxXDAoj7QYcIMLmq53pMMRl3goiDleP1f8m7dDV1C3haimrbrojX0kfMKHgS4ITOBIX/Zxl2aPHJbkHOTi3a4e0VDoBrfGyLvxzIMpXOiWY+Dzq5DwAOaZzc4l0BYaAPte29iWyce+7euc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16) by GV2PR08MB8320.eurprd08.prod.outlook.com
 (2603:10a6:150:b5::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 16:20:21 +0000
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6]) by GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6%5]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 16:20:21 +0000
Message-ID: <c34d4167-1a33-4e20-820c-735811b6a966@wolfvision.net>
Date: Wed, 17 Jun 2026 18:20:19 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260617-feature-mipi-csi-dphy-4k60-v1-0-4611ff00b0ff@wolfvision.net>
 <20260617-feature-mipi-csi-dphy-4k60-v1-2-4611ff00b0ff@wolfvision.net>
 <20260617-deviate-sulk-c57104ef939f@spud>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20260617-deviate-sulk-c57104ef939f@spud>
X-ClientProxiedBy: VI4PEPF0000014A.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::886) To GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR08MB11763:EE_|GV2PR08MB8320:EE_
X-MS-Office365-Filtering-Correlation-Id: b0b61aa0-936f-46e5-1114-08decc8c53f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|23010399003|376014|3023799007|18002099003|22082099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: E8uB0CnAvryPFcmc9Gbin3WsfA15MFloDZKDszVWrzsD/LVkxIa8BvXwhtUvJSeYWMUbRGGcZ0RFr+m2Xqh+GCtJBv2ivhb+2E3T4KjJrvosinrEVTvIctUeQHYfMnfjjdy9TMVk/4SBYsfgWL5QCH/plY3idjAP1CEBlflBj91DnUSvefgKL2ip6XxM4Z0Bb9D/zwAvD0qtgAs8NMkA+S7o/Iv99Luon52BBYYPVqNQDb93+l/Qc9OwuhehYfeV2PNXzywbE5Xf4/WafrZH579/Gl+yy50+rO7arhk1Q/f8TMsYhvuh0sIBCkMhNTLq/sOzmwiCdsPhTlpOAIZL9G9e22DFlehGsg4i9NmzYZPHrmhdhmwz3gRLpMNIJEjX1koWZ/y5AbUcSOV/sXBfSK9INeQxVvm4o9QQa10o6xgx3IA7rJZbovEwvb2NXK32XSq9Opd6siAw/BPU/hVmDxjHZ34/sai2iPsgYpBYLNrKB406fH5cEMotiyvqH4dtYby0kubgXCtoomfoMQOOZVmar+kPBYloMEbnG+XYo1yYKPCEY2YUAWT0PIRd7yIjRo/Y67pSewQP7oOoOel00SM6zp9Fd3TGz8Qd0U+khNPDGiTfe6LHkxNqEuAacRK/2wAGP5i1v2e1FiUZtMrqi0HbGBiM9BbaiS+jcXupEFzwOzb2IQlfCevRtoClIU4q
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR08MB11763.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(23010399003)(376014)(3023799007)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0Z1VExuKzlJb2dTam1nVERpTXlWQVZlTnl3NzQwL01kTlJhcmQ3eFhsV0FW?=
 =?utf-8?B?bVI0MCt6MDdlazU2WWVqZXRxWm1VRC82b2U1R1luaVJxQjhMVkhZU01ZcENj?=
 =?utf-8?B?djhaZXg1blhQOHgyOWJwVS8yZjF5SDAvM0had3N6aFl0aS9NMWNmbnRZUXNw?=
 =?utf-8?B?QmFMQ3pnVkwvWmRXK3NBS3MwYUF5UUUvNXJIQWdmUlNyZ1NNZVBkaThBQ01L?=
 =?utf-8?B?aU9jS0U0c1doTjIyNU9rT0dwNFRTazlVRHl1NWdjMUtsMVo4MFpnS3ZGQmpl?=
 =?utf-8?B?bituR1JXelNPWE9Eb3k5YU15dkhJNU9VL204VVQ5bkREL0NnUE90VGYzaDlZ?=
 =?utf-8?B?VjFEZk1kQ1lqRVV0cUY0eEczbTh1YmE3Z0hvakZDdTIzNkRlVyszUXJ0UHlL?=
 =?utf-8?B?T0ludGlucDllL21sVDFhNEtDMDB4MnlTWDVuWGZGSEo1cStPN3hnT3FQbUJM?=
 =?utf-8?B?bXZ6VjhYTjJPOVluYzBoZHNYUkE3VVZvYnk2UkV3dCtZR1lVdlgyZ2JKNHlW?=
 =?utf-8?B?MU1xUXI2SmFZd0pXc1dWQjIxeEFvK0JuRTVud21tcWI3dk9adW5IRjdVdExo?=
 =?utf-8?B?OHAvS2tIeGVxMndJbElxR3dFNmQwekRnVVkrbC93dFRPdWZySHZBam5VY0Nt?=
 =?utf-8?B?NXljZUtYZzNSdWxMNDJGYUJudEYrNFgvN3NLRXM1S2RGNFJ1WXBmZVB1Z25o?=
 =?utf-8?B?OUxPWi9EUkVXeXJGS0k4cExJZDNuVTZVYnIxS29pM08zM2hFZTJ2Yy9ySmg0?=
 =?utf-8?B?ZVQ0ZzdBSXY1d3BRekJYWTdBUTlvZlkxVnNLdnF2TVowS1REemk0ZVdwU1Nh?=
 =?utf-8?B?Z2JGRU5OSDRNSlp4YUp4VWtaN3ZCRXNMUFFzUGVzSTJRalA0RWw4TTc2Y3Ns?=
 =?utf-8?B?Vzg1UDZGWEwrVzlSVVdPR0ppcmtBQUJOMmNDQ2tCeVBldkFZUVUrcSs3RDZX?=
 =?utf-8?B?d09tV2tTMlU3aWdNaXhCQ1N5N3ZPWVEyemgrMGplQXdEYnZodEtTcEl1RXpH?=
 =?utf-8?B?enh2Q3F4MkdjYXQxL1ZFVytmaS9SVzdsVitpdVpVeVIzRHQ1RXVIVzlja0NB?=
 =?utf-8?B?aWpxdkRERjlSTVhscnJZY0VpaFRWRHYwaE9RS3B6c0JYSkpkMUFxUXZJSWZY?=
 =?utf-8?B?ZlpYVmtjZWNNc1ZRVDVOREQyQzNzeDNYTmYxOVZ1eENKa2YrQllYdENHMDl0?=
 =?utf-8?B?Z3NmTUpjRk5RMzY3VHNGOXFnbktueU5VeVo5RTlGZklVenM5MWRvRW1EZWxT?=
 =?utf-8?B?NVo2WURGRk5BNzNpY2pjT2xlWFd0bUFOL0gzNEFVN0kzK2h6b2NxSGU0MGJq?=
 =?utf-8?B?alU3RWx2T1ZaNmR1amJvd1FtcE1IUWc0YnNuY2p3TkJ3cG5PMDZJWUlNS2Rx?=
 =?utf-8?B?TjQxM0pyc2JBbzJTYTN6QVpCOWtYV2c2VTJoWE5pKzA2SG1LaWNWeDdYTUhB?=
 =?utf-8?B?T1E5QmlJMEthOGw1UlUzaHVJdi8velNsbElFbkJ2WnBzU3hJTDdqNjB3SnRZ?=
 =?utf-8?B?ZmFWY2YvWW11Vm9MNmI3WWVNWldlV2ZWcXNQc0xJWGFEWTRVSWgvb3lmcnRx?=
 =?utf-8?B?cjZ2aldSRzlwTVk0ZTFMSnkxMHlyYjJjQjJ2QVdFSzVlQjdJcU5Zb0xyc0Rs?=
 =?utf-8?B?Vi8xRjA3VFhkVForWFhOeUtZdW1rTXVHOEw2Y3FWOStab3ZHSUd5Zy9kdkRv?=
 =?utf-8?B?YWh0L1Ayc3FPVWc0eFoyelBmdmExaVgvamxLVDVhLzVhczE0RmQ4WVhITDlN?=
 =?utf-8?B?eGFydStXWXU4TmtNWjIwNmhNczEzMG51d3FybWlsSnkyRkhkUGhlaFZPZXVa?=
 =?utf-8?B?UWNHRHIyYjV2UDR0Y2N0OG5VaVRqL2xVajEwWHJaWFV0RCtJY24vSG81cHU1?=
 =?utf-8?B?dTlZMitFSnY5dTN6MnVTeHdsTmJ4QWNPcVFPbXJxcjFiMXMrTmNad0VpaFh6?=
 =?utf-8?B?RFN6eEVlOU5FWjk0YmxKNXZRQUE3TE5mY05va0NmQ0Zrak9KdkE0bHZqWWdT?=
 =?utf-8?B?NEZKdFZzbThqVjQxR2VTclhDTVJmSVlDU20vb2N0bkkrb0ozR09rY0NBL21w?=
 =?utf-8?B?enRZTDVwMUFyMEdzZlJoY3p2WXVJU0pKSldPL3VwaEovYVNKczNuR0FwWmcx?=
 =?utf-8?B?VkUwZHdJMVRYNkRhTHdFaHBId0JuMmFmQ1hmVk9zMmRoalYyZ2N2Yy95U1VV?=
 =?utf-8?B?ZmFzb0FyWHFUN0V6TEtNTDU0NUlEY01lUjBNelNHRlk0KzZVNjI5b2NzL005?=
 =?utf-8?B?Z1liS2lsZDJhaEJUKzI1ZStVa3h0Q3NGdDA5Sm42LzA5aGlMNW1VdXd0bVBN?=
 =?utf-8?B?RkRZTjF3THVMc1d3VmpjaWtGYnpGcWh4OTB5c01hanVJdjA3Ky9FcVBreFNm?=
 =?utf-8?Q?vKsywOsLmBP0kk1c=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b61aa0-936f-46e5-1114-08decc8c53f7
X-MS-Exchange-CrossTenant-AuthSource: GVXPR08MB11763.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 16:20:21.1308
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0C4z8DKvttRHN86D7f3+rLSpykFormrNeMLkaKZPK2032WIMZjB447tYBIuHACU/5kGvK7X3ZXxLaZ78xG5R1mJ8fPfg2xnQR5MigUtVVDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8320
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_092029_117046_80D19172 
X-CRM114-Status: GOOD (  15.37  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQ29ub3IsCgpBbSAxNy4wNi4yMDI2IHVtIDE3OjUxIHNjaHJpZWIgQ29ub3IgRG9vbGV5Ogo+
IE9uIFdlZCwgSnVuIDE3LCAyMDI2IGF0IDAyOjIzOjE0UE0gKzAyMDAsIEdlcmFsZCBMb2Fja2Vy
IHdyb3RlOgo+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIG9wdGlvbmFsIHJvY2tjaGlwLGNsay1sYW5l
LXBoYXNlIGRldmljZSB0cmVlIHByb3BlcnR5Cj4+IHRvIGFsbG93IGJvYXJkLXNwZWNpZmljIHR1
bmluZyBvZiB0aGUgY2xvY2sgbGFuZSBzYW1wbGluZyBwaGFzZSBmb3IKPj4gaW1wcm92ZWQgc2ln
bmFsIGludGVncml0eSBhY3Jvc3Mgc3VwcG9ydGVkIGRhdGEgcmF0ZXMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEdlcmFsZCBMb2Fja2VyIDxnZXJhbGQubG9hY2tlckB3b2xmdmlzaW9uLm5ldD4KPj4g
LS0tCj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlu
bm8tY3NpLWRwaHkueWFtbCB8IDcgKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNzaS1kcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRwaHkueWFtbAo+PiBpbmRleCAw
Mzk1MGIzY2FkMDhjLi4wZDgyNGQxNTExYmMwIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRwaHkueWFtbAo+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8t
Y3NpLWRwaHkueWFtbAo+PiBAQCAtNTYsNiArNTYsMTMgQEAgcHJvcGVydGllczoKPj4gICAgICBk
ZXNjcmlwdGlvbjoKPj4gICAgICAgIFNvbWUgYWRkaXRpb25hbCBwaHkgc2V0dGluZ3MgYXJlIGFj
Y2VzcyB0aHJvdWdoIEdSRiByZWdzLgo+PiAgCj4+ICsgIHJvY2tjaGlwLGNsay1sYW5lLXBoYXNl
Ogo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+
PiArICAgIG1pbmltdW06IDAKPj4gKyAgICBtYXhpbXVtOiA3Cj4+ICsgICAgZGVzY3JpcHRpb246
Cj4+ICsgICAgICBDbG9jayBsYW5lIHNhbXBsaW5nIHBoYXNlIGluIDQwIHBzIHN0ZXBzLiBUaGUg
aGFyZHdhcmUgZGVmYXVsdCBpcyAzLgo+IAo+IENhbiB0aGlzIGluc3RlYWQgYmVjb21lIHJvY2tj
aGlwLGNsay1sYW5lLXBoYXNlLXBzIGFuZCBiZSBsaXN0ZWQgaW4gdGhlCj4gYWN0dWFsIHVuaXQ/
Cj4gV2l0aCB0aGUgLXBzIHN1ZmZpeCwgeW91IGNhbiB0aGVuIGRyb3AgdGhlICRyZWYuCj4gVGhl
IGRlZmF1bHQgc2hvdWxkIGJlIGxpc3RlZCBhcyAiZGVmYXVsdDogMyIgKG9yIGRlZmF1bHQ6IDEy
MCkKPiAKPiBwdy1ib3Q6IGNoYW5nZXMtcmVxdWVzdGVkCj4gCgpUaGFua3MgZm9yIHRoZSBzdWdn
ZXN0aW9uLgoKVGhlIHBoYXNlIHNldHRpbmcgaXMgYSBoYXJkd2FyZSB0YXAgaW5kZXggKDDigJM3
KSBzZWxlY3RpbmcgYSBkZWxheSBsaW5lCnBvc2l0aW9uLiBUaGUgZGF0YXNoZWV0IG1lbnRpb25z
IOKAnGFib3V0IDQwIHBz4oCdIHBlciBzdGVwLCBidXQgdGhpcyBpcyBub3QKYSBjYWxpYnJhdGVk
IG9yIGd1YXJhbnRlZWQgdmFsdWUgYW5kIG1heSB2YXJ5IHdpdGggUFZULgoKQmVjYXVzZSBvZiB0
aGF0LCBJ4oCZZCBwcmVmZXIgdG8ga2VlcCB0aGUgcHJvcGVydHkgYXMgYW4gaW5kZXggYW5kCmRv
Y3VtZW50IHRoZSBhcHByb3hpbWF0ZSBkZWxheSBpbiB0aGUgZGVzY3JpcHRpb246CgpDbG9jayBs
YW5lIHNhbXBsaW5nIHBoYXNlIHNlbGVjdGlvbiAoaGFyZHdhcmUgdGFwIGluZGV4IDDigJM3KS4g
RWFjaCBzdGVwCmNvcnJlc3BvbmRzIHRvIGFuIGFwcHJveGltYXRlbHkgNDAgcHMgZGVsYXkgYXMg
ZGVzY3JpYmVkIGluIHRoZSBoYXJkd2FyZQpzcGVjaWZpY2F0aW9uLgoKVGhpcyBtYXRjaGVzIHRo
ZSBoYXJkd2FyZSBtb2RlbCBtb3JlIGNsb3NlbHkuIEhhcHB5IHRvIGFkanVzdCBpZiBuZWVkZWQu
Cgo+PiArCj4+ICByZXF1aXJlZDoKPj4gICAgLSBjb21wYXRpYmxlCj4+ICAgIC0gcmVnCj4+Cj4+
IC0tIAo+PiAyLjM0LjEKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
