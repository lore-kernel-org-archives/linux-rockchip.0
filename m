Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C77CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 07:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b7yAjyD5sjWcyRZmjhGspJoht16SSuQY+tws69UjvW0=; b=BDbjIh0h6IOtNozi9/e451LSIa
	LVx67Fi/VomLpxXcEB3mhB+TW7w85yI2b39zFOdP07G3svU3q6EyMvZ4zArlVH8T5y+IZK7jCRsnO
	kvxIfVcjjaIdKsc34rVAkw2OoctJU2Jk4WzP4kj/HnjiupsTAuQx+diKik6XOVvjW2aIb+jUX5HrS
	YJck1mSvXmPKXFn4upZ0gSj4e7MRMBVkS4twBLrWEYW7WOvN1kfHuxtUSy/OZOBzi5ZjlviyDBkAg
	+ZisBB3TyDscHmISYlRTh1LEPAIiY0YlN1Iow2P/5HqGArOF293gY43IVZwsqGdWQIso1ATGTyEhq
	dZaqcbKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruS5t-00000005XF4-1iyj;
	Wed, 10 Apr 2024 07:10:05 +0000
Received: from mail-psaapc01on20720.outbound.protection.outlook.com ([2a01:111:f400:feae::720] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruS5p-00000005XCg-2j0e
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 07:10:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cC5vtpGZFYZ1kkWQ0HCf/2+f9/MA/eqqHPQmR3GlCTh2hBXNOq10n91Xun6WSEv4HYr0nesP2jFoJNj06rQYcxi6LZwl+lts6CCRW8i5E0JILC13WOisBtaMRqIlviqAJsWOa3RgA083DyaYe2nQgRCsUlW+043L9aQavv1VAnnsDmhD17kyZA0yeAjdAYa8WkGTWNLXq16fuYA/QwaWk1Oy3qCYHlIjfs/n46XxVMc8kZJ+RkxmqZSPeYEIn+brbpl+oYORB1I73wawr+NRM3tU2OmIR/M6VvLmXV+D/GgGP8XN3OCRvCjfrBmMJ1PkwXpxpPtnDMbPpOBbeXY8lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rBU8aBuE2ebgA6JoRVv4jqNfVXKoKJ+4MnJgFTrftI=;
 b=MUVss23A+Yzk5zxu3S0E6IsDqHh5L3UvpzfnUyc+qW+gbYc8kMval7JWMOFHuTiWEHmjNTECX1WQuC+hJNLcRXjI2nBiTYVuEgoDJCFC9RE9/Te+4yYBBTrv9Qq/8+UPxPaaexMPktUr0c2d1jlsSZKII63bxxuta5F9hGt7BYNBicB3JdoO00VIUrevfDuOiECgYap12uxBj+CLpmrp5FVg3qw1OPHaAOlUz4fTMarPOd/qM3Kx06foV4sRGf/HOwJTA6IVpFsK+2k0Z5T1AFu2DFuJl5Oiif1O/xxJB7BkG2k8oRE8kNFTQ8NVIpHh9jkNePriNI7cSLMBoSE8KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7rBU8aBuE2ebgA6JoRVv4jqNfVXKoKJ+4MnJgFTrftI=;
 b=a4OSspizi/IDYZiTGlctZCRAAlkwrZ/i5XaHten6i1SucFFc0JoH7ORZIQXiLCW/YtEyvtglnxsrB4Vg+lCTWprbwQ6qpWdyto2aM10CbBWT34wTRau5tSg8hwgnaK3QvBihIFLSsBcJjZXMhgOKiHuJFKxclZzZp/mXnMIobJ+lxOm11v5yZ3SjSpy0YxzjNC45P9tWFqxBpURGgg3YM1F9CPyRiL0S3YxMSCvocXQXxO+SZmqjEBiWuNASM9SRI7C1J/arR31IlUMGT6f5mce/lNva9PqJkEao8CGhojfiQ2kz/SvKlCIG+ILt0AFeCdJaDDETRYhr5sIInVq5qw==
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 KL1PR06MB7366.apcprd06.prod.outlook.com (2603:1096:820:146::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Wed, 10 Apr
 2024 07:09:45 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1%3]) with mapi id 15.20.7409.053; Wed, 10 Apr 2024
 07:09:45 +0000
