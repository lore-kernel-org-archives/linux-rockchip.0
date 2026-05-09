Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE14DCD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 07:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:From:Cc:To:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bf7ML/Y7GpuyUOpzIpb/tiYOTLaX7OSuh0fFVAqN0mw=; b=avxCHXNV06wfyantlrT+VAjWjJ
	gDHUpXjyWFp87v5v0A/Spibe06Cchtf+tmc4O+prdFH6PmXbF/Id2Fyng9lk0y6pxej/+K94Iq4bQ
	Jxg6uEa/0L42HHI0wi0nvVKcF7/v4LCIGZ2QAeql13BfDnusNN6zc/gaahFORTJ+Q3upS4bNkPFS0
	sqPo0JFko/9Oe7xrGYUC2pjswlUVKVO2yW9kBtYmCmg3s51/4uZCktpTvIv1PLfeC6uzS7vOjbJRq
	GzyIPFBUQSGaW30Z53roC5mBs/A4ZhZcoKUf7k8KxRCPCa+akuljF4voh8fbA1eUHHjhzN/HXaghe
	hTEW/P9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLbou-00000008S5h-2z2x;
	Sat, 09 May 2026 07:09:52 +0000
Received: from mail-australiaeastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c40d::2] helo=SY2PR01CU004.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLbor-00000008S4p-3ut1;
	Sat, 09 May 2026 07:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FfvyuWx0NMh5psqFI+Jdwa8GIWTlsvSJv/TTk0s2oV16ZbtMmDciRtJYfDkWRgR7u3tQOIVGCY/ROzuYQBtHbuIhTuo1I6jZWZbToU3qryDA5F2GGR76nH6fr26kthMWqcupo1BUFBKS8/nYhDdveO9T5KITsXB+2RWLvBUaLpBHJpewdyeayVHI/rVIJtsuiDyjkdkbl9cxT/d2zRAP4+9i9QlPWkTNO7tOZ2g3r02M5szVRmsUL968Cr1A+5/CpasUuXxc6tKzWJyesQ+vg83tm6mUV81gfIfMyG7aU0gZg8ldF80qqEWFdQ4WC+GiDicuzDxItP/9JXl8tyeA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XeBwZIp2TJpJLp1u4Q+NDWpvgQMAE2S0ckWkEmiDTro=;
 b=NS/vxnd5M10Bwr0cIVccOgPpSlE+4JYDeIttJlY/ujcA1m2tdwWuL9JXIQEn9ocN1rX79jpadojlyNpcZvXqZ3K0VZ238xKG9TnWtu9hg7qPxsCFf2u2qyCCvLiDNQo+gPfe1AxCga2Qf0LqDt4AoUXwKFGdmS8l1BkxT22rkEqaImD488q3k6V6KHfIFlwZPCP/yvvrGzJOjiUpe2E20OgDUno9P4YICWOU2gjaZzLmtRYl6AlRIEpR3QsLL9m0DDgmbAKSfKAPh/jljctyj+fCGqRPTCxNDoA2mVbdybPpmVMzKXks9ZVSI3CUtlUpYRz8eq96yGQD27PHbKi0Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=symple.nz; dmarc=pass action=none header.from=symple.nz;
 dkim=pass header.d=symple.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=symple.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XeBwZIp2TJpJLp1u4Q+NDWpvgQMAE2S0ckWkEmiDTro=;
 b=GglqbBxuEinuCPDbBpnGjJfRkVirst9USHly1rD7/vX5V8/1iad3mbISGRl/qVXW9u21bXf4g3enbwRDLAtZDuMqHcYEmaIVMrBsnCRyCEU9u5ypjs58vrTgaoT6lfu0ZvuoL2ZF6fz6715SlJ78Rzu/f9pPGLrFBFv6wMFy88njQRr6ErM0EAaI1cxI/PcGgmGxw4i4Z/IyZU4T/rvSmbfDqZD5nPVjZc4LSdIn6q3vwTNXrZtd0aghMluJXCnoZG43lHa/SjZBoNzDKFrBtnhJjhb03iuwvGGil21j0GXontBQ3Mh1oT0bS5huVbZ80jARFRJvtu4QdKl3SmAffg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=symple.nz;
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b2::11)
 by SY4P282MB1257.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:a6::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.21; Sat, 9 May 2026 07:09:09 +0000
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834]) by ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834%5]) with mapi id 15.20.9891.020; Sat, 9 May 2026
 07:09:08 +0000
