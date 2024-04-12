Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761D4C00A94
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 07:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMI3vFouMAKvla64KfDW2MuITJzGA+GK62GplGc33Jk=; b=v2wtAr38PxmJn0C0m/fyF6/PrC
	M7Gp1urB6u4oRjsGw0Rsg/yrBd7LjYddokJSFwBepsu2zilOFu4y1Z2RCJCRZxWlMxmPLIhxalvcr
	n1mJ4Q+392/w3H/jA2nQyLhDs/TLT57RaJwj4zqAMgr63s/L9m9xpOdbzsEIRHnLW2IxSfQu5Fhj3
	goVYunY3LPdB6aqomhdxGfERa0bCkTWP8Jxf//r6LKlaF1o6yB+oKCWONPkwyRj0dnrhamjY6amnv
	oXuZqPDZmDKsLjDYhdQEYBbmuZj29EQwTyhnrLvSvgJs8SmjjT0hasjpeV3LA+hqvpQ+QVrk814eW
	0kFZ+JqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBca-0000000FuYF-3oHd;
	Fri, 12 Apr 2024 07:46:52 +0000
Received: from mail-psaapc01on20618.outbound.protection.outlook.com ([2a01:111:f400:feae::618] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBcY-0000000FuWE-0OUe
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Apr 2024 07:46:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5aJTftaQAf0EHXzRWqvVvNGielvL6/VxC3h435wIfi8ly5QLEFLS2iCqlyDc1zVkGI9skKmvcnT0dI4dEi/qAxX/YMR7c9GuQ3HEbKPlmA2tFr72ANQ86ORrH0PpTuusgzkXD/TsOkm20/RXb2JofLvXkMEimUTS6VIrM/AqIY90qgHo5tbZu871vYg/nvvJTNN6bTFo3o/EGfZBv57XKpmU8RsrQ/gSlmxujaETOW2xoKSE4Ll9zC6ia9aceNsgPgJ6NZdikIF63hipWNkBrilX9apTs79vvVncfsQQYUghQeg74kd89I7jcxfsCujuHRRjMvk9V6QtARqSN1AVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=98hAcsWlgnWXoieoYTjxrfzHS8zziuzSS6p0iwck0OA=;
 b=bH73xrv3svIkeGcRnJhukgL7F1kgDWdoFKD5ubktasQMPVR60pmhGJ3y+ci165Kr18cVoP4OXLUJ/g3mbdQk/jRcOmcnZZYAx0jkNXI/wNiYiSSM9zArikpvMG/iQvGDpZt69jkm1mph5Vk4mM0dFmkXcpAggeE+X7d07FHR8RNB7k2o7hDpCw1qi5yLQE0b1NK7vF7xwKrM4ziNDPb6SaQFpEH+3LxXlfawYqkoh6rmzrwR1a9leo4NBfFuj8K0YTWik4tYStHM/5NbTauIYE9e5s0zt0Po1P4gHysIe8h60xZkSrbRHbq+2qWXZKNP8MwGRhr92Png/fBfPFj5zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=98hAcsWlgnWXoieoYTjxrfzHS8zziuzSS6p0iwck0OA=;
 b=Nu1InJQUiytPuKgOqWOk+VJUPK3Z0u3vzIH4qLNCYYdD+bOahHghbpHrNPVD2Z9HQkcuFZsxQGmlFInEkHV6Igpw4+eYlfK55hEJFb++ADIlQmOPrG8qmiY9q4MgVcrPb3sNfVvLzoytVG8WljNb86Wnz8NRnGeRwS2139XUtZY40AOG2NUM4ymk8iJEXh5EMHosE94kygwfwQoQd4ccihets5VgFFGf2TElrDofqut3Xe8E1HPhY9SYpoiNjyNJdU3QntL8ILQPX2xi7FK54Yz2MUE+wh5PkbW2s1IUAIS47Vt29x85iOB8X3Sl5NkiYBRfZZq7Zl2TQr8+TxZKrw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 TY0PR06MB6840.apcprd06.prod.outlook.com (2603:1096:405:17::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.46; Fri, 12 Apr 2024 07:46:42 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1%3]) with mapi id 15.20.7409.053; Fri, 12 Apr 2024
 07:46:42 +0000
