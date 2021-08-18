Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645ECC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 15:03:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BD03604D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 15:03:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1BD03604D7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prGx0qdn0CKgvUJh7NBmDBU5Tc3BywzW9Hk5MuwJT8A=; b=yNtopVU1W0UlmH
	8OJ5sJaflu6I4LDhZn/2epCl46zEpsuKuu4/2fcZfSbNj2bzNPWkcoVgaRoLS1VfgbT0KAZYPJsTF
	l+zFYVzwCQ14tbe0vqHobZyDTUP+vGBCJa9nDGYsROtC+R2BwUJseaOTWfnRIWAlQBk2hfC02kk8z
	ctuN+PY8uPW8mu6vvzpDX5YoNh8fSzWmQmiGb0NKlnesAM3b6BNOZQncLZ3zzBWf+SqLozZ3ARt1Z
	0zoKEPIBmcEnNa4RQeDlm3jgV6Kp135PxQgUv1z6keVuKpY2Q4P2IDVOMOHHgXh0CIYyzqsVaSwXL
	9brGb1EbMpA7tFCqZ++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGN66-005yYa-HW; Wed, 18 Aug 2021 15:03:18 +0000
Received: from mail-dm6nam10olkn2108.outbound.protection.outlook.com
 ([40.92.41.108] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGN63-005yY5-7S
 for linux-rockchip@lists.infradead.org; Wed, 18 Aug 2021 15:03:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d9QfGAWTTBxjtIMov2qRJLXAJFaH0ahUzpI5n271GmBhICKbyL0qv0ET0/M00ZjOgimI1p+R6I2kJ/pjLrCl3DdoOAE5GfVFSw8UET6j4mc8GkdHq0yOJwfxcNz4mXcBz0mKBjX+m3Tb1YkRnaOdtPzy3bAVVL+yCp+PsUCG99O/+AKwOMJBuKO+OGVb9BAanpv6RcagO2jNrn9rA+ou6Y2+2fD29qiPQ8ZzhNumLTm59rJCptVYID/sDnfcmvtBfcWhABg4WxgfDvyGT2gdckGgvlapP5O43cQGBALvtY9/BSeOAypuyIYDzEb0+QtINhr5HtjqtnHvEva0Tvz9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UipzoYRTl0IDixYh2fP07dt6oUJ3cVPpzQNrI4QhZHY=;
 b=R6siMkXikISXVk8NCELHFW/k1VlzOvcg5tJy39vFHXvtl8ERhGTjzkpX7cB4pAYRv5rnMgpGbKMagVKYDh06nKtpdeC4gaJiodMJuM1MU3rWtPlJAm0Z96mIdRLVhZPuRl6jzjLFZtuCLkKafH/baJq8bPY/I8E9z8ICL4PagtzqpX89RY/McEywkqz16Xo34dT+2m3ESAx37UhjzFUkxtkBu2phX0rlEOPn1ejrCAfozuqpMt+bCjyF6UI11SzZ9nvXG+9HTHczcNEaFG5G5ubliMSiC+yG80ZECuXiXpDN9otaGhFT7iXuNU1FJFCSwoCDKOAhUcacpnmxH3wymQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UipzoYRTl0IDixYh2fP07dt6oUJ3cVPpzQNrI4QhZHY=;
 b=gBwbLkFk/KY+PPhHlf/t3vDHM3XaoClyfmqZtuWAcI385XGgMx/qLC7nmUtwWF3dyN2ghk0E6gK7TBX+aqprWzEiYLP8oIKk0uE06gSJJg5A68NYu9CRJRYjo/G+KiedslyNYg6g3BsubcsUYUqHyBmBJ8h9p1BBiQJxKwoxUjtY4tyQyO9JkeaZuKGaPUGb2gdsueyNp3/b6aLlEIAIn1gCzmRnBopFAsggP4v7kjMKElD6JlrlDBZQ2FvFWPOrMjktzEVzF7HmGci41ZSGQFicsnvCd189sizf2OCGVKmppWw07jOZ5y/6ozoVVhURRHhmVsaAARikALbkccRTaQ==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN7PR06MB7183.namprd06.prod.outlook.com (2603:10b6:806:105::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Wed, 18 Aug
 2021 15:03:10 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43%7]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 15:03:10 +0000
Date: Wed, 18 Aug 2021 10:03:09 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 lee.jones@linaro.org, pgwipeout@gmail.com
Subject: Re: [PATCH v3 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <SN6PR06MB534295DCDF84CEA9D33535CEA5FF9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210810025436.23367-1-macroalpha82@gmail.com>
 <20210810025436.23367-2-macroalpha82@gmail.com>
 <YRwJ/riSIGfNu64B@robh.at.kernel.org>
Content-Disposition: inline
In-Reply-To: <YRwJ/riSIGfNu64B@robh.at.kernel.org>
X-TMN: [EZjovhsy9nkEFL7Bo3r3K1gCzIxvc+PX]
X-ClientProxiedBy: SN1PR12CA0048.namprd12.prod.outlook.com
 (2603:10b6:802:20::19) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210818150309.GA29044@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN1PR12CA0048.namprd12.prod.outlook.com (2603:10b6:802:20::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Wed, 18 Aug 2021 15:03:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee124fa4-6d0d-4030-7ea7-08d962594b33
X-MS-TrafficTypeDiagnostic: SN7PR06MB7183:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fWTu9PxHgmPlE424qD8ickJDzGqsCoashfVSqFmTLir6IVRw5fnwW3QCQejEf2iFDsi6ah1LUsVOEO/qEA/rnAsCiiHX9FLGnKERxzKN8iJo0JxHjJpKoj+tPQuC9EHZwuu3ULxJ9lnMFxcb2oBU+qVkyCgq/utUoSXuwgbcYnnIDr2gQ4CXzT0Ss5A2BFkb+p1+0sliZbtWNTZgrTdx0z88jPK28dX3yL2stPmTNKwZlAXDpxmbArSTidx8k3GvkR4cHPtLKEY4ddxm1ZgI8a9p4Gx124yxbFNl3HR6vXNLKJzW7qNVGgeU7MJSFHQ/RcbeLj47sKVM7IhZd1+zbLoCI8kkiTDugqwFLLBAehzcbMRuf91STw6HeVXLbmmIZH9citVPH9Pi7n5L3eWt/PiC597UqDGH2svOU06diGKzmew6y9xBsIn32Y5WFbvQ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: c958OyZQQHkKUgExIY5waRKRSbE3jb0wws9VZq603ekw0ghZa8A9CIhqqITOZbZTsCFKpGueLmNmRw4fizmvyXlNBJJjsiZtWQW+ppLc5s2u8gKAToDbII+LY2ObfaI2Tzscmro8dKqLedJlUFCTCA==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ee124fa4-6d0d-4030-7ea7-08d962594b33
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 15:03:10.8669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_080315_506151_1F0ABFA4 
X-CRM114-Status: GOOD (  35.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVHVlLCBBdWcgMTcsIDIwMjEgYXQgMDI6MTE6NThQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gTW9uLCBBdWcgMDksIDIwMjEgYXQgMDk6NTQ6MzNQTSAtMDUwMCwgQ2hyaXMgTW9y
Z2FuIHdyb3RlOgo+ID4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNv
bT4KPiA+IAo+ID4gQ3JlYXRlIGR0LWJpbmRpbmcgZG9jdW1lbnRhdGlvbiB0byBkb2N1bWVudCBy
azgxNyBiYXR0ZXJ5IGFuZCBjaGFyZ2VyCj4gPiB1c2FnZS4gTmV3IGRldmljZS10cmVlIHByb3Bl
cnRpZXMgaGF2ZSBiZWVuIGFkZGVkLgo+ID4gCj4gPiAtIHJvY2tjaGlwLHJlc2lzdG9yLXNlbnNl
LW1pY3JvLW9obXM6IFRoZSB2YWx1ZSBpbiBtaWNyb29obXMgb2YgdGhlCj4gPiAJCQkJICAgICAg
c2FtcGxlIHJlc2lzdG9yLgo+ID4gLSByb2NrY2hpcCxzbGVlcC1lbnRlci1jdXJyZW50LW1pY3Jv
YW1wOiBUaGUgdmFsdWUgaW4gbWljcm9hbXBzIG9mIHRoZQo+ID4gCQkJCQkgc2xlZXAgZW50ZXIg
Y3VycmVudC4KPiA+IC0gcm9ja2NoaXAsc2xlZXAtZmlsdGVyLWN1cnJlbnQ6IFRoZSB2YWx1ZSBp
biBtaWNyb2FtcHMgb2YgdGhlIHNsZWVwCj4gPiAJCQkJIGZpbHRlciBjdXJyZW50Lgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+
ID4gU2lnbmVkLW9mZi1ieTogTWF5YSBNYXR1c3pjenlrIDxtYWNjcmFmdDEyM21jQGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yazgwOC50eHQgICAg
ICAgICB8IDM2ICsrKysrKysrKysrKysrKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IEtpbmQgb2YgYSBiaWcgY2hhbmdlIHdpdGhv
dXQgY29udmVydGluZyB0aGlzIGJpbmRpbmcgdG8gRFQgc2NoZW1hIGZpcnN0LiAKCkkgY2FuIHRy
eSB0byBjb252ZXJ0IHRoZSBiaW5kaW5ncyB0byB5YW1sLCBidXQgSSBtaWdodCBuZWVkIHNvbWUg
aGVscC4KSXTigJlzIGEgcHJldHR5IGJpZyBmaWxlIGFuZCB0aGVyZeKAmXMgbG90cyBvZiBydWxl
cyBmb3IgZWFjaCBvZiB0aGUKZGlmZmVyZW50IGNvbXBhdGlibGVzLiBEbyB5b3Uga25vdyBvZiBh
IGdvb2QgZXhhbXBsZSB3aGVyZSBJIGNhbiBmaW5kCm9uZSB3aXRoIGNvbXBhdGlibGUgc3BlY2lm
aWMgcnVsZXM/IEFsbCBvZiB0aGUgbWZkIG9uZXMgSSBsb29rZWQgYXQKZG9u4oCZdCBzZWVtIHRv
IGhhdmUgbXVjaCAoYW5kIG15IGF0dGVtcHQgaXMgdHJpZ2dlcmluZyB5YW1sbGludCBhYm91dApk
dXBsaWNhdGUgaWYvdGhlbiBrZXlzKS4KClRoYW5rIHlvdS4KCj4gCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JrODA4LnR4dCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcms4MDgudHh0Cj4gPiBpbmRleCAy
M2ExN2E2NjYzZWMuLjg5YjlmYTdlMTBiNSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcms4MDgudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JrODA4LnR4dAo+ID4gQEAgLTcwLDEzICs3MCw0MCBA
QCBPcHRpb25hbCBSSzgxNyBwcm9wZXJ0aWVzOgo+ID4gIAo+ID4gIC0gdmNjOC1zdXBwbHk6ICBU
aGUgaW5wdXQgc3VwcGx5IGZvciBCT09TVAo+ID4gIC0gdmNjOS1zdXBwbHk6ICBUaGUgaW5wdXQg
c3VwcGx5IGZvciBPVEdfU1dJVENICj4gPiArCj4gPiAgLSBjb2RlYzoJVGhlIGNoaWxkIG5vZGUg
Zm9yIHRoZSBjb2RlYyB0byBob2xkIGFkZGl0aW9uYWwgcHJvcGVydGllcy4KPiA+ICAJCUlmIG5v
IGFkZGl0aW9uYWwgcHJvcGVydGllcyBhcmUgcmVxdWlyZWQgZm9yIHRoZSBjb2RlYywgdGhpcwo+
ID4gIAkJbm9kZSBjYW4gYmUgb21pdHRlZC4KPiA+IC0KPiAKPiBVbnJlbGF0ZWQgd2hpdGVzcGFj
ZSBjaGFuZ2VzLgoKSSB0aG91Z2h0IHRoZSB3aGl0ZXNwYWNlIGhlbHBlZCBzZXBlcmF0ZSB0aGUg
c3VwcGxpZXMgZnJvbSB0aGUgY29kZWMsCmFuZCBkaWQgdGhlIHNhbWUgdGhpbmcgd2l0aCB3aGl0
ZXNwYWNlIHRvIHNlcGVyYXRlIHRoZSBiYXR0ZXJ5IGZyb20KdGhlIGNvZGVjLiBJIGNhbiBjaGFu
Z2UgaXQgYmFjayBpZiBuZWVkIGJlLgoKPiAKPiA+ICAtIHJvY2tjaGlwLG1pYy1pbi1kaWZmZXJl
bnRpYWw6IFRlbGxpbmcgaWYgdGhlIG1pY3JvcGhvbmUgdXNlcyBkaWZmZXJlbnRpYWwKPiA+ICAJ
CQkJbW9kZS4gU2hvdWxkIGJlIHVuZGVyIHRoZSBjb2RlYyBjaGlsZCBub2RlLgo+ID4gIAo+ID4g
Ky0gYmF0dGVyeToJVGhlIGNoaWxkIG5vZGUgZm9yIHRoZSBjaGFyZ2VyIHRvIGhvbGQgYWRkaXRp
b25hbCBwcm9wZXJ0aWVzLgo+ID4gKwkJSWYgYSBiYXR0ZXJ5IGlzIG5vdCBpbiB1c2UsIHRoaXMg
bm9kZSBjYW4gYmUgb21pdHRlZC4gSWYgYQo+ID4gKwkJYmF0dGVyeSBub2RlIGlzIHVzZWQsIHRo
ZSBmb2xsb3dpbmcgdmFsdWVzIGFyZSByZXF1aXJlZDoKPiA+ICsJCXJvY2tjaGlwLHJlc2lzdG9y
LXNlbnNlLCByb2NrY2hpcCxzbGVlcC1lbnRlci1jdXJyZW50LAo+ID4gKwkJcm9ja2NoaXAsc2xl
ZXAtZmlsdGVyLWN1cnJlbnQsIGFuZCBhIHBoYW5kbGUgdG8gYQo+IAo+IFByb3BlcnR5IG5hbWVz
IGFyZSBvdXQgb2YgZGF0ZS4uLgo+IAoKR29vZCBjYXRjaCwgc29ycnkgYWJvdXQgdGhhdC4KCj4g
PiArCQltb25pdG9yZWQtYmF0dGVyeSBub2RlIHRoYXQgY29udGFpbnMgYSB2YWxpZCB2YWx1ZSBm
b3IKPiA+ICsJCWNoYXJnZS1mdWxsLWRlc2lnbi1taWNyb2FtcC1ob3VycywKPiA+ICsJCWNoYXJn
ZS10ZXJtLWN1cnJlbnQtbWljcm9hbXAsCj4gPiArCQljb25zdGFudC1jaGFyZ2UtY3VycmVudC1t
YXgtbWljcm9hbXAsCj4gPiArCQljb25zdGFudC1jaGFyZ2Utdm9sdGFnZS1tYXgtbWljcm92b2x0
LAo+ID4gKwkJdm9sdGFnZS1tYXgtZGVzaWduLW1pY3Jvdm9sdCwgdm9sdGFnZS1taW4tZGVzaWdu
LW1pY3Jvdm9sdCwKPiA+ICsJCWFuZCBhIHZhbGlkIG9jdi1jYXBhY2l0eSB0YWJsZS4KPiAKPiBQ
bGVhc2UgbGlzdCB0aGVzZSAxIHBlciBsaW5lIGFuZCBtYWtlIGl0IGNsZWFyZXIgdGhpcyBpcyB0
aGUgbGlzdCBvZiAKPiBwcm9wZXJ0aWVzIGZvciB0aGUgYmF0dGVyeSBub2RlLgoKV2lsbCBkbywg
dGhhbmsgeW91LgoKPiAKPiA+ICstIHJvY2tjaGlwLHJlc2lzdG9yLXNlbnNlLW1pY3JvLW9obXM6
IFZhbHVlIGluIG1pY3Jvb2htcyBvZiB0aGUgYmF0dGVyeSBzZW5zZQo+ID4gKwkJCQkgICAgICBy
ZXNpc3Rvci4gVGhlIFBNSUMgb25seSBzdXBwb3J0cyB2YWx1ZXMKPiA+ICsJCQkJICAgICAgb2Yg
ZWl0aGVyIDEwMDAwIG9yIDIwMDAwLiBUaGlzIHZhbHVlIGlzCj4gPiArCQkJCSAgICAgIHVzZWQg
YnkgdGhlIGRyaXZlciB0byBzZXQgdGhlIGNvcnJlY3QKPiA+ICsJCQkJICAgICAgZGl2aXNvciB2
YWx1ZSB0byB0cmFuc2xhdGUgQURDIHJlYWRpbmdzCj4gPiArCQkJCSAgICAgIGludG8gdGhlIHBy
b3BlciB1bml0cyBvZiBtZWFzdXJlLgo+ID4gKy0gcm9ja2NoaXAsc2xlZXAtZW50ZXItY3VycmVu
dC1taWNyb2FtcDogVmFsdWUgaW4gbWljcm9hbXBzIG9mIHRoZSBzbGVlcCBlbnRlcgo+ID4gKwkJ
CQkJIGN1cnJlbnQgZm9yIHRoZSBjaGFyZ2VyLiBWYWx1ZSBpcyB1c2VkCj4gPiArCQkJCQkgYnkg
dGhlIGRyaXZlciB0byBjYWxpYnJhdGUgdGhlIHJlbGF4Cj4gPiArCQkJCQkgdGhyZXNob2xkLgo+
ID4gKy0gcm9ja2NoaXAsc2xlZXAtZmlsdGVyLWN1cnJlbnQtbWljcm9hbXA6IFZhbHVlIGluIG1p
Y3JvYW1wcyBvZiB0aGUgc2xlZXAKPiA+ICsJCQkJCSAgZmlsdGVyIGN1cnJlbnQgZm9yIHRoZSBj
aGFyZ2VyLgo+ID4gKwkJCQkJICBWYWx1ZSBpcyB1c2VkIGJ5IHRoZSBkcml2ZXIgdG8gZGVyaXZl
Cj4gPiArCQkJCQkgIHRoZSBzbGVlcCBzYW1wbGUgY3VycmVudC4KPiA+ICsKPiA+ICBPcHRpb25h
bCBSSzgxOCBwcm9wZXJ0aWVzOgo+ID4gIC0gdmNjMS1zdXBwbHk6ICBUaGUgaW5wdXQgc3VwcGx5
IGZvciBEQ0RDX1JFRzEKPiA+ICAtIHZjYzItc3VwcGx5OiAgVGhlIGlucHV0IHN1cHBseSBmb3Ig
RENEQ19SRUcyCj4gPiBAQCAtNDU5LDYgKzQ4NiwxMyBAQCBFeGFtcGxlOgo+ID4gIAkJCX07Cj4g
PiAgCQl9Owo+ID4gIAo+ID4gKwkJcms4MTdfYmF0dGVyeTogYmF0dGVyeSB7Cj4gPiArCQkJbW9u
aXRvcmVkLWJhdHRlcnkgPSA8JmJhdHRlcnlfY2VsbD47Cj4gPiArCQkJcm9ja2NoaXAscmVzaXN0
b3Itc2Vuc2UtbWljcm8tb2htcyA9IDwxMDAwMD47Cj4gPiArCQkJcm9ja2NoaXAsc2xlZXAtZW50
ZXItY3VycmVudC1taWNyb2FtcCA9IDwzMDAwMDA+Owo+ID4gKwkJCXJvY2tjaGlwLHNsZWVwLWZp
bHRlci1jdXJyZW50LW1pY3JvYW1wID0gPDEwMDAwMD47Cj4gPiArCQl9Owo+ID4gKwo+ID4gIAkJ
cms4MTdfY29kZWM6IGNvZGVjIHsKPiA+ICAJCQlyb2NrY2hpcCxtaWMtaW4tZGlmZmVyZW50aWFs
Owo+ID4gIAkJfTsKPiA+IC0tIAo+ID4gMi4yNS4xCj4gPiAKPiA+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