Message-ID: <92aa4191-2a2a-41e3-badb-c0a5b1fbb957@symple.nz>
Date: Sat, 9 May 2026 19:09:07 +1200
User-Agent: Mozilla Thunderbird
Content-Language: en-NZ
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Algea Cao <algea.cao@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Simon Wright <simon@symple.nz>
Subject: [PATCH] drm/bridge: dw-hdmi-qp: compute audio CTS from N when not in
 TMDS table
X-ClientProxiedBy: AK2P299CA0009.NZLP299.PROD.OUTLOOK.COM
 (2603:10c6:108:18::22) To ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:220:b2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ME3P282MB2196:EE_|SY4P282MB1257:EE_
X-MS-Office365-Filtering-Correlation-Id: a281fac9-75ea-4200-cd57-08dead99dd27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|3023799003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 2i1hLH3NbJjDauo7S/fxQa6hNEkoQeRiFUSLcMjVxQv4NKN9RHunkEbbYLQa2zO1jHfXnrrrMSNKC83su8uQqSHs9G0data21f+OfLhXr/Gj0LovGl9mxIm5PqfmXvbzZjYf0NvGHzDvWMNqWbOt4T22SAKx4Im0oeuxjvu+bcbMEoFhbjyijkh4hNJZx17NMZOC/KPKK4cf2UqoxPvWQhRIamLnUTdEMf0rXpNuecOOLUu/1yqslc/MEy1o64lzuE3k0Qu//AxLyiL3HED3ztSXNDPs2t2H8FmWK9J4DGDC4jBu/E3Hjk1x29VPAdq3div226kNvQFA0v0HT2gdIqc4iyNYtVcw3KrmWXCAu8e52BHR4Hhq55ZtAUf3pTesa/40ZihGyzMAZOR0wdyA7EVObLCxaNi/2szblyPiX0kx+SeFIqjLMJ94za/OJBUkCFdoEHV4dsLvuBeutBw4JrKUWKMII3YAai14/3j7YxityTEGFaVcMSDu2KUXSQpw/IT3ZG8b0RXlI2usYxF7V8gHiQshmIZkAn0NpfXLcMib9jq05QSborGx0l8PvQVS49t3t0FQsmvnmVpZIQkiTHvwqGUlUKwwDTVQ9vK36QtAD1BwNClRduLbjQ2lF+2bp1IzHT2CrGmbtOenfA0q4VlSEwrRDmgs/ne1XnjMpZx05rurjr4nCykto+w/D19u
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(3023799003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dy9FU3ZqL1d6VWRFVStmU1hyQmNyOVdiTkY2ZUN4aS9lMUVQZm45akFSYlRy?=
 =?utf-8?B?UEZNNnR3QlR0N0V1bXBWbmtmYVZ4NWN0QlFhaEJZaGdML1lKSEhIaURISjhY?=
 =?utf-8?B?V0JqRGtycVhsT05HSnpaSmxnWWkvZnhhWVBRYzUvbm1HL0FVd1VpOHRDRnpP?=
 =?utf-8?B?cGNWbmw3VERUbkp2a2dBZXd6MDc2bHkwekQxRDdYT3J2dDVlN1NnOVVYekQ5?=
 =?utf-8?B?V3BCNy9XemJBSmdDL0dyaUJBUkxUanpsNG9KYjV2d3FmdnZwd0pnV3VkSzZZ?=
 =?utf-8?B?UnRFWnJzMWsxbU5xM2VyNDhkZGQrdk5sVjBDb2pKOEw1M01YZ3gxbCtTeXY1?=
 =?utf-8?B?SXVHVjM0SFF0OG9jU0twS2RRRUdnYWVSZzhIMEdkbk9GYSsyb1o1K1lMMTkw?=
 =?utf-8?B?ckVRaHBVYzZoSkJCbDJQQ2gzREF3aExqQ1NUN3ZNbEEwRlJzdkVhZ0h4UlF4?=
 =?utf-8?B?VWxJRDkxcXJ2Z2pqYUFHYzhicHdzeG5oKzR1T2xKbGJ2ano0SnBZaUdUNzZ5?=
 =?utf-8?B?TGtLWGhTU3ZBTmpIZmNVR3owaHNmVHR0VjQvQ1FiSkc3THVOUGduT0lYQk16?=
 =?utf-8?B?Mnc2ZGVzMitnYkFVeklkNStCMTlBRldlaXZjU1NMNUdZWnhJMCtsblYycEs2?=
 =?utf-8?B?TG5VZ0hvanRSbExQemdGWFBGbmg5MVNGSUJ5anVYMVNBRWFVeXFxblRhYldq?=
 =?utf-8?B?dVphWGtRS3ZnZUw5OSt0N2FJMEMzRmtZN21DNGdsTlpTdmx6N0V5V1IxNFVO?=
 =?utf-8?B?QlVaMlJ2S3VMQThIZzBTNWRJejkrQWY3OXQ4T29US21HTTVoTVRzaTdjS28x?=
 =?utf-8?B?MmZSd1B6OCtsdkhET3puTWxJeWlaTFE2SWRBd055ZlUwWkJPdVpQMkhKWG9n?=
 =?utf-8?B?T1lBRnBkLzFpZGszTlh6OFpzQlRwU3JxOW9iSTJpTzZkeERnRGRsbFBINmVG?=
 =?utf-8?B?ZjJIeGVOOGRsRWQ3b25BNTJ6djZia0hPOGRZQkZ4N3FTdUJmd0dXdFBJMlpY?=
 =?utf-8?B?UEdPRjZxdlc5amJ4bHJnVC9iUTBOTy93S0IwUG9Xem9XbkhiaWlUeGdMaHcw?=
 =?utf-8?B?MnJiNU14a0toUHFYbTI4aG1GazMwZXZxbDJ2SUE5aFF6eXBmR0ZXcERWSS9J?=
 =?utf-8?B?cFFOKzY1bkNKMG5LSTBZbFU4d3JYbmE4cVBwMlE0ZnJkTHRVSyt6am02aVdJ?=
 =?utf-8?B?d0puUFE4QU5jeUs2U2t4aDdjWXFUUkpqakUrMHRPeE1zOFBWbjVmei82bmFQ?=
 =?utf-8?B?WG16NG00TE9DbytVSzhSakEwSXBrMjNpSzJmK01ZUWxPT3lxNnNRelN6Wk9L?=
 =?utf-8?B?QVM5ZnlnRDJIaHYvdEN1ek1rOW5yOUJmMm5CRmkrN1Vjb29Wbm4xc3ZybzFs?=
 =?utf-8?B?eVdRTmgveFhuVFl1c3JaemplbFJtZ2lLdm9YRVJYVStGdE82ZW16eTFVY1pv?=
 =?utf-8?B?cS82MGtxcmtCdHFEWTlzZ2VUZWJiWDAxVlFOT1FxNEpXZE5KQVczbTBaNVZt?=
 =?utf-8?B?dCtFeEVTQmZEemhoM0x5cVJqQXpnbS81WFA2L1AzN2RGK1hxZTFMTTVwby9C?=
 =?utf-8?B?aWRIbG5ob1UwWWh3M21wcWo4bk5WMHhaaittcTA0SVM2ZGxQVWtpa0FaNVZY?=
 =?utf-8?B?RGFxSC9kSjNabVZkWWFhSmRVZU52Sm9DOS9ZZjUrMnZZM0NIQ2ZDMG9hYzBR?=
 =?utf-8?B?ejVJOWlyVkdHcWFoaUEveHlSOWdTWTZhM2NvQzlMRnQ0UHZOT0I4VzF4UWhJ?=
 =?utf-8?B?Tm9DWUpnanhFTWZVRldIMWNwa3BqS0dMdWljZ3VZQ0NKaFM4aWFsZFBRV0xC?=
 =?utf-8?B?K0JscVBNbjRmcVFQMDhoQVRBNGJ3T0Nhb09UdjY1UWg2YVVEL2xQWU9mOUtx?=
 =?utf-8?B?TWhMcldXNTBQYWdjMC9lT1g1WUNvd2FZWnVDVk9IQ0F1eU42eU5RLzFjNmJk?=
 =?utf-8?B?VkNHZGRMUThmbUlpV2lGOEY3MEVsdWFXMFZwRFhuSHlhZmNieW4vRStocitE?=
 =?utf-8?B?MkFBcWRWdGYzS3JmeFhDamM0QjhBNzY3bUhOcDRhSnJobWhXckpCQXA1RDNh?=
 =?utf-8?B?aGlWQytWV0xZQTRUVzh2NDJWanEzYjZCWU13ZXNCMk5Vb1lEQlFSc1FySzJm?=
 =?utf-8?B?NXo5eHY2SzVNTFpLdjIvdUdiV2dXUmZXQUZMd1h1KzJTdFRsWUNCTXphTStZ?=
 =?utf-8?B?Y1VWcEFjTkpBYkFhdlAwY24xRUZTZWJqdW1rb2ltRGNIc3l2WXVNZ08zYWRK?=
 =?utf-8?B?QnFESzE3d0lFLzJsWUxNZzhjMHZRb3o1ZUtWTndqb0J6QmIxR1liOTI5QVhJ?=
 =?utf-8?Q?lutPKpGdxq/ES0WcN0?=
X-OriginatorOrg: symple.nz
X-MS-Exchange-CrossTenant-Network-Message-Id: a281fac9-75ea-4200-cd57-08dead99dd27
X-MS-Exchange-CrossTenant-AuthSource: ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2026 07:09:08.8164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 9531f271-068a-4210-b471-bd8da91491c5
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4c3MCE72HX64evSCn3pUZy5Og3Jpubeb6yeE8ONoEeokcaUEMVuZ+dzMGmpWFeWt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4P282MB1257
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_000950_007254_40C75708 
X-CRM114-Status: GOOD (  14.10  )
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

ZHdfaGRtaV9xcF9maW5kX2N0cygpIHJldHVybnMgMCBmb3IgYW55IFRNRFMgY2hhcmFjdGVyIHJh
dGUgbm90CnByZXNlbnQgaW4gY29tbW9uX3RtZHNfY3RzX3RhYmxlW10gKHdoaWNoIHRlcm1pbmF0
ZXMgYXQgMTQ4LjUgTUh6KS4KSW4gdGhhdCBjYXNlIGR3X2hkbWlfcXBfc2V0X3NhbXBsZV9yYXRl
KCkgY2FsbHMgZHdfaGRtaV9xcF9zZXRfY3RzX24oKQp3aXRoIGN0cyA9PSAwLCB3aGljaCBsZWF2
ZXMgQVVEUEtUX0FDUl9DVFNfT1ZSX0VOIGNsZWFyIGFuZCBmYWxscwpiYWNrIHRvIHRoZSBjb250
cm9sbGVyJ3MgaW50ZXJuYWwgQ1RTIGF1dG8tbWVhc3VyZW1lbnQuCk9uIGF0IGxlYXN0IHRoZSBS
SzM1NzYgaGRwdHggaW50ZWdyYXRpb24sIHN0cmljdCBIRE1JIHNpbmtzIG11dGUKYXVkaW8gaW4g
dGhpcyBjb25maWd1cmF0aW9uLiDCoFRoZSBiZWhhdmlvdXIgcmVwcm9kdWNlcyBhdCBhbnkgcmF0
ZQpub3QgcHJlc2VudCBpbiB0aGUgdGFibGUgLS0gaXQgaXMgbm90IHNwZWNpZmljIHRvIEhETUkg
Mi54OgoxOTIweDEwODBANjAgd2l0aCAxMC1iaXQgZGVlcCBjb2xvdXIgKDE4NS42MjUgTUh6LCBI
RE1JIDEuNCkgaXMKYWZmZWN0ZWQsIGFzIGlzIDM4NDB4MjE2MEA2MCA4LWJpdCAoNTk0IE1Ieiwg
SERNSSAyLjApLiDCoFN1cHBseWluZwpleHBsaWNpdCBDVFMgdmlhIHRoZSBzdGFuZGFyZCBzZXRf
Y3RzX24oKSBvdmVycmlkZSBwYXRoIHJlc29sdmVzCnRoZSBtdXRlLgpUaGUgZHJpdmVyIGFscmVh
ZHkgaGFzIHRoZSBzeW1tZXRyaWMgbWFjaGluZXJ5IGZvciB0aGUgTi10YWJsZS1taXNzCmNhc2U6
IGR3X2hkbWlfcXBfY29tcHV0ZV9uKCkgZmFsbHMgYmFjayB0byBhIGR5bmFtaWMgc2VhcmNoIHVz
aW5nCmR3X2hkbWlfcXBfYXVkaW9fbWF0aF9kaWZmKCkgKChwaXhlbF9jbGsgKiBuKSAvICgxMjgg
KiBmcmVxKSkgd2hlbgpubyB0YWJsZSBlbnRyeSBtYXRjaGVzLiDCoFRoZSBDVFMgcGF0aCBsYWNr
cyB0aGUgZXF1aXZhbGVudCBmYWxsYmFjay4KQ29tcHV0ZSBDVFMgaW5saW5lIGluIGR3X2hkbWlf
cXBfc2V0X3NhbXBsZV9yYXRlKCkgZnJvbSBOIHBlciB0aGUKSERNSSBzcGVjIChDVFMgPSBUTURT
ICogTiAvICgxMjggKiBGcykpIHdoZW4gZmluZF9jdHMoKSByZXR1cm5zIDAuClRoZSBzYW1lIGZv
cm11bGEgYXBwZWFycyBpbiB0aGUgbGVnYWN5IERlc2lnbldhcmUgSERNSSBkcml2ZXIKKGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jLCBoZG1pX3NldF9jbGtfcmVnZW5l
cmF0b3IoKSkKdW5kZXIgaXRzIEFIQiAvIEdQIGF1ZGlvIHBhdGhzLgpUZXN0ZWQgb24gUjc2UyAo
UkszNTc2KSBvbiBBcm1iaWFuLWVkZ2UgbWFpbmxpbmUgNy4wLjEgd2l0aCBDcmlzdGlhbgpDaW9j
YWx0ZWEncyBoZHB0eC1jbGstZml4ZXMgdjEgc2VyaWVzIGFwcGxpZWQ6CiDCoCBUTURTIMKgIMKg
IMKgIMKgIE1vZGUgwqAgwqAgwqAgwqAgwqAgwqAgSW4gdGFibGU/IMKgQXVkaW8gd2l0aCBmaXgK
IMKgIDE0OC41IE1IeiDCoCDCoDEwODBwNjAgwqA4LWJpdCDCoCB5ZXMgwqAgwqAgwqAgwqBwbGF5
cyAocmVncmVzc2lvbiBjaGVjaykKIMKgIDE4NS42MjUgTUh6IMKgMTA4MHA2MCAxMC1iaXQgwqAg
bm8gwqAgwqAgwqAgwqAgcGxheXMKIMKgIDI5NyBNSHogwqAgwqAgwqAzODQwcDMwIMKgOC1iaXQg
wqAgbm8gwqAgwqAgwqAgwqAgcGxheXMKIMKgIDU5NCBNSHogwqAgwqAgwqAzODQwcDYwIMKgOC1i
aXQgwqAgbm8gwqAgwqAgwqAgwqAgcGxheXMKU2lua3MgdGVzdGVkOiBMRyBHMyBPTEVELCBMRyBD
NCBPTEVELCBUQ0wgNzVQN0sgUUxFRCwgS29nYW4KS0FMRUQ0M1hVOTIxMFNUQSAoQ2hhbmdob25n
LU9FTSA0SyBMRUQpLiDCoFdpdGhvdXQgdGhlIGZpeCwgdGhlIExHCkczIG11dGVzIGF1ZGlvIC0t
IHRoaXMgaXMgdGhlIG9yaWdpbmFsbHkgcmVwb3J0ZWQgYnVnCihsaW51eC1yb2NrY2hpcCAwNzA2
MzMpLiDCoFRoZSBMRyBDNCB3YXMgdmVyaWZpZWQgZHVyaW5nIHRoaXMgY3ljbGUKdG8gbXV0ZSBh
dCAxODUuNjI1IE1IeiAoMTA4MHA2MCAxMC1iaXQpIHdpdGggdGhlIHVucGF0Y2hlZCBtb2R1bGUu
ClRoZSBLb2dhbiBUViBwbGF5cyBhdWRpbyB3aXRoIG9yIHdpdGhvdXQgdGhlIGZpeDsgaXQgaXMg
YQpwZXJtaXNzaXZlIEhETUkgMi4wIGltcGxlbWVudGF0aW9uIHRoYXQgZG9lcyBub3Qgc3RyaWN0
bHkgY3Jvc3MtCmNoZWNrIEFDUiB0aW1pbmcuIMKgVGhlIFRDTCA3NVA3SyB3YXMgdGVzdGVkIHdp
dGggdGhlIGZpeCBsb2FkZWQKb25seS4KQXVkaW8gcGxheXMgYXQgZXZlcnkgc3VwcG9ydGVkIHNh
bXBsZSByYXRlICgzMiAvIDQ0LjEgLyA0OCAvIDk2IC8KMTkyIGtIeikgdmVyaWZpZWQgb24gdGhl
IFRDTCBhdCB0aGUgMTg1LjYyNSBNSHogb3V0LW9mLXRhYmxlIFRNRFMKcmF0ZSAtLSB0aGUgZmFs
bGJhY2sncyBDVFMgPSAoVE1EUyAqIE4pIC8gKDEyOCAqIEZzKSBjb21wdXRhdGlvbiBpcwppbmRl
cGVuZGVudCBvZiBzYW1wbGUgcmF0ZSwgYXMgZXhwZWN0ZWQuClRoZSBMRyBDNCdzIENUQS04NjEg
U1ZEcyBkbyBub3QgYWR2ZXJ0aXNlIDM4NDB4MjE2MEA2MCBvdmVyIFRNRFMKKGl0IGlzIHNpZ25h
bGxlZCBGUkwtb25seSBvbiB0aGF0IG1vZGVsKSwgc28gdGhhdCBvbmUgcm93IGlzIE4vQQpvbiB0
aGUgQzQuIMKgVGhlIHNhbWUgYXVkaW8tcGF0aCBjb2RlIGlzIGV4ZXJjaXNlZCBhdCAyOTcgTUh6
IG9uCnRoYXQgc2luayBhbmQgYmVoYXZlcyBpZGVudGljYWxseSB0byB0aGUgRzMuClJlcG9ydGVk
LWJ5OiBTaW1vbiBXcmlnaHQgPHNpbW9uQHN5bXBsZS5uej4KQ2xvc2VzOiAKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1yb2NrY2hpcC8yMDI2LU1heS8wNzA2MzMu
aHRtbApTdWdnZXN0ZWQtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVh
QGNvbGxhYm9yYS5jb20+ClRlc3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+
ClNpZ25lZC1vZmYtYnk6IFNpbW9uIFdyaWdodCA8c2ltb25Ac3ltcGxlLm56PgotLS0KIMKgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMgfCAxNSArKysrKysrKysr
KysrKysKIMKgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jIApiL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jCmluZGV4IDBkYmIxMjc0MzYwLi4yNWFj
OGQzY2ZjOCAxMDA2NDQKLS0tYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWktcXAuYworKytiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5j
CkBALTQ2MSw2ICs0NjEsMjEgQEBzdGF0aWMgdm9pZCBkd19oZG1pX3FwX3NldF9zYW1wbGVfcmF0
ZShzdHJ1Y3QgCmR3X2hkbWlfcXAgKmhkbWksIHVuc2lnbmVkIGxvbmcgbG8KIMKgIG4gPSBkd19o
ZG1pX3FwX2ZpbmRfbihoZG1pLCB0bWRzX2NoYXJfcmF0ZSwgc2FtcGxlX3JhdGUpOwogwqAgY3Rz
ID0gZHdfaGRtaV9xcF9maW5kX2N0cyhoZG1pLCB0bWRzX2NoYXJfcmF0ZSwgc2FtcGxlX3JhdGUp
OworIC8qCisgwqAqIGR3X2hkbWlfcXBfZmluZF9jdHMoKSByZXR1cm5zIDAgZm9yIGFueSBUTURT
IHJhdGUgbm90IGluCisgwqAqIGNvbW1vbl90bWRzX2N0c190YWJsZVtdLiDCoEZhbGxpbmcgdGhy
b3VnaCB0byB0aGUgY29udHJvbGxlcidzCisgwqAqIGF1dG8tbWVhc3VyZSBwYXRoIG11dGVzIGF1
ZGlvIG9uIHN0cmljdCBIRE1JIHNpbmtzIGF0IG91dC1vZi0KKyDCoCogdGFibGUgcmF0ZXMgKGUu
Zy4gMTg1LjYyNSBNSHosIDI5NyBNSHosIDU5NCBNSHopLiDCoENvbXB1dGUgQ1RTCisgwqAqIGZy
b20gTiBwZXIgSERNSSBzcGVjIGluc3RlYWQsIHNvIHRoZSBzdGFuZGFyZCBvdmVycmlkZSBwYXRo
CisgwqAqIHN1cHBsaWVzIGl0IG9uIHRoZSB3aXJlLgorIMKgKi8KKyBpZiAoIWN0cyAmJiBuKSB7
CisgwqAgdTY0IGNvbXB1dGVkID0gKHU2NCl0bWRzX2NoYXJfcmF0ZSAqIG47CisKKyDCoCBkb19k
aXYoY29tcHV0ZWQsIDEyOFVMTCAqIHNhbXBsZV9yYXRlKTsKKyDCoCBjdHMgPSAodW5zaWduZWQg
aW50KWNvbXB1dGVkOworIH0KKwogwqAgZHdfaGRtaV9xcF9zZXRfY3RzX24oaGRtaSwgY3RzLCBu
KTsKIMKgfQotLSAKMi41My4wLndpbmRvd3MuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