Message-ID: <c9280752-93e0-4779-9cc4-8a68465ba526@vivo.com>
Date: Fri, 12 Apr 2024 15:46:35 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 sumit.semwal@linaro.org, pekka.paalanen@collabora.com,
 daniel.vetter@ffwll.ch, jason@jlekstrand.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
 <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
 <CABdmKX0AJjdVBPR=3c7oRyDRQx86GCGheVwkheXi7fOkJaRY8A@mail.gmail.com>
From: Rong Qianfeng <11065417@vivo.com>
In-Reply-To: <CABdmKX0AJjdVBPR=3c7oRyDRQx86GCGheVwkheXi7fOkJaRY8A@mail.gmail.com>
X-ClientProxiedBy: TYCP301CA0028.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:381::11) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|TY0PR06MB6840:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cb632e2-95db-4684-4d15-08dc5ac4b1c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CXd4KtyUcgSJZ/Dhxv/9JVpSH/2fKL+D7H0Gwsvt9d1wntyrS+8Fx/xNZrvzBZmXPHY2UtvJ7sZBGl+pIdXb0KGpuGMiu2OrhVDShq7E1qsVnKuDxnAhiOc8YeWg7Lj+MpBFrCYhst9ruLvGf+dUXe41dwQK2a8srcfzjaEKtI7brDnEvv5qp4bb1qCRgrBDyX9blNc/BnDvTb5g67fQWf7ftrNVreLPc3D4Up7hBh269BEPk9UkAFw9l6KRp9Lx5rXuJAwqh2mcT/ac6PjS6Csf9t/9Pln+13JzVuG0LElFxBYKJ8ZNP7AMSB/oHkF8EhtaL3ocx426G9FNhfdWU7ljQoVRsLi+e/6zH/+7RTx1cMUHlbSZlh3MfX1RcgVZv2PWl5b1MciZaXcitMFGu9Smj7gFwKTB7nANawf1fKv6zooBIa6PuQIrIzXTDPRpLAG3/KikQHCm1MwZgFPmgVFS8LHA83umKRcQKR3Mi4pjt6GD4xzLoM4nipxIFdrAxoQ7QXL928viWseMROurszdUCu6RAG1Fqnw0wZbubumPxlladn3RsTl0yw2pcotM10F9AYlyi9p9x+DZZEDtDmJa5YpNgCDfC8z0rHeh5PdYlkXDxDmU+Mve5DmPqY5vinCc/eSRwlFcsboFfS17SYQuhye33zblefUZkho2MCpA8vQJemqNqpX/jqj0ifVb
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5140.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(52116005)(376005)(7416005)(366007)(38350700005)(81742002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1lqZk4wQWNZdGFhcjQ1aWc0c3NvampHcDhRK0d2TllKWHdxWW5UWnE3QXY1?=
 =?utf-8?B?dDZSaml0ZXJqWmJjcVZjbnpPMmpJT1lwQURwclhFR3JqTXdWNnd6VU5aalpr?=
 =?utf-8?B?TmMzdU9HOXExcWdIU0VXdnhsVlVWU0N5VkZ1YWJpYkw4dEs4OENBMkcrRW9K?=
 =?utf-8?B?bzFqYk00d2x0UHEzRk9Wd2RvZHY5Wkg2a2g5Rm5rNHRuNFA0K0pib0xnQUtp?=
 =?utf-8?B?M3M1cnZPMGFpKzhTQi9ROGNWNExvbUhtOUtlYjMxWjl0WnA2TWRsSG5TUmpk?=
 =?utf-8?B?c2NOSDFzQnlaYVlyVjRRNC9hYnZKR1krYmlJTUlkL05jVXc1Vzk2TlNOS3dn?=
 =?utf-8?B?cStPZWowOEppWlNRdERUNUg2aC91Z28wdmtJSjFEU21lWHpNL1JCMG1JTUtt?=
 =?utf-8?B?VUVLRlVXRjJiRWFTNDhpNGNzbUh4TzJ4SnUzMlYxMzRoSmdhdmJrS0xDMUdP?=
 =?utf-8?B?MlRibGRZeFZHN1lleTJLYStsdmxpdGNxdjk3Ulh1WDZCdWZHSkw3SUFmcUI0?=
 =?utf-8?B?Y1hOazVRWGNycEw5dm9JbnAyejVzWDAxM09JUE04MmYyZWEzU2Jid2J5MVdk?=
 =?utf-8?B?eVFVUGdoREpkbi96MEdTallwRVVmYis5Y0RDTy9UNzdteDI0RVBFeU11ZDJG?=
 =?utf-8?B?QW9HYlUwTDZ3d3l3eHhPRG5KeUIyZzNkdG5FRWJERW9aN0RYNHNqVE54RTVR?=
 =?utf-8?B?ZHBKazZ3ZVNCMFkyZ3dGL0tXcVhILzFxMDl0S3lYcC9hNGlMNldIYnpnU21U?=
 =?utf-8?B?SEdFaStIWGE0eEJEcGdtNlpFR2FIQjRmYnFSalNZUUF1UlR4Q0xUYncwQ2Fw?=
 =?utf-8?B?VUg1cXlXRVUwL2YvRmJ2YmlvWEozQms4L0VhZitzZWhFZkswbkdvZ0lTYW5m?=
 =?utf-8?B?Ri9UMHM2OEJZeVZPSmYvM3MvalJzbmNZSXV0UGV0RWFiS1dWZkoyZ3ZLWllE?=
 =?utf-8?B?Vk85VENtcHE1SHNDY2ZJWFFadXlrVzJ6VVpKV0taVSs1V0t0aUdvNEdLUHVo?=
 =?utf-8?B?VUpnTVF3Z1JheEV4L0phU2NBMGIwaEIxdTl4dmFmNTlrcjgrNFcwd0Z5elNr?=
 =?utf-8?B?TnVVQ0RFZ2l5MEF5MEFzblQrU0pWeEdDWHdEc2dMcHlJUFpLRkRKQjByUkl6?=
 =?utf-8?B?WEIxU1lZWW5XYTNNMkllRnhzRk9Vc05wbVVSYlJDVXozaFIrTmF0d0RJNkVu?=
 =?utf-8?B?T2ExcXNQeWo5UEtBWUlCdEZtS09vWXFrakhyUWVQZ1EwaHdFQnFsMTdVenNh?=
 =?utf-8?B?eUxzS1pBMk02dU16UHhNSk1ISnNwTnBaUnFvRUZzQVVTbEIwUzN5c0pHTEJ1?=
 =?utf-8?B?SmV2WUlRUEdXS0phdXptL3A1Q1dvVXBMdm1pWHp0TlpOSHgwUCtVMU1KRm1Z?=
 =?utf-8?B?bUozRE5ENlR3UnRna09DQ01kNzh5UmFRN1BCVnIyVGQ5QzhQY3VzeXJQaWdm?=
 =?utf-8?B?QnZhek52bTU1VStIYk1ZdWMva1cvUGtQNjFNVmNLSXhRNXBSMDYrc2JteStQ?=
 =?utf-8?B?aWNaM3ZZU2o4VUFHMnkvNjlYZFRJc2xWKzNJODJ3T2luWURzN1ZRQVdqdWlF?=
 =?utf-8?B?azJkTDBuSmRCMEkvRXJNV09BaWtvUWcyeUtQTnpqNnExMHhVejhRZmRVQjVQ?=
 =?utf-8?B?NjVQR3J3MThWa2hObFkwZjR3S0lSUGNWd2lha1IycGw5dk0wYllFc3JxU25O?=
 =?utf-8?B?TW9xL3BFY3N6clBIcE4yTnA5RXRXV2RlbnVKNVJMblR2MHlaNUNvSkh6Nm9k?=
 =?utf-8?B?MVhDdXB0RzhOK1drZTJMaFpGTGpMSE4yU0t5b0M4Mmh1Wk9JaEJnZy85Z3RQ?=
 =?utf-8?B?NDV2R0MzMDI5S21BVWRuaDk1WUQ4c1B2WEtRLzlnS04xRTdBbVhqVkh5VVpI?=
 =?utf-8?B?Qitic1Y0NFRRY0tBQVl1dllNdE1Ha0ZrV1pKeGhrZk52UEpZYm96UStPTEJR?=
 =?utf-8?B?RkRBaDBwbkxHQmhIbUlqd0NnQ0wydTBNb1JWUGVPWVdOMzFxbUZyRUE5c3No?=
 =?utf-8?B?dGFUdi9DL1hyZEhuaEwxZ1NPdHlZYnM4S09YT0t1OURnUTJ6MzBBZE5VdU8z?=
 =?utf-8?B?SnRCQzU3TENIUHNaaUVqOTc5blBEYlk1OWROcHQwQmsvOHlGZEtRcVhONk55?=
 =?utf-8?Q?h2WhDB6RH+OBL8oHIH3iKWlv3?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb632e2-95db-4684-4d15-08dc5ac4b1c0
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 07:46:42.4439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y0H7HW3jE0/6ANlv/z9CaTiVzsnA0TjKCpddxVV2EAFLhRat1DZNnHxZo9DvPBKQoQGqdpsJKEFxMOiTzSwrvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB6840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_004650_535405_17636149 
X-CRM114-Status: GOOD (  35.59  )
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

CuWcqCAyMDI0LzQvMTIgMDo1MiwgVC5KLiBNZXJjaWVyIOWGmemBkzoKPiBPbiBUaHUsIEFwciAx
MSwgMjAyNCBhdCAxOjIx4oCvQU0gUm9uZyBRaWFuZmVuZyA8MTEwNjU0MTdAdml2by5jb20+IHdy
b3RlOgo+Pgo+PiDlnKggMjAyNC80LzEwIDA6MzcsIFQuSi4gTWVyY2llciDlhpnpgZM6Cj4+PiBb
WW91IGRvbid0IG9mdGVuIGdldCBlbWFpbCBmcm9tIHRqbWVyY2llckBnb29nbGUuY29tLiBMZWFy
biB3aHkgdGhpcyBpcyBpbXBvcnRhbnQgYXQgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRl
cklkZW50aWZpY2F0aW9uIF0KPj4+Cj4+PiBPbiBUdWUsIEFwciA5LCAyMDI0IGF0IDEyOjM04oCv
QU0gUm9uZyBRaWFuZmVuZyA8MTEwNjU0MTdAdml2by5jb20+IHdyb3RlOgo+Pj4+IOWcqCAyMDI0
LzQvOCAxNTo1OCwgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4+Pj4+IEFtIDA3LjA0LjI0IHVt
IDA5OjUwIHNjaHJpZWIgUm9uZyBRaWFuZmVuZzoKPj4+Pj4+IFtTTklQXQo+Pj4+Pj4+IEFtIDEz
LjExLjIxIHVtIDA3OjIyIHNjaHJpZWIgSmlhbnF1biBYdToKPj4+Pj4+Pj4gQWRkIERNQV9CVUZf
SU9DVExfU1lOQ19QQVJUSUFMIHN1cHBvcnQgZm9yIHVzZXIgdG8gc3luYyBkbWEtYnVmIHdpdGgK
Pj4+Pj4+Pj4gb2Zmc2V0IGFuZCBsZW4uCj4+Pj4+Pj4gWW91IGhhdmUgbm90IGdpdmVuIGFuIHVz
ZSBjYXNlIGZvciB0aGlzIHNvIGl0IGlzIGEgYml0IGhhcmQgdG8KPj4+Pj4+PiByZXZpZXcuIEFu
ZCBmcm9tIHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgc2hvdWxk
Cj4+Pj4+Pj4gYmUgbmVjZXNzYXJ5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRo
ZSBleGlzdGluZyBiYWNrZW5kIGltcGxlbWVudGF0aW9uIEkgZG9uJ3QgZXZlbiBzZWUKPj4+Pj4+
PiBob3cgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLgo+
Pj4+Pj4+Cj4+Pj4+Pj4gUGxlYXNlIGV4cGxhaW4gZnVydGhlciwKPj4+Pj4+PiBDaHJpc3RpYW4u
Cj4+Pj4+PiBIZXJlIGlzIGEgcHJhY3RpY2FsIGNhc2U6Cj4+Pj4+PiBUaGUgdXNlciBzcGFjZSBj
YW4gYWxsb2NhdGUgYSBsYXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcgo+Pj4+Pj4gc2VsZi1tYW5h
Z2VtZW50LCB1c2VkIGFzIGEgc2hhcmVkIG1lbW9yeSBwb29sLgo+Pj4+Pj4gU21hbGwgZG1hLWJ1
ZiBjYW4gYmUgYWxsb2NhdGVkIGZyb20gdGhpcyBzaGFyZWQgbWVtb3J5IHBvb2wgYW5kCj4+Pj4+
PiByZWxlYXNlZCBiYWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3ZpbmcgdGhlIHNwZWVk
IG9mIGRtYS1idWYKPj4+Pj4+IGFsbG9jYXRpb24gYW5kIHJlbGVhc2UuCj4+Pj4+PiBBZGRpdGlv
bmFsbHksIGN1c3RvbSBmdW5jdGlvbmFsaXRpZXMgc3VjaCBhcyBtZW1vcnkgc3RhdGlzdGljcyBh
bmQKPj4+Pj4+IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNl
ciBzcGFjZS4KPj4+Pj4+IE9mIGNvdXJzZSwgdGhlIGFib3ZlLW1lbnRpb25lZCBmdW5jdGlvbmFs
aXRpZXMgcmVxdWlyZSB0aGUKPj4+Pj4+IGltcGxlbWVudGF0aW9uIG9mIGEgcGFydGlhbCBjYWNo
ZSBzeW5jIGludGVyZmFjZS4KPj4+Pj4gV2VsbCB0aGF0IGlzIG9idmlvdXMsIGJ1dCB3aGVyZSBp
cyB0aGUgY29kZSBkb2luZyB0aGF0Pwo+Pj4+Pgo+Pj4+PiBZb3UgY2FuJ3Qgc2VuZCBvdXQgY29k
ZSB3aXRob3V0IGFuIGFjdHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdpbGwKPj4+Pj4gb2J2aW91c2x5
IGJlIHJlamVjdGVkLgo+Pj4+Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBDaHJpc3RpYW4uCj4+Pj4g
SW4gZmFjdCwgd2UgaGF2ZSBhbHJlYWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1v
cnkgcG9vbCBpbiB0aGUKPj4+PiBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhlIHBob25l
Lgo+Pj4+Cj4+Pj4gICAgRnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0aW9uIHRpbWUg
b2YgdGhlIHBob3RvIHNob290aW5nCj4+Pj4gYWxnb3JpdGhtIGhhcyBiZWVuIHJlZHVjZWQgZnJv
bSAzLjhzIHRvIDNzLgo+Pj4+Cj4+PiBGb3IgcGhvbmVzLCB0aGUgKG91dCBvZiB0cmVlKSBBbmRy
b2lkIHZlcnNpb24gb2YgdGhlIHN5c3RlbSBoZWFwIGhhcyBhCj4+PiBwYWdlIHBvb2wgY29ubmVj
dGVkIHRvIGEgc2hyaW5rZXIuIFRoYXQgYWxsb3dzIHlvdSB0byBza2lwIHBhZ2UKPj4+IGFsbG9j
YXRpb24gd2l0aG91dCBmdWxseSBwaW5uaW5nIHRoZSBtZW1vcnkgbGlrZSB5b3UgZ2V0IHdoZW4K
Pj4+IGFsbG9jYXRpbmcgYSBkbWEtYnVmIHRoYXQncyB3YXkgbGFyZ2VyIHRoYW4gbmVjZXNzYXJ5
LiBJZiBpdCdzIGZvciBhCj4+PiBjYW1lcmEgbWF5YmUgeW91IG5lZWQgcGh5c2ljYWxseSBjb250
aWd1b3VzIG1lbW9yeSwgYnV0IGl0J3MgYWxzbwo+Pj4gcG9zc2libGUgdG8gc2V0IHRoYXQgdXAu
Cj4+Pgo+Pj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL2NvbW1vbi8r
L3JlZnMvaGVhZHMvYW5kcm9pZDE0LTYuMS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hl
YXAuYyMzNzcKPj4+Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIHJlbWluZGVyLgo+Pgo+PiBUaGUgcGFn
ZSBwb29sIG9mIHRoZSBzeXN0ZW0gaGVhcCBjYW4gbWVldCB0aGUgbmVlZHMgb2YgbW9zdCBzY2Vu
YXJpb3MsCj4+IGJ1dCB0aGUgY2FtZXJhIHNob290aW5nIHNjZW5hcmlvIGlzIHF1aXRlIHNwZWNp
YWwuCj4+Cj4+IFdoeSB0aGUgY2FtZXJhIHNob290aW5nIHNjZW5hcmlvIG5lZWRzIHRvIGhhdmUg
YSBkbWEtYnVmIG1lbW9yeSBwb29sIGluCj4+IHRoZSB1c2VyLWxldmVs77yfCj4+Cj4+ICgxKSBU
aGUgbWVtb3J5IGRlbWFuZCBpcyBleHRyZW1lbHkgaGlnaCBhbmQgdGltZSByZXF1aXJlbWVudHMg
YXJlCj4+IHN0cmluZ2VudC4KPiBQcmVhbGxvY2F0aW5nIGZvciB0aGlzIG1ha2VzIHNlbnNlIHRv
IG1lLCB3aGV0aGVyIGl0IGlzIGluZGl2aWR1YWwKPiBidWZmZXJzIG9yIG9uZSBsYXJnZSBvbmUu
Cj4KPj4gKDIpIFRoZSBtZW1vcnkgaW4gdGhlIHBhZ2UgcG9vbChzeXN0ZW0gaGVhcCkgaXMgZWFz
aWx5IHJlY2xhaW1lZCBvciB1c2VkCj4+IGJ5IG90aGVyIGFwcHMuCj4gWWVhaCwgYnkgZGVzaWdu
IEkgZ3Vlc3MuIEkgaGF2ZSBzZWVuIGFuIGltcGxlbWVudGF0aW9uIHdoZXJlIHRoZSBwYWdlCj4g
cG9vbCBpcyBwcm9hY3RpdmVseSByZWZpbGxlZCBhZnRlciBpdCBoYXMgYmVlbiBlbXB0eSBmb3Ig
c29tZSB0aW1lCj4gd2hpY2ggd291bGQgaGVscCBpbiBzY2VuYXJpb3Mgd2hlcmUgdGhlIHBvb2wg
aXMgb2Z0ZW4gcmVjbGFpbWVkIGFuZAo+IGxvdy9lbXB0eS4gWW91IGNvdWxkIGFkZCB0aGF0IGlu
IGEgdmVuZG9yIGhlYXAuClllYWgsIGEgc2ltaWxhciBmZWF0dXJlIGhhcyBhbHJlYWR5IGJlZW4g
aW1wbGVtZW50ZWQgYnkgdmVuZG9yLgo+Cj4+ICgzKSBIaWdoIGNvbmN1cnJlbnQgYWxsb2NhdGlv
biBhbmQgcmVsZWFzZSAod2l0aCBkZWZlcnJlZC1mcmVlKSBsZWFkIHRvCj4+IGhpZ2ggbWVtb3J5
IHVzYWdlIHBlYWtzLgo+IEhvcGVmdWxseSB0aGlzIGlzIG5vdCBldmVyeSBmcmFtZT8gSSBzYXcg
ZW5vdWdoIGNvbXBsYWludHMgYWJvdXQgdGhlCj4gZGVmZXJyZWQgZnJlZSBvZiBwb29sIHBhZ2Vz
IHRoYXQgaXQgaGFzbid0IGJlZW4gY2FycmllZCBmb3J3YXJkIHNpbmNlCj4gQW5kcm9pZCAxMywg
c28gdGhpcyBzaG91bGQgYmUgbGVzcyBvZiBhIHByb2JsZW0gb24gcmVjZW50IGtlcm5lbHMuCj4K
Pj4gQWRkaXRpb25hbGx5LCBhZnRlciB0aGUgY2FtZXJhIGV4aXRzLCB0aGUgc2hhcmVkIG1lbW9y
eSBwb29sIGNhbiBiZQo+PiByZWxlYXNlZCwgd2l0aCBtaW5pbWFsIGltcGFjdC4KPiBXaHkgZG8g
eW91IGNhcmUgYWJvdXQgdGhlIGRpZmZlcmVuY2UgaGVyZT8gSW4gb25lIGNhc2UgaXQncyB3aGVu
IHRoZQo+IGJ1ZmZlciByZWZjb3VudCBnb2VzIHRvIDAgYW5kIG1lbW9yeSBpcyBmcmVlZCBpbW1l
ZGlhdGVseSwgYW5kIGluIHRoZQo+IG90aGVyIGl0J3MgdGhlIG5leHQgdGltZSByZWNsYWltIHJ1
bnMgdGhlIHNocmlua2VyLgpJJ20gc29ycnksIG15IGRlc2NyaXB0aW9uIHdhc24ndCBjbGVhciBl
bm91Z2guIFdoYXQgSSBtZWFudCB0byBleHBsYWluIAppcyB0aGF0CnRoZSB1c2VyLWxldmVsIGRt
YS1idWYgbWVtb3J5IHBvb2wgZG9lcyBub3QgdXNlIHJlc2VydmVkIG1lbW9yeQoocGh5c2ljYWxs
eSBjb250aWd1b3VzIG1lbW9yeSksIGFuZCB0aGUgbWVtb3J5b2NjdXBhdGlvbiB0aW1lIGlzIG5v
dCB0b28KbG9uZywgcmVzdWx0aW5nIGluIGEgbWluaW1hbCBpbXBhY3Qgb24gdGhlIHN5c3RlbS4K
Pgo+Cj4gSSBkb24ndCB3YW50IHRvIGFkZCBVQVBJIGZvciBETUFfQlVGX0lPQ1RMX1NZTkNfUEFS
VElBTCB0byBBbmRyb2lkCj4gd2l0aG91dCBpdCBiZWluZyBpbiB0aGUgdXBzdHJlYW0ga2VybmVs
LiBJIGRvbid0IHRoaW5rIHdlIGNhbiBnZXQgdGhhdAo+IHdpdGhvdXQgYW4gaW4ta2VybmVsIHVz
ZXIgb2YgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzX3BhcnRpYWwgZmlyc3QsCj4gZXZlbiB0aG91
Z2ggeW91ciB1c2UgY2FzZSB3b3VsZG4ndCByZWx5IG9uIHRoYXQgaW4ta2VybmVsIHVzYWdlLiA6
XCBTbwo+IGlmIHlvdSB3YW50IHRvIGFkZCB0aGlzIHRvIHBob25lcyBmb3IgeW91ciBjYW1lcmEg
YXBwLCB0aGVuIEkgdGhpbmsKPiB5b3VyIGJlc3Qgb3B0aW9uIGlzIHRvIGFkZCBhIHZlbmRvciBk
cml2ZXIgd2hpY2ggaW1wbGVtZW50cyB0aGlzIElPQ1RMCj4gYW5kIGNhbGxzIHRoZSBkbWFfYnVm
X2JlZ2luX2NwdV9hY2Nlc3NfcGFydGlhbCBmdW5jdGlvbnMgd2hpY2ggYXJlCj4gYWxyZWFkeSBl
eHBvcnRlZC4KT2ssIHRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgc3VnZ2VzdGlvbi4gSSB3
aWxsIGRlZmluaXRlbHkgdGFrZSBpdCAKaW50byBjb25zaWRlcmF0aW9uLgo+Cj4gQmVzdCwKPiBU
LkouCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