Message-ID: <603470e5-3310-47c4-854e-d6fc36366699@vivo.com>
Date: Wed, 10 Apr 2024 15:09:42 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 sumit.semwal@linaro.org
Cc: pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch,
 jason@jlekstrand.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <42aea61f-52d7-4cea-9944-7130ffcf9c15@amd.com>
From: Rong Qianfeng <11065417@vivo.com>
In-Reply-To: <42aea61f-52d7-4cea-9944-7130ffcf9c15@amd.com>
X-ClientProxiedBy: SG2PR04CA0180.apcprd04.prod.outlook.com
 (2603:1096:4:14::18) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|KL1PR06MB7366:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 71ZU/joFeQPoLJHuURvJq1RpdD5qfNMKce6SVrWu0l1DIqih2eZi6PuWxfNhqKd9ImO78JlwXCOxTx3XZ8S0zvYRGg1JD03F4DfcPBRnNhNQZ9dZXSIaCIvI3Wtp5JGGNTBtspmpMd9Dng8G9RRWAyjuKDmU210ZwLGdcmnhfDl7xRGxABz29ruHyCzTZlfj2bCBVUWLteaPmIjILmlHBxvik3cU457o+FYomUKUUpQL5+bfcsflRh0/kx6giYK5bXCEpPLRwuZmOgmZ2WlXZ+5/u49LYiF6BuPRJBlG5GE5oznitQXnzQWGr3ecYqizLNTYRw2xf9p5v8ZKw+M62wi79VKoTz9s1jkixbMskdXwV7jZLqjBzwdq0JvbySuEuUpaun6JWDQoy8dLFaWvDO/sbbQmgc0WGPPTa8ExSaJ3j8dEsV4DZXgJS0EuRxyMca1g0HN1MM1/cZZFD4+hLnGdjzUxnoRJDlGb5JJL3aQmFDdpk8SUxSJzr/EwZYP7ZZZ7hTUE4wdBzlg+AII94jXS2MvMqH8gAdvmmaDX2PjZvNM1PV9TyAUZzgblaia2BQDzlC9X5tyr3eqRtJLjz8itrUy8ovZ+51Zykvl7eAJY1Y/g87dhKxUlXTvvc5UkMAdIbDakpoDvQ3vk2yuQyVCUSVd2vBRDeNQExKbi1gqSyV59gs2n4MJaaEqNvBJe2B/lc9xh1LxknfpzZ+MVBrhAOpLA2gmyRBigVDyAqof1zbW9kgMjauc6LeWcdy+G
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5140.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(52116005)(376005)(38350700005)(81742002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGZ6SUlqTU9oU0VkSWJLUm85R28zSFpIUUU0NHZIeDVJaDFXKzFxSWFmajds?=
 =?utf-8?B?MlNYTjV2RWY0RGNxTUNIVzVLNkVweGkyQ2ZtNGhZZ29jYmVRNHZNWGdpejlm?=
 =?utf-8?B?YksxWVpQenZoVVlCRlF4WXV3SWhteFhPaXJSSk5aOFpVdENFcVFMS0c1OXRk?=
 =?utf-8?B?LzVkeDZmTDE4b0tUVlZwcm5XU0FEMVVjS3ZXd1l0U2V4TXdzYmxmQ1huVXE2?=
 =?utf-8?B?dXR6Ty95bHMwamJpOWlVcmNKM3JNSnZ0alR2WkR3OHYzUWY5NEZhWjJ0bWJX?=
 =?utf-8?B?a3JMRExPNytLSTdkQktHSDQ5a2p5UlN1ZlJYL0V5NHViaUw2TVFseGJmMDZ1?=
 =?utf-8?B?aXR2U0Voa2lvWlJpL1d2SXJBcjhHWGhFdUJNWHg1ckFoOWxnY1d4OGNTQ0NN?=
 =?utf-8?B?VUt3N0NEbGJFNjJtdmhXajdFT0NuaGlIZldsSVQyVkMyYWVJRDZOemdvMncw?=
 =?utf-8?B?N1A1VlN5S3FiNDZZRHZTTytBamJwUk5jZDAwRzR5cWVmZGl1eUdmNkRWcTJl?=
 =?utf-8?B?NUc3YThqOTY4aEhTa0p6cVpCRWdHNUozMnJMSG1LbmZLb2N1aXFFR1dBRFBw?=
 =?utf-8?B?MjJ0aVdYTjJrSkFSU1JkdkZ1cisybkJlaHVxTzVVUUxrS1F4SHEvUisxRFdn?=
 =?utf-8?B?WENrMVpDUEI4MmJpNXhmeWYvTHBiK0I1Y0JRMktWSTFwbnBnK1JkTW9sUlMx?=
 =?utf-8?B?RExnbCs2T3ovS3M5WmtNOXIxc3dHaGI4UHMyYis2SWl3VGo4a1RWWXF4eEg1?=
 =?utf-8?B?L2hCSUY5MmY5VTY2eHE2RnpVRTRoeDRlZ3BJSlNUZktKaXRWNTlQU0V1YjN3?=
 =?utf-8?B?dVRGNEhMZW5wM1YxM1h5U2RLaVBPUURtRlQxcU1UMFM5RkFrOHozYS9RemRu?=
 =?utf-8?B?LzFIWk56alNmYkg3NEhTKzBhMWROQkxCeVBYYXdOZURWVFF2TU1RbnVHVVRT?=
 =?utf-8?B?cGdXdDJYVGlmWjQ3VHZOSThieVlZWVJHKytEUG4waStMUXVVRmNpdEY0WVlv?=
 =?utf-8?B?amwyOEhTdHFKOGlSNUNvSFd4YnRBUDJkM1pRVkZ1TUg5dGJsTHlQTTYxOFZY?=
 =?utf-8?B?RXpSY0E1dE9ZcVRzM2F0RVdEdjlMTHZaR2JCNS9jTjdDTTEvb2Z4OWRLa0RW?=
 =?utf-8?B?V2orbjRlUkx6VUdvNXM2NHkvREducy94Zkd0Rkxhc3Nhb0hPV3BVdmQ1WnVS?=
 =?utf-8?B?OUhBY01mUmtydjdycm0zMEpiR3B4bFlQZmc2T0V3WWlraVM4VnprVU05bVZy?=
 =?utf-8?B?ZWpKbllYemdKNUIzakFNTEdpc3F6ay9TWU1VY2NIUTVkdU4xeS83WW1PcElT?=
 =?utf-8?B?ZEdZWXl2R2lHeXd1OG93UFlTcWU0M2dwZUlUa2NRRUNrVE5WRTIxTWpNVVd0?=
 =?utf-8?B?SHlabmh1dEl5R2Y0bU1EU29lYTQyS1NuZnNvQWZjaWo0WngvckFlWUxHb09a?=
 =?utf-8?B?SExSWFRkajhyRmQzUTU5TGIrWmpqQ3BzK0QvMEFUa2V4dTIvbHFMOCtBYy9y?=
 =?utf-8?B?TnlPWk1oamJveEpBNG5JVm5EZGpYVmhlK0dMeHhmNWhxMU9BU3V4RVlNYXNL?=
 =?utf-8?B?VXZDb281VUUvSFhHUzBrVjJmM01WSFFicGlmVGU3dVhrdmZiWitWeGVoRzVV?=
 =?utf-8?B?VFJzNUZaVVZqWTlBcDVjV040cis1TG1GVVVUY1lxbUhhMDRycWdlWnJjQWU1?=
 =?utf-8?B?M2pvVThBWWtHUUl1TlpwZ2VCYnEvcm5sQnNNNXpOdFdTWGsybE1OWmdqS0Nw?=
 =?utf-8?B?dE5nc3g3enJxWUQ4SHpBemNGT1kzdUhkeXAvaUd3WVBZTm45SXBSK3FvRXdZ?=
 =?utf-8?B?NWN2Z0VJK3hWNllpMytrbndoY3FhdHlwVFVMczB4bmRJTVpzVkozMVlvdy84?=
 =?utf-8?B?enZxS0RTZkZrMklWTE80MFY4SzBxbHhHZXJDVGRxT21OSitjTDY3VmFFRWhF?=
 =?utf-8?B?TFRSRWRZMlljM3A2TGZocCtxRGJsRUdIWEcwL0ZQdE5Ram51K0tpZDJUNXJ4?=
 =?utf-8?B?R0hTV2dGaDhaS3VDK0ttc29nRy9VczFOdll6eHNaT2J3RWdmOWo3SitBeDBr?=
 =?utf-8?B?MXlaK1JnMmZrcVpkMFV0aFpXbU1LYklwM2szN2pIMjJpVUNWdm96VTVwWkti?=
 =?utf-8?Q?g/zEwmMgSJY/3+TJNmmnQUqRM?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce586b1e-e438-4b7f-3563-08dc592d335f
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 07:09:45.1415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r0Yqi+9nlFzCBkkc1/XSH8CeeMuHrgluBSK92rOWnXxKs40oWc3ZVShOgLt2ALui518OKRKSWcHiz6kzYmKkeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB7366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_001001_706638_5CBE61DE 
X-CRM114-Status: GOOD (  18.61  )
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

CuWcqCAyMDI0LzQvOSAyMzozNCwgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4gQW0gMDkuMDQu
MjQgdW0gMDk6MzIgc2NocmllYiBSb25nIFFpYW5mZW5nOgo+Pgo+PiDlnKggMjAyNC80LzggMTU6
NTgsIENocmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOgo+Pj4gQW0gMDcuMDQuMjQgdW0gMDk6NTAgc2No
cmllYiBSb25nIFFpYW5mZW5nOgo+Pj4+IFtTTklQXQo+Pj4+PiBBbSAxMy4xMS4yMSB1bSAwNzoy
MiBzY2hyaWViIEppYW5xdW4gWHU6Cj4+Pj4+PiBBZGQgRE1BX0JVRl9JT0NUTF9TWU5DX1BBUlRJ
QUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRtYS1idWYgd2l0aAo+Pj4+Pj4gb2Zmc2V0IGFu
ZCBsZW4uCj4+Pj4+Cj4+Pj4+IFlvdSBoYXZlIG5vdCBnaXZlbiBhbiB1c2UgY2FzZSBmb3IgdGhp
cyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvIAo+Pj4+PiByZXZpZXcuIEFuZCBmcm9tIHRoZSBleGlz
dGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgCj4+Pj4+IHNob3VsZCBiZSBuZWNl
c3NhcnkuCj4+Pj4+Cj4+Pj4+IEV2ZW4gd29yc2UgZnJvbSB0aGUgZXhpc3RpbmcgYmFja2VuZCBp
bXBsZW1lbnRhdGlvbiBJIGRvbid0IGV2ZW4gCj4+Pj4+IHNlZSBob3cgZHJpdmVycyBzaG91bGQg
YmUgYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLgo+Pj4+Pgo+Pj4+PiBQbGVhc2UgZXhw
bGFpbiBmdXJ0aGVyLAo+Pj4+PiBDaHJpc3RpYW4uCj4+Pj4gSGVyZSBpcyBhIHByYWN0aWNhbCBj
YXNlOgo+Pj4+IFRoZSB1c2VyIHNwYWNlIGNhbiBhbGxvY2F0ZSBhIGxhcmdlIGNodW5rIG9mIGRt
YS1idWYgZm9yIAo+Pj4+IHNlbGYtbWFuYWdlbWVudCwgdXNlZCBhcyBhIHNoYXJlZCBtZW1vcnkg
cG9vbC4KPj4+PiBTbWFsbCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJl
ZCBtZW1vcnkgcG9vbCBhbmQgCj4+Pj4gcmVsZWFzZWQgYmFjayB0byBpdCBhZnRlciB1c2UsIHRo
dXMgaW1wcm92aW5nIHRoZSBzcGVlZCBvZiBkbWEtYnVmIAo+Pj4+IGFsbG9jYXRpb24gYW5kIHJl
bGVhc2UuCj4+Pj4gQWRkaXRpb25hbGx5LCBjdXN0b20gZnVuY3Rpb25hbGl0aWVzIHN1Y2ggYXMg
bWVtb3J5IHN0YXRpc3RpY3MgYW5kIAo+Pj4+IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBs
ZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4KPj4+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1tZW50
aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJlcXVpcmUgdGhlIAo+Pj4+IGltcGxlbWVudGF0aW9uIG9m
IGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFjZS4KPj4+Cj4+PiBXZWxsIHRoYXQgaXMgb2J2
aW91cywgYnV0IHdoZXJlIGlzIHRoZSBjb2RlIGRvaW5nIHRoYXQ/Cj4+Pgo+Pj4gWW91IGNhbid0
IHNlbmQgb3V0IGNvZGUgd2l0aG91dCBhbiBhY3R1YWwgdXNlciBvZiBpdC4gVGhhdCB3aWxsIAo+
Pj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLgo+Pj4KPj4+IFJlZ2FyZHMsCj4+PiBDaHJpc3RpYW4u
Cj4+Cj4+IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxldmVsIGRtYS1i
dWYgbWVtb3J5IHBvb2wgaW4gCj4+IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhl
IHBob25lLgo+Pgo+PiBGcm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRoZSBleGVjdXRpb24gdGltZSBv
ZiB0aGUgcGhvdG8gc2hvb3RpbmcgCj4+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1Y2VkIGZyb20g
My44cyB0byAzcy4KPj4KPj4gVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHlvdXIg
Y29uY2VybiAiLi4uaG93IGRyaXZlcnMgc2hvdWxkIAo+PiBiZSBhYmxlIHRvIGZ1bGZpbGwgdGhp
cyBzZW1hbnRpY3MuIiBDYW4geW91IHBsZWFzZSBoZWxwIGV4cGxhaW4gaXQgaW4gCj4+IG1vcmUg
ZGV0YWlsPwo+Cj4gV2VsbCB5b3UgZG9uJ3QgZ2l2ZSBhbnkgdXBzdHJlYW0gZHJpdmVyIGNvZGUg
d2hpY2ggYWN0dWFsbHkgdXNlcyB0aGlzIAo+IGludGVyZmFjZS4KPgo+IElmIHlvdSB3YW50IHRv
IHN1Z2dlc3Qgc29tZSBjaGFuZ2VzIHRvIHRoZSBjb3JlIExpbnV4IGtlcm5lbCB5b3VyIAo+IGRy
aXZlciBhY3R1YWxseSBuZWVkcyB0byBiZSB1cHN0cmVhbS4KPgo+IEFzIGxvbmcgYXMgdGhhdCBp
c24ndCB0aGUgY2FzZSB0aGlzIGFwcHJvYWNoIGhlcmUgaXMgYSBjb21wbGV0ZWx5IG5vLWdvLgoK
T2ssIEkgZ2V0IGl0IG5vdywgdGhhbmtzIQoKUmVnYXJkcywKClJvbmcgUWlhbmZlbmcuCgo+Cj4g
UmVnYXJkcywKPiBDaHJpc3RpYW4uCj4KPj4KPj4gVGhhbmtzLAo+Pgo+PiBSb25nIFFpYW5mZW5n
Lgo+Pgo+Pj4KPj4+Pgo+Pj4+IFRoYW5rcwo+Pj4+IFJvbmcgUWlhbmZlbmcuCj4+Pgo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
