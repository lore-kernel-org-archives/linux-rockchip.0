Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1B50FCD0DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 08:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=La+WcF4dpXP0I+Qd2vJOIyRbnZh/lmbkdxde8FQYhlc=; b=ylVJz2WRiDs0ct6IeFRd+b5XiK
	NyaAGfqxWWh7kCOKsQ6E8BpID4QF6kVu7n4cyov7YSrWmLYFA4L6Yep4wRshQOafieqN+X8OR1qm/
	l0QFI0WFgUZI1aNebyODORvfbxaPBn4OWRXOBquk+1cI2N8/m1MJDrwXNMY5mCJRzx1hQlbcqNKkU
	uuF8qdJ6KgE1/U8x/a4AfEke4mMIwRy6jaRyagJxPs0Yb/z3n/0ioc7eJB/utmaLQ1yJJRr7x2EZ3
	3wFeUedU6VrlY1jmopkuQQbsj2YZWdD8OI3uge6HnUxb4ra46F0yz3yf19xKzXiItMlyU9NT5gRhI
	8Fn189Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2may-000000084qj-3x9f;
	Wed, 18 Mar 2026 08:49:40 +0000
Received: from mail-japanwestazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c406::3] helo=OS8PR02CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mav-000000084q4-36sF;
	Wed, 18 Mar 2026 08:49:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M0EVn4XVjf5QQVjDuJ7GUO/AcG7VnuJybQluIuQ80fXyjNA/N7w9RWMB4di8YN3bkH/6JmJWwtN/vlZn/GpEZ8xgOcLu29UAHR8edF+/L0AuqPxacaN/ViOB8Tu/Zfpe/SuzINuofVFTzw0iDFNEVPmaAuuoGSvmFTQiKmv0tzDnun/BcgWk4MFWxhamGE+ud2t6+ITy5QMZ5DQEfplmY5Ftkow8P0cbCVQcGv6dV4bnvn81AZuTxTKCSRR4FVeeu+qmYqCedP9NCayVeWdntKc8wwlD4TFGMlKON06grAB6GN3fKQ84/bgBOocCzgeJhtFGXrVLvnniL6jyqoJ2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RDjDTgsbTVCpDbLwoLz8cO6AUyPWy5MGAMM1zVUO48w=;
 b=PS90ahHWEaWwiinyiFIS7dGBq1QTVnLWMG+ePRJT2UA9JRacL7gQlJUhmixDVlMAxXPzHN+rVK5J9BG1hvFtI1ct2GwqdbYziRAogLBZOkZkxVEu9TTx15s+6h5NP09ztS+F/luSeNSzXmjrfwq06P6Ylvw51FTzuLJksqafSVLBT3pYRYEWDeIyyHIvBF0xtnSfG/AVHn2E8lswj+UpaJM93/GvhK7hHS7qnPmS/MYdQCyRE+x+LncX/1wXPCypBCGqyiUORwupzRuyBP4/mECYAnV3hdkU2xMGbc77c3VwIquGCVxIXkd3CGMbnrEg2fc6FmUwGd57MVqfoSXgKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by JH0PR03MB8309.apcprd03.prod.outlook.com (2603:1096:990:42::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 08:49:25 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%4]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 08:49:25 +0000
Message-ID: <2313af34-be85-4b1b-abf8-c8a935d1defe@wesion.com>
Date: Wed, 18 Mar 2026 16:49:17 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L
 board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, naoki@radxa.com, jonas@kwiboo.se,
 chaoyi.chen@rock-chips.com, i@chainsx.cn, michael.opdenacker@rootcommit.com,
 inindev@gmail.com, quentin.schulz@cherry.de, andrew@lunn.ch,
 alchark@gmail.com, pbrobinson@gmail.com, nick@khadas.com
References: <20260317090731.600787-1-gray.huang@wesion.com>
 <20260317090731.600787-2-gray.huang@wesion.com>
 <20260318-spicy-wasp-of-prosperity-9ad730@quoll>
