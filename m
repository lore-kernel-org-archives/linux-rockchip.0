Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8CBC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 09:26:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD94261B3B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 09:26:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD94261B3B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Q1MTjQrw656M9alMgVjtKyWal/NfMgipE0bwUKVuM=; b=zVSAT5bgiCwrzu
	ppJQONeCzBMcvngzgmn7KBeazg+DN48Gs0kMsj4nWlv8CFNqJHJQ8W1SgQpUyEQSdSKQgaidCUlqV
	Z/HoQQ/ge2cbeqTC9p1yTw8betciI2adB24D8ByNtefq7G8KkIbfBQHClU1UGDm8eBAoe2nEiWawm
	b/T47DR1i4f+k73EndM8OkAESks56LhHoYN16OdKLQEfUXPVlaVp3C7RjjEOb/40eJcq4KXY86HBk
	/QaHm+YP0nV721Y60Cs2gXWCyUCDDHYaWPUqNrMlNZyyuh/uYKqMA1FM9pzDXKZEM+1cBqFoXMVN+
	yGghHxIqh84KOV9oeJSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mndgs-007KrB-Hg; Thu, 18 Nov 2021 09:26:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mndgg-007Koy-9g; Thu, 18 Nov 2021 09:26:35 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mndgc-0000UD-Nv; Thu, 18 Nov 2021 10:26:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 =?utf-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Date: Thu, 18 Nov 2021 10:26:29 +0100
Message-ID: <4310886.V3yF0ifEZO@diego>
In-Reply-To: <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_012634_361226_ECE03A7F 
X-CRM114-Status: GOOD (  30.33  )
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

