Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A1ECC369A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkNaCV9oYjZ7XnUql9rubmsv9Nu2t54cC3sGUgqtWPo=; b=36FNFZRsg07Kzn
	I5ck7HcAuzii+cCiJy8yUGRG6uJzyGDXduOKOPxXv1nt41n6ngOkNwlldf9DdSu+1OW0yhD3KF12j
	EjuM+BkINUYEZFWYr+R//JQPZzNDDQY6hglnPSRxcp0RrU70xF2fsDbKuZb1UrVQACQGnjYg5dyBf
	zTGNvex0OkdtWpz4BCsuu2eRB5RfxU1c8S9RPJFkYDBJUFE/IbFFDkNEonit2cGc+bTK59058KJ9e
	ZmDV8eDqUTkI0h4dAZLGJmFcYQsnqGcKE8xVV8VKtwyHlMLNbiMOpa1iZsjiWPTybb+8f+EvVQKKs
	o+McHRVbkBbsvH9QdTAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rYb-00000001dIJ-1sgZ;
	Mon, 07 Apr 2025 18:50:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pfB-00000001H5U-1ln8;
	Mon, 07 Apr 2025 16:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=EcpHIHdpCMLJF4s/VJZo/G6a9nsNam8x34XSwJ2u6Pg=; b=qqa/4dRGnVDR62Hv5OhVImQIXU
	sNnKKxkLnFP2nJfL0cJS8sAUjVGvO7+mwMfQp6/4r1+xB0BbpBmcr2O6/O72IEjrYMlaWX2i3gpZC
	3xW3F1kqBWP/1ZCq80fnzB4YR5s/92qqMUmeTOwqBlVxE8e+NJFZmkHpUFz7ujfHSp8wB07TKgIb8
	3BzneylOTil6JTVRjE45XGq43GuyY6Kimt757++x+1E9uh8Zo9L5qcJgGhFo66bCAMN5uoKoKoNIe
	N9VbiaFbdLhTrl9Jw0p6vBEHUo71CcU64wjzth0N8AycRu8m1WYR82uBLo5TqbqgjfCWJcgFUL79l
	33BmgLBw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pf7-000000084Xb-035V;
	Mon, 07 Apr 2025 16:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=EcpHIHdpCMLJF4s/VJZo/G6a9nsNam8x34XSwJ2u6Pg=; b=AIOr9KeOCXW3cDn3zHEBy8fKnn
	ayCLSm0pqP94IK2Qj0y6Td2zAucfuTKPpOipaO1sbrXyDxJv/XgPRrx3y74yn0qoC5fQEyMpbAaWg
	m4TUkWdviNIHqw5T04qfz8gGuOO6afiGkGiHk5+cTKWdAHXleNJXMuODJtbXy3UMJ2QCiWOtQWeRq
	3dYbcvBdcifWh1m9+Tn8IwTRX6L8Vsx6ReO4HNksS/oNHk/tVoaVkPmE1f/UG/C7MRmQSkvTEJmyn
	FZMickVV4wb45j7XJ6u4rZ+CneyK9EU3jkb+diMe3erRXkg5ciZd0v5jCHR0fjBj8XChFUeo7x8Gn
	1+vMBrGw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1pf6-0006eA-5t; Mon, 07 Apr 2025 18:49:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
Date: Mon, 07 Apr 2025 18:49:27 +0200
Message-ID: <2000188.PYKUYFuaPT@diego>
In-Reply-To: <CAL_JsqJVi5tf8bh6AnZwNwiBe+EG2CHQRGQGLK6SdMzQiiSbWA@mail.gmail.com>
References: <5552256.Sb9uPGUboI@phil> <8512245.T7Z3S40VBb@diego>
 <CAL_JsqJVi5tf8bh6AnZwNwiBe+EG2CHQRGQGLK6SdMzQiiSbWA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_174929_216421_FDEE72CE 
X-CRM114-Status: GOOD (  26.18  )
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

