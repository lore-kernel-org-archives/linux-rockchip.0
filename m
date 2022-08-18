Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 947EEC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYi4PWEu803r/OFb8uD3ahWb6IShYXCzU9UTuRkcTe8=; b=R+SdjJGRBsIW7c
	DHUQcW8vQIHN8M6civnWNsU7vmvPBDy7ao9aDb/lkfm578wx90nwEFkm1LF9hi78UuXYx28gytN9I
	SGEZaHoGwB2rCuS5+i9pLD+Z9/ZcewStqu4pU9oWsQf8C7MyBq/brsn1BoMZM9ohCNT+vmonfHHTT
	h3QuMzqHJvHmV3Cw5qrA9Srwwcl34LJ2U9SBG7VgMvbTVcMBCnm0ujv5wigHatC2wugd1/HtITHFx
	3bzptyvTajD4Edj6iDvM6Mhxg2qKQV9qC75pFzi5Q8aGyEAaeslqid/92HL8oPNfxOPEOjHmqIvIQ
	N4OlQZMHCC7O+3VNPeXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOikM-007HRa-1y; Thu, 18 Aug 2022 16:51:54 +0000
Received: from mail-dm6nam10olkn2062.outbound.protection.outlook.com ([40.92.41.62] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOiPK-0077KH-Na
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 16:30:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O//puZ5Y+UEv+uq1+4DEgxsgiLXUG+jlY9oYbBa8nVTu6xE1p2WnRpqmhY0QehSG7xzROU20W9eQE5GwzdDN1loByiSp+eQiiJuNznnjs92vDbVzAoi1o+zsXokMpo6k4rGzfaLAAF+7yTgLcsu6bkSWVrCZevYg3OIIsQWlTo/QmjJ7m/W3Bsjz/XzMVNN6UTrhw9c8AGU63k4MmyWaKjtwCw8JsuoDTyoiTKOeJA++epPxIfbb41hQ7wh4nJdt4h/kqwcOJF2f4xV0BS8Gnn4hVJ40vDRA8/26kqD4ESG/lPN2+bvhhl0054k9R4IaGkdweSBhCt6v7quigDwACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5/cKdhWNVrTEVGudPXns8d+TgPYR3BecE8AOtgaZzqg=;
 b=cOibdrPVTKrxFPGV7p3u/WXH7hiSeZFXwUuWkt/BYrYyROYHalu5qHaMblU6VBZMv8P1Lk9NVJD7iJ7tF0dmzVZIHfo3LAIcUDN4jxCnomiwYsEAp3V9WtDXKAYgPSFG8kyI4ANyHhmiCtJmwwutcbxrqRAJaoVWelJiDSCturhZiP6dZ/R/y4pyrsDAFTNqFLRI5WdwEwBTaD52ed4rPWrRrimBg35I+A0jz71IOUsRQWa0URX5sdMZmZCrMbOEvICcC0qbqSUPhTqQ86SD4nDFl5Tsa/pHlR8CPj1jiHuwDKv4MKtcLKluLVBVri1UkRMk5PfpWSh8S4y/6nSiAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/cKdhWNVrTEVGudPXns8d+TgPYR3BecE8AOtgaZzqg=;
 b=VMr6rhvf082Y9GqShjMZgiNBX3pHpG187b0u5bewcEhJkDfX4yHm8ozyZFJ0tewXPbD2DfUA+RQSr2urfpgxiu8BZDMWqmu+MyPS7p7HawN4UoKgf/vImMV+rnP7Yj9sig7V4yirm15P+jsj3YQq6VyU4rU3k+c2BQCHexr/7j+Gho23nD1hvjZpnR6PNCSYmBK4seKC8Dxuz/kjoVavbq/eb82ry/W/JyR8j3ibH7hWxxb0zujfDRyZVprbHP9RwM8rzkEBbe6x9ztAfvrWRS3NlCGI17UnikR/7MszE9M+JdqQcjkM95WgexfXK+irwOSx0UgpEetSZXBDpnKe2g==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN6PR06MB4640.namprd06.prod.outlook.com (2603:10b6:805:95::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Thu, 18 Aug
 2022 16:30:05 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5504.028; Thu, 18 Aug 2022
 16:30:05 +0000
Date: Thu, 18 Aug 2022 11:29:58 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	devicetree <devicetree@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and
 RG503
Message-ID:  <SN6PR06MB5342BB684D2B90214BB2C94EA56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-3-macroalpha82@gmail.com>
 <CAO_Mup+b_u5P0y3wPus8yWj+hmVEdg4-m9o3GzMUWPAXpAr95g@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAO_Mup+b_u5P0y3wPus8yWj+hmVEdg4-m9o3GzMUWPAXpAr95g@mail.gmail.com>
X-TMN: [3lCqFheBc7fd5iclqQiiVLy7Rl+LI+0i]
X-ClientProxiedBy: DM6PR07CA0120.namprd07.prod.outlook.com
 (2603:10b6:5:330::10) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220818162958.GA3920@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf093682-b8b4-40b2-ab74-08da8136e7df
X-MS-TrafficTypeDiagnostic: SN6PR06MB4640:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	1TbVgv6hvKwQScBhUjixfUoZ3sgZcPxrzZqR6LDsHsSRDaMuw2mUB1UXP65CXN1erlJrKs3nqc5ry6RDMXiOQ96CE8cXZ+5JRonXn4HrjIAVz1nyeaCsbBTKjmu2v34Knp3NWkU3o6w/hpJzDLiVopkjH6zMfNJUMDrKwehiZt02/IPvPU1h9Rl7008I3fXbWqfd+LP+n8jOsE2sFXjvf/k6aeqC25a3ErFrB+aZ0apeEPVubuANAo4J+rA0PfQLjedbaVhfKJwhPYND2e2khS/AL5fWB5bSbonzzv80sYWy59o7Cq0f9hJQ+wgam0+H2t5goYQUSAV9Kcbj2Egv+uT+4yPS+q/waONiayEBmA+/r6ccAOfQxdAqPr3yfid0v1sWxQlsdjgU7+Rm7CZ43jPXxM9MLQXG6nen69iP+jv5y7ngzOYyvbsN14/RFCSLTxw8QSQfHwv2gkodSyeRoJADpkFL1jvSJevu1L/CaXEXKlTTVqKFXoUdJtRmpKG9lWlULWIQzlEIY7E3PjbqEAk0bSFe2nlp7btZdq5xmFDuXgVFJK+CrbOqL+n0ihbz6kMQ4+mBpVf5KI6lLpjDakbhCxAbi2DaC/mngMLk2HgkvNVtK9yMW5HUWjbnu9GQMJgyRGG7X+l8xHuay7pYs3kY/r8alnGetxwBe+1wRW73r/w0kzfyr6h3SmYyZaFF
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?dkxiYnJTR2lGa29HRmEvOERhMUd0YWszR3M1SnlNRWdoWDRUVHY3aTFpaWE2?=
 =?utf-8?B?cEgrdkh0UXdXZVN3N0o0ajdFQjZSMUdEQ0N2d0FNUkU3di95UTJ6RzdTSFVG?=
 =?utf-8?B?cEJuaHhybjBCOUY3bjZ5TXF4Nlc2Y2dSYnh2eDFoU2JWZmhYWHlLOFF3cFBa?=
 =?utf-8?B?NUttdFAvWVY1OFUwRmVrZVRtYTAxSEtJeHg4VmpZNGVHUWdYRTN2QkVMb2JF?=
 =?utf-8?B?dS9ZeXFkVktMNXdjRkFXc2N0djQ2Y2hIUGVpNXFTVUlnQWFadWkrcTVtWjc1?=
 =?utf-8?B?TktvZzhyejIzMS9OY3Z6UnJlQWo5eW1ndmh3Uk8rU01JNFpEQ3BiRENQL2ZH?=
 =?utf-8?B?bi9IUVRXU2ZpZi81cGJ6NldPbjIxUU1KU0dqd2NjYzhUa3ozaG9pYVRleTFB?=
 =?utf-8?B?bFFXc1cvNGFWVzlQQStqZi9zTUQ0YXRmTlF6Q1AwWGFxMVhBY2J1YlhyRjFa?=
 =?utf-8?B?cGZNRzhaSnpXcGRsbFZmcGl3R3NIVUQ3dVd4YUkxY1kway9nakhmZ2d2ckFh?=
 =?utf-8?B?TXBxU3ZjN2lOMUVKMDNtSWttWWsvOWl5UnFJRWVLaG5raEdsTlhibzBvRlpo?=
 =?utf-8?B?bWg1UlR6QzlDTGdZbGlYbzVlV2JqSGxieTBQT3pyMFhIc21paHVTeDZUYTJp?=
 =?utf-8?B?c05BM3hQZ3U0NGhmbjJpcUxrUzFaK3cxNnlaK2FPZlNRdEtIUndRcU44V2JX?=
 =?utf-8?B?N2ZFUXExalQwaGt4c0lKM3YwVzVSREUrWmVTTEpwVWI4ZDNyL3B4eUtKc0Fi?=
 =?utf-8?B?SWpkcW5wTGdGT29FSG1UVjBMWHlBelhPYTh0dmh5OTRCazhzbHFhTHFRVHl5?=
 =?utf-8?B?Y0RiNFQ2VVA4amZVcVlWN1cxYU9qbzYvQ1BYNWJISnlMUW5aOENDRldqVnpY?=
 =?utf-8?B?dWhnZkhLT09VSUN2K2tYN2xYYmczK0RWKzlOVEt6MGl2YjBQelVsLzRRcnVE?=
 =?utf-8?B?MlA1R0JKMmc1ekZnVVdHcEpHMkMwV1cxbHM4OS9ZS2k2b1RwcFhzUGdJcy9X?=
 =?utf-8?B?RVNGWENvSXNGYkN0R01wQW95TnVBblYwblVSNjdrWVNQdjBHbGVPdW04VlA5?=
 =?utf-8?B?TE5KRnpDUTJWVGJEOHJWUUVMNzcyd0xYZkQ1MW1SRnFBZW1vZUxUdDdTMmxN?=
 =?utf-8?B?U3lqODFmRzVUeEloUEVzSEhNMXBnSlU0c0VSQ0FhRldSc0tRaURWT2thNE9Y?=
 =?utf-8?B?OEh5RTBST2pyNCt4RnZGZFZWQnlDM0dpWmFwYXlWazJzY3JhR1ZrSGVWKzM4?=
 =?utf-8?B?QkRPTEowMm40cGhnY2VScGx1bW9scGJJd25UOS9UejJFU0pjbkdNeWhBOXN2?=
 =?utf-8?B?akUrNTR0TkpaNWEvbmJmSTZpT1VwMTBjOW1qdXFWVGxaRnN3ZU5kYThmODQv?=
 =?utf-8?B?R25KNHMrdWNvYm1mcDU3VDAxY1BKKzgrcVpnd0FjdkNmWkt4bnZWQVhDeEd2?=
 =?utf-8?B?YVRZOHp6Zm1qZjRqM0t6Zmd5b1hOODh5akVKK21pQTJIQXl4T3FDRUZrUXZU?=
 =?utf-8?B?c0R0ZHNxUWt6Z3VSMDRLQjBCSHg3N0RtYTZ4L1pVR1ZsWmhyZnNERHhWVnND?=
 =?utf-8?B?RGwrS2xrV3ZKVmtzR0lxeXdqUGFqc2lHN0h2MmlLOFJwR1BqUnhBWjc5cFpy?=
 =?utf-8?B?ejY5YVBXaHRMT1lCdzJxLzM3dWk5RnZnR2tsYUtBaTk5WUpJOU5OMHNRejBU?=
 =?utf-8?B?OFlPNzRRS3hZeXBxamZqRFBFaVY3dk1zMUhzZWtRNVZpOFE3amR1TzNRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: bf093682-b8b4-40b2-ab74-08da8136e7df
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 16:30:05.2727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB4640
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_093011_030126_E6154A24 
X-CRM114-Status: GOOD (  15.87  )
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

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMTA6MjY6NThBTSArMDIwMCwgTWF5YSBNYXR1c3pjenlr
IHdyb3RlOgo+IEhleSwKPiAKPiDFm3IuLCAxNyBzaWUgMjAyMiBvIDIyOjUwIENocmlzIE1vcmdh
biA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4gRnJvbTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+Cj4gPiBBZGQgZW50cnkgZm9y
IHRoZSBBbmJlcm5pYyBSRzM1MyBhbmQgUkc1MDMgaGFuZGhlbGQgZGV2aWNlcy4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+ID4g
LS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55
YW1sIHwgMTAgKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAo+ID4gaW5kZXggNzgxMWJhNjQxNDljLi45MDI2OTYzNjk0ZjAgMTAwNjQ0
Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+ID4gQEAgLTMwLDYgKzMwLDE2IEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAg
ICAgIC0gY29uc3Q6IGFtYXJ1bGEsdnlhc2EtcmszMjg4Cj4gPiAgICAgICAgICAgIC0gY29uc3Q6
IHJvY2tjaGlwLHJrMzI4OAo+ID4KPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBBbmJlcm5pYyBS
RzM1Mwo+ID4gKyAgICAgICAgaXRlbXM6Cj4gPiArICAgICAgICAgIC0gY29uc3Q6IGFuYmVybmlj
LHJnMzUzCj4gPiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU2Ngo+IFRoZSBkZXZp
Y2UgaXMgbmFtZWQgUkczNTNQLCBub3QgUkczNTMuCj4gT3RoZXJ3aXNlIHBhdGNoIGxvb2tzIGdv
b2QgdG8gbWUuCgpBY2tub3dsZWRnZWQsIHdpbGwgdXBkYXRlIGluIG5leHQgcGF0Y2ggc2VyaWVz
LgoKPiAKPiBCZXN0IFJlZ2FyZHMsCj4gTWF5YSBNYXR1c3pjenlrCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