SGkgS2V2ZXIsCgpBbSBEb25uZXJzdGFnLCAxOC4gTm92ZW1iZXIgMjAyMSwgMDI6Mjc6MTAgQ0VU
IHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiBIaSBTYXNjaGEgSGF1ZXIsCj4gCj4gT24gMjAyMS8xMS8x
NyDkuIvljYgxMDozMywgU2FzY2hhIEhhdWVyIHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBp
bml0aWFsIGdyYXBoaWNzIHN1cHBvcnQgZm9yIHRoZSBSb2NrY2hpcCBSSzM1Nls2OF0KPiA+IFNv
Q3MuICBHcmFwaGljcyBzdXBwb3J0IGlzIGJhc2VkIGFyb3VuZCB0aGUgVk9QMiBjb250cm9sbGVy
IHdoaWNoCj4gPiByZXBsYWNlcyB0aGUgVk9QIGNvbnRyb2xsZXIgZm91bmQgb24gZWFybGllciBS
b2NrY2hpcCBTb0NzLiBUaGUgZHJpdmVyCj4gPiBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBIRE1JIHN1
cHBvcnQgaW5jbHVkZWQgaW4gdGhpcyBzZXJpZXMgYW5kIE1JUEktRFNJCj4gPiB3aGljaCBpcyBu
b3QgaW5jbHVkZWQgYmVjYXVzZSBpdCBuZWVkcyBzb21lIG1vcmUgd29yay4gVGhlIGRyaXZlciBp
cwo+ID4gdGFrZW4gZnJvbSB0aGUgZG93bnN0cmVhbSBSb2NrY2hpcCBrZXJuZWwKPiAKPiBZZXMs
IHlvdSBkbyBrbm93IHRoaXMgaXMgZnJvbSBSb2NrY2hpcCBrZXJuZWwuCj4gCj4gQ291bGQgeW91
IHBvaW50IG1lIG91dCB3aGVyZSBpcyB0aGUgaW5mb3JtYXRpb24gYWJvdXQgb3JpZ2luYWwgYXV0
aG9yICAKPiBpbiB5b3VyIGNvbW1pdD8KClRoZSBjb3B5cmlnaHRzIGZvciBhZGRlZCBmaWxlcyBz
ZWVtIHRvIGhhdmUgc3RheWVkIGludGFjdC4KRm9yIGV4YW1wbGUgdGhlIGFkZGVkIHJvY2tjaGlw
X2RybV92b3AyLmMgZmlsZSBpbiBwYXRjaDEyCmRvZXMgY29udGFpbiB0aGUgY29weXJpZ2h0IGFz
CgoJQ29weXJpZ2h0IChjKSAyMDIwIFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgoJQXV0
aG9yOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+CgoKV2UgY2FuIG9mIGNvdXJz
ZSBkZWJhdGUgaWYgdGhlIGNvbW1pdC1hdXRob3Igc2hvdWxkIGFsc28gYmUgc2V0IHRvCkFuZHkg
b3IgYW5vdGhlciBSb2NrY2hpcCBlbmdpbmVlciwgd2l0aCBTYXNjaGEgYWRkaW5nIGEgCiJDby1k
ZXZlbG9wZWQtYnkiIHdpdGggaGlzIGNyZWRlbnRpYWxzLgoKVGhhdCdzIHByb2JhYmx5IGEgbmlj
ZSBjb21wcm9taXNlLCBJIGd1ZXNzLgoKCj4gPiAgIGFuZCBoZWF2aWx5IHBvbGlzaGVkLCBtb3N0
IG5vbgo+ID4gc3RhbmRhcmQgZmVhdHVyZXMgaGF2ZSBiZWVuIHJlbW92ZWQgZm9yIG5vdy4KPiAK
PiBJIGRvbid0IGFncmVlIHdpdGggdGhpcywgd2UgZG8gYmVsaWV2ZSB5b3UgaGF2ZSBkbyBzb21l
IGNsZWFuIHVwIHRvIG1lZXQgCj4gdGhlIHJlcXVpcmVtZW50Cj4gCj4gb2YgdXBzdHJlYW0sIGJ1
dCBhbGwgdGhlIGZyYW1ld29yayBhbmQgZmVhdHVyZSBpbXBsZW1lbnQgYXJlIGZyb20gCj4gUm9j
a2NoaXAgZW5naW5lZXIsCj4gCj4gd2UgaGF2ZSBtYWRlIGEgZ3JlYXQgZWZmb3J0IHRvIG1ha2Ug
ZXZlcnl0aGluZyB3b3JrIHdoaWNoIGJsb2NrIHVzIHRvIAo+IHVwc3RyZWFtIHRoaXMgZHJpdmVy
IGZvciBub3cuCgpJIGRvbid0IGZ1bGx5IHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbiBoZXJlIChs
YW5ndWFnZSBiYXJyaWVyIHByb2JhYmx5KSwKYnV0IGRyb3BwaW5nIG5vbi1lc3NlbnRpYWwgZnVu
Y3Rpb25hbGl0eSBpbiBhIGZpcnN0IHJvdW5kIGlzIHByZXR0eSBjb21tb24KdG8gYXQgbGVhc3Qg
Z2V0IGJhc2ljIGZ1bmN0aW9uYWxpdHkgd29ya2luZyBmb3IgZXZlcnlvbmUuIFdpdGggdGhlIHNw
ZWNpYWwKZmVhdHVyZXMgZ2V0dGluZyBhZGRlZCBhZ2FpbiBpbiBsYXRlciBwYXRjaGVzIG92ZXIg
dGltZS4gVGhpcyBoYXBwZW5lbmVkCm9uIHRoZSBvbGQgdm9wIGFzIHdlbGwuCgpBbmQgb2YgY291
cnNlLCBoYXZpbmcgYSBrZXJuZWwgdGhhdCBjYW4gImp1c3QiIGRvIG5vcm1hbCBncmFwaGljcyB3
aXRob3V0CnRoZSBhZGRpdGlvbmFsIGZlYXR1cmVzIGlzIHN0aWxsIHByZWZlcmFibGUgb3ZlciBo
YXZpbmcgX05PXyBncmFwaGljcyBzdXBwb3J0CmF0IGFsbCA7LSkKCgo+IE5BSyBmb3IgdGhpcyBz
ZXJpZXMuCgpBcyB5b3UgbWlnaHQndmUgc2VlbiBmcm9tIHByZXZpb3VzIGdyYXBoaWNzIHJlbGF0
ZWQgcGF0Y2hlcywgdGhlcmUKaXMgYSBiaWcgbnVtYmVyIG9mIHBlb3BsZSBfYW5kIGNvbXBhbmll
c18gdGhhdCBzZWVtcyB0byB3YW50L25lZWQKdG8gd29yayB3aXRoIHRoZSByazM1NjYvcmszNTY4
IHdpdGggYSBrZXJuZWwgYmFzZWQgb24gbWFpbmxpbmUuCgotLT4gTW9zdCBsaWtlbHkgZXZlbiBp
biByZWFsIHByb2R1Y3RzIQoKV2hpbGUgUm9ja2NoaXAgZGlkIHNheSB0aGF0IHRoZXkgd2FudCB0
byB1cHN0cmVhbSBWT1AyIHN1cHBvcnQsIHRoZXJlCmhhcyBiZWVuIF9OT18gbW92ZW1lbnQgb3Ig
ZXZlbiBpbmZvcm1hdGlvbiBhdCBhbGwgb24gdGhpcyBvdmVyIGF0IGxlYXN0CnRoZSBsYXN0IHll
YXIoISksIHNvIGl0J3MgcHJldHR5IHVuZGVyc3RhbmRhYmxlIHRoYXQgZGV2ZWxvcGVycyB3aWxs
IGRvIHRoaXMKdGhlbXNlbGYgYXQgc29tZSBwb2ludCwgYmVjYXVzZSB0aGV5IGRvbid0IHdhbnQg
dG8gd2FpdCBhbnltb3JlIGZvcgpzb21ldGhpbmcgdGhhdCBtaWdodCBuZXZlciBoYXBwZW4uCgpT
byBhIHNpbXBsZSAiTkFLIiB3aXRob3V0IGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gaXMgbm90IHJl
YWxseSBoZWxwZnVsIGhlcmUuCgpJZiB5b3UgZG9uJ3QgbGlrZSBTYXNjaGEncyBzZXJpZXMsIEkg
cmVhbGx5IHdhbnQgdG8ga25vdyBfV0hFTl8gUm9ja2NoaXAKcGxhbnMgb24gdXBzdHJlYW1pbmcg
YXQgbGVhc3QgYmFzaWMgZ3JhcGhpcyBzdXBwb3J0IHRoZW1zZWxmLgoKVGhlIGtlcm5lbCBpcyBv
ZnRlbiBjYWxsZWQgYSBkby1vY3JhY3kgLSB0aGUgb25lIHdobyBkb2VzIHRoZSB3b3JrLCBnZXRz
CnRvIGRlY2lkZS4gU28gaWYgeW91IHJlYWxseSBkb24ndCBsaWtlIFNhc2NoYSdzIHNlcmllcyBh
dCBhbGwsIEkgZG8gZXhwZWN0ClJvY2tjaGlwIHRvIHN0ZXAgdXAgYW5kIHByb3ZpZGUgYSBzb2x1
dGlvbiB0aGVtc2VsZiAtIGFuZCBpbiBhIHVzYWJsZQp0aW1lZnJhbWUuCgoKSGVpa28KCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