QW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1LCAxODo0Mzo1NCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+IE9uIE1vbiwgQXByIDcsIDIwMjUgYXQgMTE6
NDDigK9BTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+Cj4gPiBI
aSBSb2IsCj4gPgo+ID4gQW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1LCAxNzo1NjozNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+ID4gPiBPbiBXZWQs
IE1hciAxOSwgMjAyNSBhdCA2OjU24oCvUE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIaSBzb2MgbWFpbnRhaW5lcnMsCj4gPiA+ID4KPiA+
ID4gPiBJIG1hZGUgYW4gZXJyb3IgYW5kIGFjY2lkZW50aWFsbHkgYXBwbGllZCBhIHBhdGNoIHRo
YXQgd2FzIG1lYW50IGZvcgo+ID4gPiA+IHRoZSBtZmQgdHJlZS4gVGhhbmtmdWxseSBTdGVwaGVu
IG5vdGljZWQgdGhhdCB3aGVuIHRoZSBkdXBsaWNhdGUKPiA+ID4gPiBjb21taXQgYXBwZWFyZWQg
aW4gbGludXgtbmV4dC4KPiA+ID4KPiA+ID4gQm90aCBjb21taXRzIGFyZSBpbiB2Ni4xNS1yYzEg
bm93IGFuZCB0aGUgcmV2ZXJ0IGlzIG5vdCwgc28gdGhpcwo+ID4gPiBzaG91bGQgbm90IGdldCBh
cHBsaWVkL3B1bGxlZC4gT3IgeW91IHdpbGwgbmVlZCB0byByZXZlcnQgdGhlIHJldmVydC4KPiA+
Cj4gPiB5ZXMsIHRoYXQgd2FzIHRoZSBpbnRlbnRpb24uCj4gPgo+ID4gQmFjayB3aGVuIEkgc3Vi
bWl0dGVkIHRoaXMgUFIsIEkgdGFsa2VkIHdpdGggQXJuZCBvbiBJUkMgdGhlIG5leHQgZGF5Lgo+
ID4KPiA+IEFzIGJvdGggY29tbWl0cyBhcmUgaWRlbnRpY2FsIHNhbnMgc29tZSBTaWduZWQtb2Zm
LWJ5IGxpbmVzLCBoZSBzdWdnZXN0ZWQKPiA+IG5vdCB0cnlpbmcgdG8gcHV0IGEgcmV2ZXJ0IGlu
LCBidXQgaW5zdGVhZCBsZXQgZ2l0IHNvbHZlIGl0IGl0c2VsZiwgYmVjYXVzZQo+ID4KPiA+IGFy
bmQgb24gSVJDOgo+ID4gPiBbLi4uXSwgYnV0IEkgd29ycnkgdGhhdCB0aGlzIHdvdWxkIG1ha2Ug
dGhpbmdzIHdvcnNlIGlmICdnaXQgbWVyZ2UnCj4gPiA+IGVuZHMgdXAgZG9pbmcgdGhlIHJldmVy
dCBvbiB0b3Agb2YgdGhlIG9yaWdpbmFsIGNvbW1pdCBvbmNlIGl0IGdldHMgdG8KPiA+ID4gdG9y
dmFsZHMuIE5vdCBzdXJlIGlmIHRoYXQncyBzdGlsbCBhIHByb2JsZW0gaW4gZ2l0IHRoZXNlIGRh
eXMsIGJ1dAo+ID4gPiBJJ3ZlIHNlZW4gaXQgaGFwcGVuIGluIHRoZSBwYXN0Lgo+ID4gPiBpZiB0
d28gaWRlbnRpY2FsIHBhdGNoZXMgYXJlIGluIGRpZmZlcmVudCBicmFuY2hlcywganVzdCBsZWF2
aW5nIHRoZW0KPiA+ID4gdGhlcmUgaXMgdXN1YWxseSBlYXNpZXIKPiA+Cj4gPiBTbyB0aGlzIFBS
IHdhcyBhbHJlYWR5IG1hcmtlZCBhcyAic3VwZXJzZWVkZWQiIGluIHBhdGNod29yayBiYWNrCj4g
PiBvbiBtYXJjaCAyMHRoLgo+ID4KPiA+Cj4gPiBOZXZlcnRoZWxlc3MsIHRoYW5rcyBmb3IgbWFr
aW5nIHN1cmUgbm8gZnVua3kgcmV2ZXJ0IGhhcHBlbnMgbm93Lgo+IAo+IFRoZSBjb21taXQgaXMg
c3RpbGwgaW4gbGludXgtbmV4dCB0aG91Z2guIFRoYXQncyBob3cgSSBoYXBwZW5lZCB1cG9uIHRo
aXMuCgpBaCByaWdodC4gSSd2ZSByZWNyZWF0ZWQgbXkgbmV4dCBicmFuY2ggZWFybGllciB0b2Rh
eSwgYWZ0ZXIgdGhlIC1yYzEKcmVsZWFzZSwgc28gdGhpcyBzaG91bGQgYmUgZ29uZSB3aXRoIHRo
ZSBuZXh0IGxpbnV4LW5leHQuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
