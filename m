Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F707FF8864
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 06:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n79aLkZeO4wdssa2BXy/3+V2fkb5AZ6zdR3YskHVtXU=; b=mrdXY/1Cs6XMolYt/BvfoAevKJ
	H4LlvMsEBR372s9PJxmiXq2VIMFOSdQG0ju5+xG/dfFbn6kKnbIuUsJEqwjR9f4ZBM3Z/2MA1DGkn
	c7bnkp8l42suUd4Uqcj6YmN4UHB4AtSDLMf93nJ+b2Q47uxyY0k036HK5Aogde8+5SqE0K/mNjTAx
	WlOSIjQXq1iOIWJEMVcExdnv8/vLUPaa8JHWeT0Ydy2M448ERuwKcdijHzpqHtXBvS/+6eOeYJcgQ
	ylAzYNR/AYRk2bACTvBc4gpVvfv6aHxbj2PX53aqY4ifQ9UInJDiR8F+zALLvoJ0gNB11FQtxmrjA
	oG3H8niQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHyjp-000000033k5-22g7;
	Wed, 29 Apr 2026 06:49:37 +0000
Received: from mail-japaneastazon11022121.outbound.protection.outlook.com ([52.101.126.121] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHyjn-000000033jY-1DQ5;
	Wed, 29 Apr 2026 06:49:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGUuaaBuqyd5fqA7YbELJb1KNclSK0iPcjNG1o080aPTb7QaFDjIKksr9rszE940SBXAnLQxz0Acp3f+8OwlsMdWyMWxTz12NbaaLEPwyy2GFnriY0c/jGzpOWij1D24QxeBZ7Gurtizn1H/XZAVpGS7hG9q24iS/GsOOXCW3NwcKzonccGr3mZlXKv+4bYhHMhTfDgFF66fGAcYPK0RkofddWn4jPr7wRWvlUkIQcaMetfvGaRAFRAmNgwKJUAjmOzmqT9PUNzgTMdiSa9HvAL/2r9q6cjyHiUc5xIG2f0jDXfErXNpPHcmWPQADszWbpYWkiE7KvXzEdCuPm8mkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdPA0mCuir88A0hSvUIoQsQfdb0RD+VwyBdVFh/a/qI=;
 b=c99a0Kzyv6G2oYNT8mV87IYxyyPFz5W6Lo+zuFWG0Cb221CKCGj349x+SaOezQzojpETi1G1RHMDXxiIWnw7nNhkxG2mWHSCQcLykYzW4AdiskOVel0RiHCZiiAkgpuzxsVXb5Y9ruxwbpHSYljkOqDhgY3r5DLVnI8y9KpsJj19/BWY0vGKdRlhAAIcJcI4w202W6WI9JIp8Rk79rHf9Q/Wo9WarAmcUci9qAtSVwbnJaTh+nSvQ4SZdZxtIW+3ecMpsmZhgKpIKd2w7y3oipCwuv/43tPM2TUaVMqWmVNf2GnNTQkI4spz4JNuQb0xR+P82tIgaoLsn34Pf/iYxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com (2603:1096:990:91::14)
 by TYSPR03MB9618.apcprd03.prod.outlook.com (2603:1096:405:85::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Wed, 29 Apr
 2026 06:49:31 +0000
Received: from JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7]) by JH0PR03MB8617.apcprd03.prod.outlook.com
 ([fe80::28d:6503:f51c:11b7%5]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 06:49:30 +0000
Message-ID: <ec07016c-832e-408c-a6ac-77e22c95c214@wesion.com>
Date: Wed, 29 Apr 2026 14:49:26 +0800
User-Agent: Mozilla Thunderbird
Subject: [PATCH 5/6] arm64: dts: rockchip: Enable USB for Khadas Edge 2L
To: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nick@khadas.com
References: <20260325054614.1497147-1-gray.huang@wesion.com>
 <20260325054614.1497147-6-gray.huang@wesion.com> <5673086.MHq7AAxBmi@phil>
Content-Language: en-US
From: Gray Huang <gray.huang@wesion.com>
In-Reply-To: <5673086.MHq7AAxBmi@phil>
X-ClientProxiedBy: TPYP295CA0018.TWNP295.PROD.OUTLOOK.COM
 (2603:1096:7d0:a::19) To JH0PR03MB8617.apcprd03.prod.outlook.com
 (2603:1096:990:91::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JH0PR03MB8617:EE_|TYSPR03MB9618:EE_
X-MS-Office365-Filtering-Correlation-Id: c3fee1d3-5b87-4ecf-10d1-08dea5bb7713
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: OVUqJSyBvX+XNftlBNOYdWpmMSRp2TucrGs5j/Qg3iq/5iB5un9kbnzfB+gupWhkLMhSRnJF/H5KWkJELvZJ3R90cr5tFtY9PbGWcGKs8JElcPJqGFVd1QVdRInElouT7Esq2n15PAWIsAdWgI0EwkZUUhkfyt9rh2yJeXr7YGygPjhZEW5yf6uB07hFmNqJPEl+drnsfwICR9nHbzBMOV94HJIWFu5YTZytuWaX0U+veFN9LvgzIVvv8HV7AeWCzWtLvzaBG2HzViT8wOiExCoxV5nQmHZHh90b4OdnJGs7xCZaS5PLDBkUMufJjNSHooovkgDBMZ5x4VqTkhoXxteom8k6HhXYdWyz3w1S8NSxy56GXE5RrMrg8p9mQTlMksjaTltjr/xypqeHJanU1fqkVRdW890bTbLyMpiihEC9DHcEjbD2zgrsXdFGf5KS/g2HJtdYTWviBzjxIegdZaqO6DR7ObLvDu/iF5RWoUay/0iEW2FqkzzvGBZbg5WZZ2r3zdq+jBdmuFFfhZJgubkAKROOeu7y9CU2eKfMkBREe1bL7U6PgBLuQmfJds+l3D2+OJR2uzBemF135k1WsD9SYqMpZRPZsOYAzfIhCoQ510A5FHo90TJIdjKw1Mgf79SK6QW+rtGRFAuaxMuADChihB0S1G6/xyxkS4X9E3X7bPfhMz3+6QK26gt3QCuE4VW2J/m4Pm+eDARynJOioIg9XwdHm+0RMeXISwOpalg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0PR03MB8617.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2Z0TVNFd2UwSktaZWp2aXltS1hhM0FZeVBhM3EwTWEyTU9EY2dlWHV0b0ta?=
 =?utf-8?B?SURFTVM4dFBwdkV6Tk9XeHgycjBOWUFlWmw2VEdzVUk4amRVcmpTTW14TzN5?=
 =?utf-8?B?cXJzWXhUaWNSYmc5NDljbzM0RXUzcm9RRFJPMGROQTc1TnBYMndFNFM2M3Fs?=
 =?utf-8?B?SStWSVc1YUpERWV3NUw4emlvRExSVXRJUXA1WWlIb0ZPYnRhRnRVOWFRU3RJ?=
 =?utf-8?B?c3Aray8xVExBZExsYVRabUpuRnhOQS9aMVpGMHZFanU1L05TMzdqWFd5eTl1?=
 =?utf-8?B?VnRBbkVzT0V1YzZkaFV1T25LczA2bW9BN1JwYVJXNDlyRlJmNmY5bGFhbFJT?=
 =?utf-8?B?anpySythb1Zja0tmVW1kUW9uc2V5ckZkNVprdkp2MElVa3J2eHY5cTVsbmNv?=
 =?utf-8?B?RkJtUzBXRzd3UDUzT0dneUxRVS9QbHZ0blArVG9VQk53dWRwQUxvTkR1Umta?=
 =?utf-8?B?Tk1OZS9SZXRlckJHRFZJbEVJT0hETDd0K0FsSEI3TERrbUprYmYrMk5iVCta?=
 =?utf-8?B?c1k5cXdFQndteXFYMXZUZEtHVSt5UFNsK01wWGU5blE2Q0JPdmVDZmNHaDBn?=
 =?utf-8?B?UmhMT1d3Mk4zNW1DbFVXWk9oNC9TV3cwRGNSOEc2N1pRSkJKb3laL3pkNlht?=
 =?utf-8?B?Y01sNkhWRG84N0RCS05hdE5tTWtKZjBqeVJDd29jaytJOHR5YjVYWElRZHNs?=
 =?utf-8?B?clNzZVpUdmFqZHphdWFhVFRHd2s3QjZqV1FyNlh1VGNHV0J0Si81U1NEK3cx?=
 =?utf-8?B?aEhibVk5cWdib2NhZDc2emUrUWNWYnBWL3Y4Tjl3T1pYTmxiQWcrdUhOOW1H?=
 =?utf-8?B?NFk3WDdJanhvQjBRMDV3S3FNYkR4YnFScXNpMDNDdWJMS2YrYzVoTkl2amVa?=
 =?utf-8?B?WUtQclc4TGZmYWVxb3g0eTRYNXFOS3VMWDJNOWVRcjFyNWRnQUxLNTVXQnd5?=
 =?utf-8?B?RXk0MjM3QUhXUTYwU1pFMHpWMmoxMFFaSW5UazhLTWxPTDMzZjlwZTdZUUdx?=
 =?utf-8?B?elQ4SDFoNmhoZEp1WFVqdkQ5aVFwTitEQzlPWFFDb3NYbzltTWFNWlZIVzRv?=
 =?utf-8?B?RFJsMW9laVIvZ2JXdmFnWkxKMEdwUEZGNy9nQVZpWmkrMXJJaFk0SStkSFBU?=
 =?utf-8?B?Z0MycHdGRTdzbXFUa2dmNGdTd2FKbmRmdml0KzNWNEgxbW05cE5DYUNnN2ds?=
 =?utf-8?B?ZVpYODNEenNQMzd5QVVtQjlkaG41Zkt6L2ZYQTlmVnl2SFF3VDJaTGIyOE9C?=
 =?utf-8?B?elRtOFNsbnJtODBNa0xicEEvSFFoNG1TMitkOHBWK09GUXZxYWYxNDJVeENi?=
 =?utf-8?B?eHpIaGR4UDFSY3c1b1Q3YXdEcnlRQlNGSHo0Z3V0QjBuZXFZYVNYc0l4RzlY?=
 =?utf-8?B?ek5hdG5JUzE3K2RvczFQSzJKd1RvMXBJQ3d6U1ZVL3BRTFlQeElsM1FTcnRY?=
 =?utf-8?B?ZkJTeUIrMG5VR2lzUXNFeDFYUnVaTDJtVThIT08yL1RCQVMxejEyTGNkWENW?=
 =?utf-8?B?SjBTTGcxODR0eHFRZmdIdC9MZ0dFdUs5TXVRNEFCblNGaG1PaUJnRjYvL0lh?=
 =?utf-8?B?QTcyQUlhMEV0ZHVWOFFkcmVaWVJHN2hXR3k2SnN5QlpScEpNSi9GM1B5VXdx?=
 =?utf-8?B?S0kxRGhKSkJkSnFraWcranI2dVpzTUJNeFlzL0RoVnpublk2Vk56VWo3MUJJ?=
 =?utf-8?B?Yi9laWRDVTB4U1g0Tm96ZHNIdGg0WEJ2R2grdGZPOGRDRWd0M1E3YzJLYk1y?=
 =?utf-8?B?NE84TDYxOENyb09VUWN0ZWdUNmRodExjTyswcWhJZTNaY3FyUHdKMmluQ2lQ?=
 =?utf-8?B?TWRDYTh4QUYvOGY5SUNXRkYzbnM1b0lidU9SZ0s2dkpsdWczeENnNFdRLy9x?=
 =?utf-8?B?YzM2UGRHd3lUZnZOazBMNHlOejdLTExhY2pTMkNRODZCR2JzbUF1ZHpCSURy?=
 =?utf-8?B?NlRZbnZLN005ZThLV0RUVkUxVUl3bmR4TkhITGtjV1RtR2p1WndFRnUwTHdK?=
 =?utf-8?B?S2ljZnhnekNvTHg2a1plV1RvQ1F3dmh3K3UzaURIZlFZcmYyTzY2ZGhCOW42?=
 =?utf-8?B?ZGk4MDMrSVFSczQzRlNYTGxueWNWTzB2OW8vL0hSb1lJSGdWTndvOGR3VFZn?=
 =?utf-8?B?NzV5NitKZVBFeEhid0FDVFJBKzczd3JiSnBRTUEvTytCcVpQUFZVa0dpdm9V?=
 =?utf-8?B?ZzQ4dVZkdUVzd1Vvd2s5MnV4cFNQYll1SVNJZm9BUnB0ZThDR0hpdVc2TnNp?=
 =?utf-8?B?R1VsSU1uVTZIRE1PYU56cTFWalM2MHZmSTI5UnBYZ1p4eDlwUFNBc2hzS0lG?=
 =?utf-8?B?MWJpcTR5cm1mNTJxKzFyeXNzUmdkelNIVk8vcTExMU9WTGxtQzlBQT09?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3fee1d3-5b87-4ecf-10d1-08dea5bb7713
X-MS-Exchange-CrossTenant-AuthSource: JH0PR03MB8617.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 06:49:30.9506
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vzQGCbhCuT1wu69iQyGwGNHdwR3IolBYLPKIIUtmhfDfacA2gcRzzySGuPdpoHI+m92CaUkM8gxjjnlJwco/Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB9618
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_234935_355932_9ED4C203 
X-CRM114-Status: GOOD (  11.53  )
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

Ck9uIDQvMjcvMjYgMjA6MjcsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFtIE1pdHR3b2NoLCAy
NS4gTcOkcnogMjAyNiwgMDY6NDY6MTMgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2No
cmllYiBHcmF5IEh1YW5nOgo+PiBUaGUgS2hhZGFzIEVkZ2UgMkwgYm9hcmQgcHJvdmlkZXMgb25l
IFVTQiAzLjAgSG9zdCBwb3J0IGFuZCBvbmUKPj4gVVNCIDIuMCBwb3J0IChjb25uZWN0ZWQgdmlh
IGFuIGludGVybmFsIGh1YikuIEVuYWJsZSB0aGUKPj4gY29ycmVzcG9uZGluZyBEV0MzIGNvbnRy
b2xsZXJzIGFuZCBQSFlzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHcmF5IEh1YW5nIDxncmF5Lmh1
YW5nQHdlc2lvbi5jb20+Cj4+IC0tLQo+PiAgIC4uLi9kdHMvcm9ja2NoaXAvcmszNTc2LWtoYWRh
cy1lZGdlLTJsLmR0cyAgICB8IDQ3ICsrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hh
bmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzCj4+IGluZGV4IDAwMzM0MmZk
NjlhNy4uOGVjZDAwZjY2NDVkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU3Ni1raGFkYXMtZWRnZS0ybC5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYta2hhZGFzLWVkZ2UtMmwuZHRzCj4+IEBAIC0zMCw2ICszMCwy
OSBAQCBoZG1pX2Nvbl9pbjogZW5kcG9pbnQgewo+PiAgIAkJfTsKPj4gICAJfTsKPj4gICAKPj4g
Kwl2Y2M1djBfZGV2aWNlOiByZWd1bGF0b3ItdmNjNXYwLWRldmljZSB7Cj4+ICsJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2Rl
dmljZSI7Cj4+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICsJCXJlZ3VsYXRvci1ib290LW9u
Owo+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPj4gKwkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+ICsJfTsKPj4gKwo+PiArCXZjYzV2MF9o
b3N0OiByZWd1bGF0b3ItdmNjNXYwLWhvc3Qgewo+PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7Cj4+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsKPj4gKwkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICsJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDw1MDAwMDAwPjsKPj4gKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiArCQlncGlvID0gPCZn
cGlvMiBSS19QRDMgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2
MF9kZXZpY2U+Owo+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJs
LTAgPSA8JnVzYl9ob3N0X3B3cmVuPjsKPj4gKwl9Owo+PiArCj4+ICAgCXZjY19zeXM6IHJlZ3Vs
YXRvci12Y2M1djAtc3lzIHsKPj4gICAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
Pj4gICAJCXJlZ3VsYXRvci1uYW1lID0gInZjY19zeXMiOwo+PiBAQCAtNTMxLDYgKzU1NCwxMiBA
QCBwY2llMF9yc3Q6IHBjaWUwLXJzdCB7Cj4+ICAgCQl9Owo+PiAgIAl9Owo+PiAgIAo+PiArCXVz
YiB7Cj4+ICsJCXVzYl9ob3N0X3B3cmVuOiB1c2ItaG9zdC1wd3JlbiB7Cj4+ICsJCQlyb2NrY2hp
cCxwaW5zID0gPDIgUktfUEQzIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+PiArCQl9
Owo+PiArCX07Cj4+ICsKPj4gICAJd2lmaSB7Cj4+ICAgCQl3aWZpX3JlZ19vbjogd2lmaS1yZWct
b24gewo+PiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQTIgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfdXA+Owo+PiBAQCAtNTQyLDYgKzU3MSwyNCBAQCB3aWZpX3dha2VfaG9zdDogd2lmaS13
YWtlLWhvc3Qgewo+PiAgIAl9Owo+PiAgIH07Cj4+ICAgCj4+ICsmdXNiX2RyZDFfZHdjMyB7Cj4+
ICsJZHJfbW9kZSA9ICJob3N0IjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+
ICsmdTJwaHkxIHsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmdTJwaHkx
X290ZyB7Cj4+ICsJcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+Owo+PiArCXN0YXR1cyA9ICJv
a2F5IjsKPj4gK307Cj4+ICsKPj4gKyZjb21icGh5MV9wc3Ugewo+PiArCXN0YXR1cyA9ICJva2F5
IjsKPj4gK307Cj4gc2FtZSBoZXJlLCB1LXNvbWV0aGluZyBhbmQgYy1zb21ldGhpbmcgYmV0d2Vl
biBwaW5jdHJsIGFuZCBzZGhjaQo+IGlzIHRoZSB3cm9uZyBwbGFjZS4KPgo+IEhla28KCkhhcyBi
ZWVuIHNvcnRlZCBhbHBoYWJldGljYWxseSBpbiBwYXRjaCBvZiB2Mi4KCkdyYXkKCj4+ICsKPj4g
ICAmc2RoY2kgewo+PiAgIAlidXMtd2lkdGggPSA8OD47Cj4+ICAgCW5vLXNkaW87Cj4+Cj4KPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