Content-Language: en-US
From: Gray Huang <gray.huang@wesion.com>
In-Reply-To: <20260318-spicy-wasp-of-prosperity-9ad730@quoll>
X-ClientProxiedBy: TY4PR01CA0019.jpnprd01.prod.outlook.com
 (2603:1096:405:2bf::9) To JH0PR03MB8617.apcprd03.prod.outlook.com
 (2603:1096:990:91::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JH0PR03MB8617:EE_|JH0PR03MB8309:EE_
X-MS-Office365-Filtering-Correlation-Id: b390664b-b52f-497f-2dd6-08de84cb421f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: vXJKkFQQeUVuJYIDO56+FaKXfP1l0lfCCy+R+OcwUCAQNcjhQMZnz/0Hq4etBv5ycsNsIGAj6NzREkpcew/gXwpv+NUdpp2Butt1v5iVbAf0hzFAicFLc6STA/WvpaJqvo+vf3vo/gYnUi2qIXFonZlsmjnbPB9Jkqf2+D32lZkyrzlxEQrtTcLSmfj+lO05ECD66TXUSbDbb2GdS1kNaGBsQChxUzm2mwzAaJ/DFEplgzwVN2EJDZwEiNcvZHA5M5/FOVbser/qfp7dHof3RcPzXUBoUd1L5x9NhB0uUH9jCIdw1XlgdBtwzqnyqKKSagFyVJtcqj/688c0In4K5XgYAxeVRmXOedOF3FVqF8IB2XKAO6ws8oTZwBhOqUGdZ1IfqhgL1iX+Dr1DWz0We0s7VWjeBX0kPfrXoVCUPVAHz2D7AcWERMX+/TCVHSwlHnLUgTCK9p9teGK4Zpy17eZCK7W8ZsWdIJqLng+R6EGUB36LLeVfxQhCPvrZQlkYmkXA8C9gZhOmXI/0GghkNWkVIP963a3C3EsyfqBAuE7NmtR3xbWSihaX1kYQt8xYXw0Aw5WK6KODJtIXHv6r10wP1roUc67VPFfEuR8mS0Cd+V+EuJ6sdP9hrdC4v/Bect4pHjDHgfJEu6gjRhjul3JWYEwyfM3uOc1nCxfMIhyVFE66GPIonMD/zFqFdVFk
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHp2d1ZGS1J2bFg4TzVJQjcwS2I1dGlHYlp2cmNPcVJ2OCs5TGhtVlgxb3VL?=
 =?utf-8?B?TkNuelpiTzBaTlhXNzE4ZUt1YnljenlEREd0YW5ZWEo1bm5GZVBGclRJUGpB?=
 =?utf-8?B?NFgralpJNURzaWdYMnNNdFJEaFBSTUZwa0RjNDZBWEk4cnFYZHpZY3VSUWd2?=
 =?utf-8?B?TmxZUkd5WEVkTVVOb3AyNnNxS2p5bW9zNE9IdzlqWUhiZ0w2UWlYUHdaTUdv?=
 =?utf-8?B?QTIwcWF5bU1IQytoY1N4cksyNWIrUnVjcXBUbndsRzFPY0orQkw5RHlEWnJX?=
 =?utf-8?B?WTZJb3JsWERnZGJqNFJERnVGVy9DTGRMYm9kTUlGQ21xSWVFRFNJb3Z4cnN3?=
 =?utf-8?B?NWNmcmdEdmpScDRxWTl3QU1VM2huNURJSFBnTWxNQlVYcWpBOVJ6dFpyTVBD?=
 =?utf-8?B?ZnJRckZxWmxySVh2Q1J1bFZBdmhMYmlvSUY2OFhWQXdhQkFQSW9tSG0rdjdz?=
 =?utf-8?B?TTJMaGNXNnVWUStZZ3ZneTZJNEo5Nmd6bzdEZFRnOVpmbHgvU0JZV0ZLZVJP?=
 =?utf-8?B?ay9pQ1JVNmdZOFpRVVBHNXBPRktuUXlST3BoUW9aNUZtUFNGbkR0OElTeTR1?=
 =?utf-8?B?OTYwNkROcU51cm9MNUJvU3BZRXlaa3g3V3RVeVVIQW16bU0yeEpDSDlvNFZB?=
 =?utf-8?B?TjhBVEwxN0pOOHQ0YVNRMjVObGdTSWJDMnBXRWp1V0w0UVZyMk9lYyt2MzVH?=
 =?utf-8?B?Tkl1TWViOGVLelUwa1BINjVSdUxjcHR5M2trbGFZK2Z5S3B0K0lRQ0xvRHNn?=
 =?utf-8?B?TlZkVnBtVS9pblh0c0IrM3VjRTZ2Q0FkMUhpdjBtVkJKN09TM2Q4cFp4QjdH?=
 =?utf-8?B?MmV1OGczVnQ0N0RsMjFEWEFwSGVVTG9TY0dQNFhXL3VOenVSUkw5LzJCOThR?=
 =?utf-8?B?THZEeWx4MlFkK01PU3d5azBrOFJvVUVjekNCc1BoRUFmTWhTWjJTQnpJVWR1?=
 =?utf-8?B?Q2pUUjlZaDFoZjBHT1JSWEN5VFI5WDRIY2hMQmNjOVRPRzdLSkFyOUI1bEZD?=
 =?utf-8?B?M0FHWWh0QUl2bVpkYmlqVUdYK2dQaWpGaFg0bGZDMHE0R1gxLzhXNmYvRW5m?=
 =?utf-8?B?RjBKMUNqR0U4bXpodHloUzhPYWV1MWRydWJHbnpOU3J6eDk0TE5JUjJPaTkz?=
 =?utf-8?B?K2pLNE93NldXSlJJeGszaUdSVWhnQVlRU2x3WkpIUDlVQSsxUWpRK3M5ZlM0?=
 =?utf-8?B?L2hqaFdJS1ptMUVtTzdyZ1BJZ3lLU1B0OTdDNnZ3WnNJSTlKenpUaU4rTC9p?=
 =?utf-8?B?dG5HTGgrSnpFM3JKVXllVGJESTVWdmhpdGpVakhtYUpZbWI0NFptZVZ5VzhU?=
 =?utf-8?B?Z3RaVVM3dm93WjNvT0Mwc0JJZEVybEs3dTE1OXN3a20rTXdmU3gxVmtpbXEy?=
 =?utf-8?B?SXRLSzZVK2orRTZZTGlWRmJRTVlqTWpjeXorT1JwbkpsaU5TR3VwSE1Kd3Nt?=
 =?utf-8?B?aC9xeU9iaVEvMHVxR2pHYjMrL2dDZE4rdHlXeXpaNWVFRXZmOS9ydGtITUlh?=
 =?utf-8?B?YkFEUkpFOExreG1wYmxWQWFtd2VzOGdqSndablA3bkpPZ1ZvWWVNeWhNSkFh?=
 =?utf-8?B?dC9yVE5JSitLbmM1QmtjQkl4VHRJNDV6WjNPcEFyZllQME1DUWVYdjM1VUFE?=
 =?utf-8?B?MXdDcGEzMG80RUQ3WU44bGErOCtuTWNwa3hDWWZiWS83bFVBV2dGS1c2Q3Js?=
 =?utf-8?B?b3RienR4VkxBQkUwcTh5MkJxWmxremcrenpBMGtROUhhUzdlZkpLMnRZYkQv?=
 =?utf-8?B?V2pUdm1jR3dwcjF3K29GOHM5d0ZNRnhkaW1mR3l1cjFuQU14NW9CR3h3U2Ni?=
 =?utf-8?B?K0hCdXhBVXNpNTl3SnEzUnA1VEtxSzgyeUNEUy9xWm5PWnVodEY0aFB4cGNG?=
 =?utf-8?B?Yld0VkdPd1E2M3lLTGFmbHBKVXNlVDFna1V6WEROd295dTlsTnRnRlJLSVlD?=
 =?utf-8?B?aHVENDJtRlVpSG9pSW1WZzV2cXlXUm5Hb2JMWm45cDk1UXNsOUY5a3dVSjFV?=
 =?utf-8?B?dUNMNERBYkUzT1Axd29yRE1lS0RtMHA2WnMwWGV5bkYrYy9KRFhYaHdTZ1Rx?=
 =?utf-8?B?L2ZYQmxxS29lbWNLYXkvbWVnWFFybjlDdzNvQnI0c0NQYWNUdEV4Y2NMNlkw?=
 =?utf-8?B?VEFDZTQ2eE9Ha2tFak1kQldraVJnaWpwVm1XSHZtU1Q3REUzRDZ1OVdsdVFl?=
 =?utf-8?B?bUlSL3NGbm5uTC95ODdpL2RONkEzRlQ5WEpFcEw0dW5vMVdZd3RnMFNYNEpQ?=
 =?utf-8?B?UStpMVoyeEl4TVlmMnR6OXZpeVRUUlA1S0N1cENOaHB4VEpqeUxsVGtLY1Qv?=
 =?utf-8?B?YXNMQXU4cTQ5VG9rSkdhZTdYTzVhZUdQb01SZmJVZ3ZlRS9icjZhUT09?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b390664b-b52f-497f-2dd6-08de84cb421f
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 08:49:25.6515
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DaysMk+Jkvm3yOgdESqy9TTjJX7BgjcztRSCoWMTRcjpw+ByHh7KERMr1jFHuQUEredUQL9ka/mfPJ2xb1u2tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB8309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_014937_783649_D0CBF4E3 
X-CRM114-Status: GOOD (  18.40  )
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

Ck9uIDMvMTgvMjYgMTU6NTYsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gVHVlLCBN
YXIgMTcsIDIwMjYgYXQgMDU6MDc6MzBQTSArMDgwMCwgR3JheSBIdWFuZyB3cm90ZToKPj4gVGhl
IEtoYWRhcyBFZGdlIDJMIGlzIGEgc2luZ2xlIGJvYXJkIGNvbXB1dGVyIGJhc2VkIG9uIHRoZQo+
PiBSb2NrY2hpcCBSSzM1NzYgU29DLgo+IDxmb3JtIGxldHRlcj4KPiBUaGlzIGlzIGEgZnJpZW5k
bHkgcmVtaW5kZXIgZHVyaW5nIHRoZSByZXZpZXcgcHJvY2Vzcy4KPgo+IEl0IGxvb2tzIGxpa2Ug
eW91IHJlY2VpdmVkIGEgdGFnIGFuZCBmb3Jnb3QgdG8gYWRkIGl0Lgo+Cj4gSWYgeW91IGRvIG5v
dCBrbm93IHRoZSBwcm9jZXNzLCBoZXJlIGlzIGEgc2hvcnQgZXhwbGFuYXRpb246Cj4gUGxlYXNl
IGFkZCBBY2tlZC1ieS9SZXZpZXdlZC1ieS9UZXN0ZWQtYnkgdGFncyB3aGVuIHBvc3RpbmcgbmV3
Cj4gdmVyc2lvbnMgb2YgcGF0Y2hzZXQsIHVuZGVyIG9yIGFib3ZlIHlvdXIgU2lnbmVkLW9mZi1i
eSB0YWcsIHVubGVzcwo+IHBhdGNoIGNoYW5nZWQgc2lnbmlmaWNhbnRseSAoZS5nLiBuZXcgcHJv
cGVydGllcyBhZGRlZCB0byB0aGUgRFQKPiBiaW5kaW5ncykuIFRhZyBpcyAicmVjZWl2ZWQiLCB3
aGVuIHByb3ZpZGVkIGluIGEgbWVzc2FnZSByZXBsaWVkIHRvIHlvdQo+IG9uIHRoZSBtYWlsaW5n
IGxpc3QuIFRvb2xzIGxpa2UgYjQgY2FuIGhlbHAgaGVyZS4gSG93ZXZlciwgdGhlcmUncyBubwo+
IG5lZWQgdG8gcmVwb3N0IHBhdGNoZXMgKm9ubHkqIHRvIGFkZCB0aGUgdGFncy4gVGhlIHVwc3Ry
ZWFtIG1haW50YWluZXIKPiB3aWxsIGRvIHRoYXQgZm9yIHRhZ3MgcmVjZWl2ZWQgb24gdGhlIHZl
cnNpb24gdGhleSBhcHBseS4KCk15IGFwb2xvZ2llcyBmb3IgbWlzc2luZyB0aGUgQWNrZWQtYnkg
dGFnIGluIHRoaXMgdjIgc3VibWlzc2lvbi4gSSB3aWxsIAprZWVwIHRoaXMgaW4gbWluZCBmb3Ig
ZnV0dXJlIHBhdGNoZXMuCgogwqBBcyB5b3Ugc3VnZ2VzdGVkLCBJIHdpbGwgbm90IHNlbmQgYSB2
MyBqdXN0IHRvIGFkZCB0aGlzIHRhZy4KCj4KPiBQbGVhc2UgcmVhZDoKPiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92Ni4xMi1yYzMvc291cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vz
cy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w1NzcKPgo+IElmIGEgdGFnIHdhcyBub3QgYWRkZWQg
b24gcHVycG9zZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQgd2hhdCBjaGFuZ2VkLgo+IDwvZm9ybSBs
ZXR0ZXI+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
