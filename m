Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEDEC44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 09:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZYqyzXJAsxkUbk6ezIo8agMjqTCGWiU+RMv2TgmSBU=; b=JqK81PDQOwZOn3
	k1jMZE5c9DMTXl2rwQ76229jckueKCIxKSjtsAEI60oxfghR7ehiUkTJ33AO0xGPOtWZDD4XwWtXx
	+CeJDD3g6+e/sqKY98K0x4r8i7C9gjqPFSJglYeQIaN4VPz0fnxh5r5M8iTWix1bJA1fGc6O3HnP/
	y1DP2cWAoqBmutI05DGcUchMH1fKKrcGYCv46BK0KT98hVhnJ4MlDDcxlM2x+m0FPMBZ/9AyzucWD
	YD6Xrmcuh17m7MPObWPcdpFQOXCaBs3SQcqgWBXV83mRN24BjQ1Mafvb9Ip80wYnesBH0ebZKtjkc
	ULXlhyKBay+G+6HFTShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUGj-00000005A49-1FV0;
	Wed, 21 Jan 2026 09:12:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUGh-00000005A3F-29AJ;
	Wed, 21 Jan 2026 09:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jsLSAvwVouFS1ZUYZEVJ53QymYVt0g0M3Kh3wgwwh/o=; b=ap/OREcpBA1KVY7huIkDAB0Tee
	qZPV0wgBw8KTyVv8BDXVVbIemBV06NbSS4DtC9lGP4DiAthwWuK0wvM69krQo713QPHHBvsRlb6KA
	9ImBmJgyaN6YvFSMmFsYgO0qd7yPqewnl3SaEPdFKc9gEKvEaYaLaeiC5BIempnslEUVp/xpVCoUS
	SbL4tI3SJq5C7IPWcb9OyjMb8JsdX/cP8sozubhm/O+sGP8EpFnEXFp4Pboo5H933aGABbSc3HRrU
	EZKH1hcb1hbYKGlsP6cfsWpev+J9QoTmCUY2Fwt9FIYxXHZqKs/W9baLStxHgQoQgh1BjBgVkeGCD
	SqYvDrmw==;
Received: from i53875baa.versanet.de ([83.135.91.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1viUGY-003c0W-Mj; Wed, 21 Jan 2026 10:12:43 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Luis Garcia <git@luigi311.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Olivier Benjamin <olivier.benjamin@bootlin.com>, megi@xff.cz
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
Date: Wed, 21 Jan 2026 10:12:42 +0100
Message-ID: <50650709.fMDQidcC6G@diego>
In-Reply-To: <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
 <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
 <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_011251_573553_B70F48F0 
X-CRM114-Status: GOOD (  20.52  )
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

SGksCgpBbSBEaWVuc3RhZywgMjAuIEphbnVhciAyMDI2LCAxNzozMzozNyBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEx1aXMgR2FyY2lhOgo+IFRoYW5rIHlvdSB2ZXJ5IG11
Y2ggZm9yIHRoZSBzcGVlZHkgdHVybiBhcm91bmQuIE9oaAo+IGludGVyZXN0aW5nLCBoZXJlIGkg
d2FzIHRoaW5raW5nIGkgZGlkIHRoZSByaWdodCB0aGluZyB3aXRoCj4gdGhlIHJlcGx5IHRvIHdp
dGggdGhlIFYyLiBJbGwga2VlcCB0aGF0IGluIG1pbmQgZm9yIHRoZQo+IGZ1dHVyZSBidXQgY29u
c2lkZXJpbmcgaG93IGZhciBhbmQgZmV3IG15IGNvbnRyaWJ1dGlvbnMKPiB1cHN0cmVhbSBhcmUg
aSBob3BlIGkgZG9udCBmb3JnZXQgYnkgdGhlbiBsb2wuCgpubyB3b3JyaWVzLiBGb3IgaW5kaXZp
ZHVhbCBwYXRjaGVzIHRoaXMgaXMgbW9zdGx5IGVhc3kgdG8gZmlndXJlIG91dAphbmQgYWxzbyBy
ZWNlbnQgdmVyc2lvbnMgb2YgYjQgaGFuZGxlZCB0aGlzIHRocmVhZCBmaW5lLgoKSSB0aGluayBp
dCdzIG1vcmUgYSBwcm9ibGVtLCBvbmNlIHRoZSB0aHJlYWQgZ29lcyBkZWVwZXIgb3IgbXVsdGlw
bGUKcGF0Y2hlcyBhcmUgaW52b2x2ZWQuCgpIZWlrbwoKCj4gT24gMS8yMC8yNiAwMjozOSwgSGVp
a28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBPbiBTdW4sIDE4IEphbiAyMDI2IDE0OjQ2OjE5IC0wNzAw
LCBMdWlzIEdhcmNpYSB3cm90ZToKPiA+PiBpbXgyNTggaGFkIHRoZSBkcml2ZXIgdXBkYXRlZCBh
IHdoaWxlIGJhY2sgYW5kIGl0IGludHJvZHVjZWQKPiA+PiB0d28gdmFyaWFudHMsIHRoZSBpbXgy
NTggYW5kIGlteDI1OC1wZGFmLiBUaGUgcGluZXBob25lIHBybwo+ID4+IGlzIHVzaW5nIHRoZSBw
ZGFmIHZhcmlhbnQgc28gdGhpcyBzd2l0Y2hlcyBpdCB0byB0aGUgY29ycmVjdAo+ID4+IHZhcmlh
bnQgYW5kIGVsaW1pbmF0ZXMgdGhlIHBkYWYgcGl4ZWxzIGZyb20gdGhlIHNlbnNvciBvdXRwdXQK
PiA+PiByZXN1bHRpbmcgaW4gYSBtdWNoIGNsZWFuZXIgaW1hZ2UuCj4gPj4KPiA+PiBMdWlzIEdh
cmNpYSAoMSk6Cj4gPj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEZpeCBpbXgyNTggdmFyaWFu
dCBvbiBwaW5lcGhvbmUgcHJvCj4gPj4KPiA+PiBbLi4uXQo+ID4gQXBwbGllZCwgdGhhbmtzIQo+
ID4KPiA+IFsxLzFdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBGaXggaW14MjU4IHZhcmlhbnQgb24g
cGluZXBob25lIHBybwo+ID4gICAgICAgIGNvbW1pdDogNjc0MmI5OTgxNjY0ODU1NThjY2IwZTg5
YjVkNWZkOTNjMWFhZTNjYQo+ID4KPiA+IEluIHRoZSBmdXR1cmUsIHBsZWFzZSBkb24ndCBzZW5k
IHYyIHBhdGNoZXMgYXMgcmVwbGllcyB0byB0aGUKPiA+IHByZXZpb3VzIHZlcnNpb24gYW5kIGlu
c3RlYWQgc3RhcnQgYSBuZXcgdGhyZWFkLgo+ID4KPiA+IE5leHQgdmVyc2lvbnMgYXMgcmVwbGll
cywgZG9lcyBzb21ldGltZXMgY29uZnVzaW5nIHRvb2xpbmcuCj4gPgo+ID4KPiA+IEJlc3QgcmVn
YXJkcywKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
